using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ERP.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int? id)
        {
            TallerMecanicoEntities db = new TallerMecanicoEntities();
            var clientes = db.taller_cliente.ToList();

            return View(clientes);
        }

        public ActionResult menuLeft()
        {
            return PartialView("Partials/menuLeft");
        }
    }
}