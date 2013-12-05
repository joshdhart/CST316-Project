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
    public class AlbumArtController : Controller
    {
        private MusicLibraryDBEntities db = new MusicLibraryDBEntities();

        // GET: /AlbumArt/
        public ActionResult Index()
        {
            var albumarts = db.AlbumArts.Include(a => a.Album);
            return View(albumarts.ToList());
        }

        // GET: /AlbumArt/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AlbumArt albumart = db.AlbumArts.Find(id);
            if (albumart == null)
            {
                return HttpNotFound();
            }
            return View(albumart);
        }

        // GET: /AlbumArt/Create
        public ActionResult Create()
        {
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name");
            return View();
        }

        // POST: /AlbumArt/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="albumArtID,albumID,url")] AlbumArt albumart)
        {
            if (ModelState.IsValid)
            {
                db.AlbumArts.Add(albumart);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", albumart.albumID);
            return View(albumart);
        }

        // GET: /AlbumArt/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AlbumArt albumart = db.AlbumArts.Find(id);
            if (albumart == null)
            {
                return HttpNotFound();
            }
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", albumart.albumID);
            return View(albumart);
        }

        // POST: /AlbumArt/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="albumArtID,albumID,url")] AlbumArt albumart)
        {
            if (ModelState.IsValid)
            {
                db.Entry(albumart).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", albumart.albumID);
            return View(albumart);
        }

        // GET: /AlbumArt/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AlbumArt albumart = db.AlbumArts.Find(id);
            if (albumart == null)
            {
                return HttpNotFound();
            }
            return View(albumart);
        }

        // POST: /AlbumArt/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AlbumArt albumart = db.AlbumArts.Find(id);
            db.AlbumArts.Remove(albumart);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
