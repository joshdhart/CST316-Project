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
    
    public partial class AlbumArt
    {
        public int albumArtID { get; set; }
        public Nullable<int> albumID { get; set; }
        public string url { get; set; }
    
        public virtual Album Album { get; set; }
    }
}