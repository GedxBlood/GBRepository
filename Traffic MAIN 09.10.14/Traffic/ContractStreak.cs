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
    
    public partial class ContractStreak
    {
        public long contractID { get; set; }
        public Nullable<System.DateTime> contractDateFrom { get; set; }
        public Nullable<long> ContractDateUntil { get; set; }
        public Nullable<decimal> contractPrice { get; set; }
    
        public virtual Contracts Contracts { get; set; }
    }
}