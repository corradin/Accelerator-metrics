using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AcceleratorMetrics.Models
{
    public class Deployment
    {
        public int ID { get; set; }
        public DateTime Moment { get; set; }
        public string VersionNumber { get; set; }
        public bool RolledBack { get; set; }
        public bool Released { get; set; }
    }
}
