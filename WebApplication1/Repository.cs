using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1
{
    public class Repository<TEntity> : IDisposable where TEntity : BaseEntity
    {
        public DbContext Context { get; set; }

        public void Dispose()
        {
            if (Context != null)
            {
                Context.Dispose();
                Context = null;
            }
            GC.SuppressFinalize(this);
        }

        public virtual IQueryable<TEntity> GetAll()
        {
            Context = DBContext.Create();
            return Context.Set<TEntity>();
        }
    }
}