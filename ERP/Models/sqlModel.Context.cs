﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class sqlEntities : DbContext
    {
        public sqlEntities()
            : base("name=sqlEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<erp_categorias> erp_categorias { get; set; }
        public virtual DbSet<erp_clientes> erp_clientes { get; set; }
        public virtual DbSet<erp_funciones> erp_funciones { get; set; }
        public virtual DbSet<erp_funciones_permisos> erp_funciones_permisos { get; set; }
        public virtual DbSet<erp_grupos> erp_grupos { get; set; }
        public virtual DbSet<erp_modulos> erp_modulos { get; set; }
        public virtual DbSet<erp_modulos_permisos> erp_modulos_permisos { get; set; }
        public virtual DbSet<erp_ofertas> erp_ofertas { get; set; }
        public virtual DbSet<erp_pedidos> erp_pedidos { get; set; }
        public virtual DbSet<erp_pedidos_item> erp_pedidos_item { get; set; }
        public virtual DbSet<erp_productos> erp_productos { get; set; }
        public virtual DbSet<erp_productos_categorias> erp_productos_categorias { get; set; }
        public virtual DbSet<erp_productos_ofertas> erp_productos_ofertas { get; set; }
        public virtual DbSet<erp_usuarios> erp_usuarios { get; set; }
        public virtual DbSet<erp_departamentos> erp_departamentos { get; set; }
    }
}