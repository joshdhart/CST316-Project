using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MusicLibrary.Models;

namespace MusicLibrary.ViewModels
{
    public class PlaylistCartViewModel
    {
        public ICollection<Playlist> CartItems { get; set; }
    }
}