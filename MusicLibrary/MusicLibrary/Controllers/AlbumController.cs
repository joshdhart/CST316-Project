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
    public class AlbumController : Controller
    {
        private MusicLibraryDBEntities db = new MusicLibraryDBEntities();

        // GET: /Album/
        public ActionResult Index()
        {
            var albums = db.Albums.Include(a => a.Artist).Include(a => a.Genre).Include(a => a.AlbumArts);

            return View(albums.ToList());
        }

        // GET: /Album/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Album album = db.Albums.Find(id);
            if (album == null)
            {
                return HttpNotFound();
            }
            return View(album);
        }

        // GET: /Album/Create
        public ActionResult Create()
        {
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name");
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type");
            return View();
        }

        // POST: /Album/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="albumID,name,artistID,genreID,releaseYear")] Album album)
        {
            if (ModelState.IsValid)
            {
                db.Albums.Add(album);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", album.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", album.genreID);
            return View(album);
        }

        // GET: /Album/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Album album = db.Albums.Find(id);
            if (album == null)
            {
                return HttpNotFound();
            }
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", album.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", album.genreID);
            return View(album);
        }

        // POST: /Album/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="albumID,name,artistID,genreID,releaseYear")] Album album)
        {
            if (ModelState.IsValid)
            {
                db.Entry(album).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", album.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", album.genreID);
            return View(album);
        }

        // GET: /Album/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Album album = db.Albums.Find(id);
            if (album == null)
            {
                return HttpNotFound();
            }
            return View(album);
        }

        // POST: /Album/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Album album = db.Albums.Find(id);
            db.Albums.Remove(album);
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
