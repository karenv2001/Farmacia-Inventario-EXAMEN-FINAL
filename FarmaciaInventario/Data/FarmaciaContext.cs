
using Microsoft.EntityFrameworkCore;
using FarmaciaInventario.Models;

namespace FarmaciaInventario.Data
{
    public class FarmaciaContext : DbContext
    {
        public DbSet<Medicamento> Medicamentos { get; set; }
        public DbSet<Proveedor> Proveedores { get; set; }
        public DbSet<Venta> Ventas { get; set; }
        public DbSet<DetalleVenta> DetallesVenta { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseMySql(
                "server=localhost;database=farmacia_db;user=root;password=;",
                new MySqlServerVersion(new Version(8,0,0))
            );
        }
    }
}
