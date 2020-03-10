using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
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
        [Required]
        public string ProjectId { get; set; }
        [Required]
        public string MetricId { get; set; }
        [Required]
        public string ArtifactId { get; set; }
        [Required]
        public string SourceApplication { get; set; }
        [Required]
        public string ArtifactName { get; set; }
        public int Duration { get; set; }
    }
}
