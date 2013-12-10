using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MusicLibrary.Models
{
    public partial class PlaylistCart
    {
        MusicLibraryDBEntities db = new MusicLibraryDBEntities();

        string PlaylistCartId { get; set; }

        public const string CartSessionKey = "CartId";

        public static PlaylistCart GetCart(HttpContextBase context)
        {
            var cart = new PlaylistCart();
            cart.PlaylistCartId = cart.GetCartId(context);
            return cart;
        }

        // Helper method to simplify shopping cart calls
        public static PlaylistCart GetCart(Controller controller)
        {
            return GetCart(controller.HttpContext);
        }

        public void AddToCart(Song song)
        {
            // Get the matching cart and album instances
            var cartItem = db.Playlists.SingleOrDefault(
            c => c.playlistID == PlaylistCartId
            && c.songID == song.songID);

            if (cartItem == null)
            {
                // Create a new cart item if no cart item exists
                cartItem = new Playlist
                {
                    songID = song.songID,
                    playlistID = PlaylistCartId,
                    count = 1,
                };

                db.Playlists.Add(cartItem);
            }
            else
            {
                // If the item does exist in the cart, then add one to the quantity
                cartItem.count++;
            }

            // Save changes
            db.SaveChanges();
        }

        public int RemoveFromCart(int id)
        {
            // Get the cart
            var cartItem = db.Playlists.Single(
            cart => cart.playlistID == PlaylistCartId);

            int itemCount = 0;

            if (cartItem != null)
            {
                if (cartItem.count > 1)
                {
                    cartItem.count--;
                    itemCount = cartItem.count;
                }
                else
                {
                    db.Playlists.Remove(cartItem);
                }

                // Save changes
                db.SaveChanges();
            }

            return itemCount;
        }

        public void EmptyCart()
        {
            var playlistCartItems = db.Playlists.Where(cart => cart.playlistID == PlaylistCartId);

            foreach (var cartItem in playlistCartItems)
            {
                db.Playlists.Remove(cartItem);
            }

            // Save changes
            db.SaveChanges();
        }

        public List<Playlist> GetCartItems()
        {
            return db.Playlists.Where(cart => cart.playlistID == PlaylistCartId).ToList();
        }

        public int GetCount()
        {
            // Get the count of each item in the cart and sum them up
            int? count = (from cartItems in db.Playlists
                          where cartItems.playlistID == PlaylistCartId
                          select (int?)cartItems.count).Sum();

            // Return 0 if all entries are null
            return count ?? 0;
        }

        //public int CreateOrder(Order order)
        //{
        //    decimal orderTotal = 0;

        //    var cartItems = GetCartItems();

        //    // Iterate over the items in the cart, adding the order details for each
        //    foreach (var item in cartItems)
        //    {
        //        var orderDetail = new OrderDetail
        //        {
        //            AlbumId = item.AlbumId,
        //            OrderId = order.OrderId,
        //            UnitPrice = item.Album.Price,
        //            Quantity = item.Count
        //        };

        //        // Set the order total of the shopping cart
        //        orderTotal += (item.Count * item.Album.Price);

        //        storeDB.OrderDetails.Add(orderDetail);

        //    }

        //    // Save the order
        //    db.SaveChanges();

        //    // Empty the shopping cart
        //    EmptyCart();
        //}

        // We're using HttpContextBase to allow access to cookies.
        public string GetCartId(HttpContextBase context)
        {
            if (context.Session[CartSessionKey] == null)
            {
                if (!string.IsNullOrWhiteSpace(context.User.Identity.Name))
                {
                    context.Session[CartSessionKey] = context.User.Identity.Name;
                }
                else
                {
                    // Generate a new random GUID using System.Guid class
                    Guid tempCartId = Guid.NewGuid();

                    // Send tempCartId back to client as a cookie
                    context.Session[CartSessionKey] = tempCartId.ToString();
                }
            }

            return context.Session[CartSessionKey].ToString();
        }

        // When a user has logged in, migrate their shopping cart to
        // be associated with their username
        public void MigrateCart(string userName)
        {
            var playlistCart = db.Playlists.Where(c => c.playlistID == PlaylistCartId);

            foreach (Playlist item in playlistCart)
            {
                item.playlistID = userName;
            }
            db.SaveChanges();
        }
    }
}