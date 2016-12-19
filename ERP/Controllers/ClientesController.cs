using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ERP.Models;

namespace ERP.Controllers
{
    public class ClientesController : Controller
    {
        erpEntities db = new erpEntities();
        // GET: Clientes
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult List()
        {
            var lstClientes = db.clientes.ToList();

            return PartialView("Partials/List", lstClientes);
        }
        public ActionResult Menu()
        {
            funcion f = new funcion();
            funcion f1 = new funcion();
            List<funcion> lstFunciones = new List<funcion>();
            f.id = 1;
            f.nombre_c = "Nuevo cliente";
            f.icono_c = "fa-plus";
            lstFunciones.Add(f);
            f1.id = 2;
            f1.nombre_c = "Estadisticas";
            f1.icono_c = "fa-tachometer";
            lstFunciones.Add(f1);

            return PartialView("Partials/Menu", lstFunciones);
        }
        public partial class funcion
        {
            public int id { get; set; }
            public string nombre_c { get; set; }
            public string icono_c { get; set; }
        };
    }
}