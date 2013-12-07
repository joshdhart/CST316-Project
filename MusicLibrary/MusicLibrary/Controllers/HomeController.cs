using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MusicLibrary.Models;

namespace MusicLibrary.Controllers
{
    public class HomeController : Controller
    {
        private MusicLibraryDBEntities musicLibraryDB = new MusicLibraryDBEntities();

        public ActionResult Index()
        {
            var albumitems = musicLibraryDB.Albums.OrderBy(i => i.name).Include(i => i.AlbumArts);
            return View(albumitems.ToList());
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
    }
}