﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BeautyCenterCore.Models
{
    public class DetalleCitas
    {
        [Key]
        public int Id { get; set; }
        public int CitaId { get; set; }
        public string Nombres { get; set; }
        public int ClienteId { get; set; }
        public string Servicio { get; set; }
        public double Costo { get; set; }
    }
}
