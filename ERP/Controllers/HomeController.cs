using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ERP.Models;

namespace ERP.Controllers
{
    public class HomeController : Controller
    {
        sqlEntities db = new sqlEntities();
        public ActionResult Index(int? id)
        {
            TallerMecanicoEntities db = new TallerMecanicoEntities();
            

            return View();
        }

        public ActionResult menuLeft()
        {
            var clsUser = db.erp_usuarios.Where(u => u.id == 1).FirstOrDefault();
            List<erp_funciones> lstFunciones = new List<erp_funciones>();

            foreach(var permisoFuncionItem in clsUser.erp_grupos.erp_funciones_permisos)
            {
                if(permisoFuncionItem.erp_funciones.activo == true)
                {
                    lstFunciones.Add(permisoFuncionItem.erp_funciones);
                }
            }
            return PartialView("Partials/menuLeft", lstFunciones);
        }
    }
}