//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MusicLibraryWcfService
{
    using System;
    using System.Collections.Generic;
    
    public partial class Song
    {
        public Song()
        {
            this.Playlists = new HashSet<Playlist>();
        }
    
        public int songID { get; set; }
        public string title { get; set; }
        public Nullable<int> artistID { get; set; }
        public Nullable<int> genreID { get; set; }
        public Nullable<int> albumID { get; set; }
        public Nullable<int> releaseYear { get; set; }
        public Nullable<int> trackNum { get; set; }
        public string Playlist_playlistID { get; set; }
    
        public virtual Album Album { get; set; }
        public virtual Artist Artist { get; set; }
        public virtual Genre Genre { get; set; }
        public virtual ICollection<Playlist> Playlists { get; set; }
        public virtual Playlist Playlist { get; set; }
    }
}
