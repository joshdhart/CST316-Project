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
    public class SongController : Controller
    {
        private MusicLibraryDBEntities db = new MusicLibraryDBEntities();

        // GET: /Song/
        public ActionResult Index()
        {
            var songs = db.Songs.OrderBy(s => s.title).Include(s => s.Album).Include(s => s.Artist).Include(s => s.Genre).Include(s => s.Album.AlbumArts).Include(s => s.Playlist);
            return View(songs.ToList());
        }

        // GET: /Playlist/
        public ActionResult Playlist()
        {
            var songs = db.Songs.Include(s => s.Album).Include(s => s.Artist).Include(s => s.Genre).Include(s => s.Album.AlbumArts).Include(s => s.Playlist);
            return View(songs.ToList());
        }

        // GET: /Song/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Song song = db.Songs.Find(id);
            if (song == null)
            {
                return HttpNotFound();
            }
            return View(song);
        }

        // GET: /Song/Create
        public ActionResult Create()
        {
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name");
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name");
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type");
            ViewBag.Playlist_playlistID = new SelectList(db.Playlists, "playlistID", "playlistName");
            return View();
        }

        // POST: /Song/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include="songID,title,artistID,genreID,albumID,releaseYear,trackNum,Playlist_playlistID")] Song song)
        {
            if (ModelState.IsValid)
            {
                db.Songs.Add(song);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", song.albumID);
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", song.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", song.genreID);
            ViewBag.Playlist_playlistID = new SelectList(db.Playlists, "playlistID", "playlistName", song.Playlist_playlistID);
            return View(song);
        }

        // GET: /Song/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Song song = db.Songs.Find(id);
            if (song == null)
            {
                return HttpNotFound();
            }
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", song.albumID);
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", song.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", song.genreID);
            ViewBag.Playlist_playlistID = new SelectList(db.Playlists, "playlistID", "playlistName", song.Playlist_playlistID);
            return View(song);
        }

        // POST: /Song/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include="songID,title,artistID,genreID,albumID,releaseYear,trackNum,Playlist_playlistID")] Song song)
        {
            if (ModelState.IsValid)
            {
                db.Entry(song).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", song.albumID);
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", song.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", song.genreID);
            ViewBag.Playlist_playlistID = new SelectList(db.Playlists, "playlistID", "playlistName", song.Playlist_playlistID);
            return View(song);
        }

        // GET: /Song/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Song song = db.Songs.Find(id);
            if (song == null)
            {
                return HttpNotFound();
            }
            return View(song);
        }

        // POST: /Song/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Song song = db.Songs.Find(id);
            db.Songs.Remove(song);
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

        // GET: /Song/AddToPlaylist/5
        public ActionResult AddToPlaylist(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Song song = db.Songs.Find(id);
            if (song == null)
            {
                return HttpNotFound();
            }
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", song.albumID);
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", song.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", song.genreID);
            ViewBag.Playlist_playlistID = new SelectList(db.Playlists, "playlistID", "playlistName", song.Playlist_playlistID);
            return View(song);
        }

        // POST: /Song/AddToPlaylist/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddToPlaylist([Bind(Include = "songID,title,artistID,genreID,albumID,releaseYear,trackNum,Playlist_playlistID")] Song song)
        {
            if (ModelState.IsValid)
            {
                db.Entry(song).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.albumID = new SelectList(db.Albums, "albumID", "name", song.albumID);
            ViewBag.artistID = new SelectList(db.Artists, "artistID", "name", song.artistID);
            ViewBag.genreID = new SelectList(db.Genres, "genreID", "type", song.genreID);
            ViewBag.Playlist_playlistID = new SelectList(db.Playlists, "playlistID", "playlistName", song.Playlist_playlistID);
            return View(song);
        }

    }
}
