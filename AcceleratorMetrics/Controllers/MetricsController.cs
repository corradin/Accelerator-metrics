using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AcceleratorMetrics.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AcceleratorMetrics.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MetricsController : Controller
    {
        private readonly MetricsContext context;
        public MetricsController(MetricsContext context)
        {
            this.context = context;
        }
        // GET: <controller>
        [HttpGet]
        public IEnumerable<Metric> Get()
        {
            return context.Metrics.ToList();
        }

        // GET <controller>/5
        [HttpGet("{id}", Name = "GetMetric")]
        public string Get(int id)
        {
            return "value";
        }

        // POST <controller>
        [HttpPost("Metric")]
        [ProducesResponseType(200)]
        [ProducesResponseType(400)]
        public IActionResult Post([FromBody]Metric metric)
        {
            if (metric == null)
            {
                return BadRequest();
            }

            context.Metrics.Add(metric);
            try
            {
                context.SaveChanges();
            }
            catch (ArgumentException ae)
            {
                //TODO: Error handling
            }

            return CreatedAtRoute("GetMetric", new { id = metric.ID }, metric);
        }

        // PUT <controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE <controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
