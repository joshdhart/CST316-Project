using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MusicLibrary.Models;

namespace MusicLibrary.ViewModels
{
    public class PlaylistCartRemoveViewModel
    {
        public string message { get; set; }
        public int playlistCount { get; set; }
        public int itemCount { get; set; }
        public int deleteID { get; set; }
    }
}