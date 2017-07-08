using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BeautyCenterCore.Models
{
    public class FacturaDetalles
    {
        [Key]
        public int Id { get; set; }
        public int FacturaId { get; set; }
        public string ServicioId { get; set; }
        public double Costo { get; set; }
        public double Descuento { get; set; }
        public decimal SubTotal { get; set; }
    }
}
