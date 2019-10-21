using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoWEB2.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult FrmUsuarioVista()
        {
            return View();
        }
    }
}