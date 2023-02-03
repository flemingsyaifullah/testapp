using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;
using WebApplication1.ViewModels;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        public Repository<Car> _carRepository = new Repository<Car>();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult CarListing()
        {
            List<CarListingView> cars = _carRepository.GetAll().Include(x => x.Manufacturer)
                .Select(x => new CarListingView
            {
                //to show only below information at car listing grid
                CarDescription = x.Description,
                CarPlateNumber = x.PlateNumber,
                CarPrice = x.Price,
                CarYear = x.ProductionYear,
                CarManufacturerName = x.Manufacturer != null ? x.Manufacturer.ManufacturerName : ""
            }).ToList();
            return View(cars);
        }
        //test2
    }
}