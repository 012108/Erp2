//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ERP.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class erp_ofertas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public erp_ofertas()
        {
            this.erp_productos_ofertas = new HashSet<erp_productos_ofertas>();
        }
    
        public int id { get; set; }
        public int nombre { get; set; }
        public decimal oferta { get; set; }
        public System.DateTime fecha_ini { get; set; }
        public Nullable<System.DateTime> fecha_fin { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<erp_productos_ofertas> erp_productos_ofertas { get; set; }
    }
}