using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AcceleratorMetrics.Models
{
    public class MetricsContext : DbContext
    {
        public MetricsContext(DbContextOptions<MetricsContext> options) : base(options)
        { }

        public DbSet<Deployment> Deployments { get; set; }
    }
}
