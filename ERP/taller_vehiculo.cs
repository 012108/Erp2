//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ERP
{
    using System;
    using System.Collections.Generic;
    
    public partial class taller_vehiculo
    {
        public int id { get; set; }
        public string matricula_c { get; set; }
        public string marca_c { get; set; }
        public string modelo_c { get; set; }
        public Nullable<int> cliente_xref { get; set; }
    
        public virtual taller_cliente taller_cliente { get; set; }
    }
}
