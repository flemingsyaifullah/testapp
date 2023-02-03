using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1
{
    public class DBContext : DbContext
    {
        public DBContext()
        : base("DefaultConnection")
        {
            this.Configuration.LazyLoadingEnabled = false;
        }
        public static DbContext Create()
        {
            return new DBContext();
        }

        public DbSet<Car> Cars { get; set; }
        public DbSet<CarManufacturer> CarManufacturers { get; set; }

    }
}