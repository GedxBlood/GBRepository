//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TrafficBusinessLogic
{
    using System;
    using System.Collections.Generic;
    
    public partial class Transport
    {
        public long transportID { get; set; }
        public string model { get; set; }
        public string registrationNumber { get; set; }
        public string VIN { get; set; }
        public string transportType { get; set; }
        public string transportCategory { get; set; }
        public Nullable<long> transportMakingYear { get; set; }
        public string ecologyClass { get; set; }
        public Nullable<float> maxWeight { get; set; }
        public Nullable<float> weight { get; set; }
        public string engineType { get; set; }
        public Nullable<float> engineVolume { get; set; }
    }
}