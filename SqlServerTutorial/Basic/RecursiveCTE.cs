using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Models.BikeStores;
using Streamx.Linq.SQL.EFCore;
using Streamx.Linq.SQL.Grammar;
using Streamx.Linq.SQL.TransactSQL;
using static Streamx.Linq.SQL.SQL;
using static Streamx.Linq.SQL.Directives;
using static Streamx.Linq.SQL.Operators;
using static Streamx.Linq.SQL.AggregateFunctions;
using static Streamx.Linq.SQL.Library;
using static Streamx.Linq.SQL.TransactSQL.SQL;

namespace SqlServerTutorial.Basic {
    class RecursiveCTE {
        private MyContext DbContext { get; }

        public RecursiveCTE(MyContext context) {
            DbContext = context;
        }

        [Tuple]
        class Weekday {
            public int N { get; }
            public String Name { get; }
        }

        void A() {

            #region A
            var query = DbContext.Set<Scalar<String>>()
                .Query((Scalar<String> alias) => {

                    var weekday = SubQuery((Weekday alias) => {
                        var r = SELECT<Weekday>(0.@as(alias.N), DATENAME(DatePart.WEEKDAY, 0).@as(alias.Name));

                        UNION_ALL();

                        var current = r.Current();
                        var n = current.N;

                        SELECT((n + 1, DATENAME(DatePart.WEEKDAY, n + 1)));
                        FROM(current);
                        WHERE(n < 6);

                        return r;
                    });

                    WITH(weekday);

                    var result = SELECT<Scalar<String>>(weekday.Name.@as(alias.Value));
                    FROM(weekday);

                    return result;
                });

            foreach (var weekday in query)
                Console.WriteLine(weekday.Value);
            #endregion

        }

        public void B() {

            #region B
            var query = DbContext.Staffs.Query(() => {

                var org = SubQuery((Staffs topManagers, Staffs employee) => {
                    var r = SELECT(topManagers);
                    FROM(topManagers);
                    WHERE(topManagers.Manager == null);

                    UNION_ALL();

                    var manager = r.Current();

                    SELECT(employee);
                    FROM(employee).JOIN(manager).ON(employee.Manager == manager);

                    return r;
                });

                WITH(org);

                var result = SELECT(org);
                FROM(org);

                return result;
            });

            foreach (var staff in query)
                Console.WriteLine((staff.StaffId, staff.FirstName, staff.ManagerId?.ToString() ?? "NULL"));
            #endregion

        }
    }
}
