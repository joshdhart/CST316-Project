//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MusicLibrary.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Playlist
    {
        public Playlist()
        {
            this.Songs = new HashSet<Song>();
        }
    
        public string playlistID { get; set; }
        public string playlistName { get; set; }
        public Nullable<int> songID { get; set; }
    
        public virtual ICollection<Song> Songs { get; set; }
    }
}
