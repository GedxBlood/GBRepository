//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Traffic
{
    using System;
    using System.Collections.Generic;
    
    public partial class TechnicalInspection
    {
        public long transportID { get; set; }
        public System.DateTime dateFrom { get; set; }
        public System.DateTime dateUntil { get; set; }
        public decimal Cost { get; set; }
        public Nullable<decimal> tax { get; set; }
    }
}
