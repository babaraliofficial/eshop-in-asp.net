//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BIGSHOPE
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblProduct
    {
        public int prod_id { get; set; }
        public string prod_name { get; set; }
        public string prod_desc { get; set; }
        public int prod_price { get; set; }
        public string prod_image { get; set; }
        public int prod_qnty { get; set; }
        public string prod_ram { get; set; }
        public int brand_key { get; set; }
        public int processor_key { get; set; }
        public int gen_key { get; set; }
    
        public virtual tblBrand tblBrand { get; set; }
        public virtual tblGen tblGen { get; set; }
        public virtual tblProcessor tblProcessor { get; set; }
    }
}
