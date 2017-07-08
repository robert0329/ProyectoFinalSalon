﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BeautyCenterCore.Models
{
    public class Facturas
    {
        [Key]
        public int FacturaId { get; set; }
        public string ClienteId { get; set; }
        public DateTime Fecha { get; set; }
        public decimal Total { get; set; }
    }
}
