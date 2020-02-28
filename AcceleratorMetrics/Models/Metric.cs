using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace AcceleratorMetrics.Models
{
    public class Metric
    {
        public int ID { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime CreateDate { get; set; }
        public string ProjectId { get; set; }
        public string MetricId { get; set; }
        public string ArtifactId { get; set; }
        public string SourceApplication { get; set; }
        public string ArtifactName { get; set; }

        public int Duration { get; set; }
    }
}
