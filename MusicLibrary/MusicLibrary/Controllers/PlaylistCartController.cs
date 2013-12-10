using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MusicLibrary.Models;
using MusicLibrary.ViewModels;

namespace MusicLibrary.Controllers
{
    public class PlaylistCartController : Controller
    {
        MusicLibraryDBEntities db = new MusicLibraryDBEntities();
        //
        // GET: /PlaylistCart/
        public ActionResult Index()
        {
            var cart = PlaylistCart.GetCart(this.HttpContext);

            // Set up our ViewModel
            var viewModel = new PlaylistCartViewModel
            {
                CartItems = cart.GetCartItems()
            };

            // Return the view
            return View(viewModel);
        }

        //
        // GET: /Songs/AddToCart/5

        public ActionResult AddToCart(int id)
        {

            // Retrieve the album from the database
            var addedSong = db.Songs
                .Single(song => song.songID == id);

            // Add it to the shopping cart
            var cart = PlaylistCart.GetCart(this.HttpContext);

            cart.AddToCart(addedSong);

            // Go back to the main store page for more shopping
            return RedirectToAction("Index");
        }

        //
        // AJAX: /PlaylistCart/RemoveFromCart/5

        [HttpPost]
        public ActionResult RemoveFromCart(int id)
        {
            // Remove the item from the cart
            var cart = PlaylistCart.GetCart(this.HttpContext);

            // Get the name of the album to display confirmation
            string songTitle = db.Playlists
                .Single(item => item.songID == id).Songs.First().title;

            // Remove from cart
            int itemCount = cart.RemoveFromCart(id);

            // Display the confirmation message
            var results = new PlaylistCartRemoveViewModel
            {
                message = Server.HtmlEncode(songTitle) +
                    " has been removed from your shopping cart.",
                playlistCount = cart.GetCount(),
                itemCount = itemCount,
                deleteID = id
            };

            return Json(results);
        }

        //
        // GET: /PlaylistCart/CartSummary

        [ChildActionOnly]
        public ActionResult CartSummary()
        {
            var cart = PlaylistCart.GetCart(this.HttpContext);

            ViewData["CartCount"] = cart.GetCount();

            return PartialView("CartSummary");
        }
	}
}