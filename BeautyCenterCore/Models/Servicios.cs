using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BeautyCenterCore.Models
{
    public class Servicios
    {
        [Key]
        public int ServicioId { get; set; }
        public string Nombre { get; set; }
        public decimal Costo { get; set; }
    }
}
