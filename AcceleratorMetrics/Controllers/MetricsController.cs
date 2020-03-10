using System;
using System.Collections.Generic;
using System.Linq;
using AcceleratorMetrics.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AcceleratorMetrics.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MetricsController : ControllerBase
    {
        private readonly MetricsContext _context;
        private readonly ILogger _logger;

        public MetricsController(MetricsContext context, ILogger<MetricsController> logger)
        {
            _context = context;
            _logger = logger;
        }
        // GET: <controller>
        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        public ActionResult<IEnumerable<Metric>> Get()
        {
            return Ok(_context.Metrics.ToList());
        }

        // GET <controller>/5
        [HttpGet("{id}", Name = "GetMetric")]
        public string Get(int id)
        {
            return "value";
        }

        // POST <controller>
        [HttpPost("Metric")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        public IActionResult Post([FromBody]Metric metric)
        {
            if (metric == null)
            {
                return BadRequest();
            }

            _context.Metrics.Add(metric);
            try
            {
                _context.SaveChanges();
            }
            catch (ArgumentException ae)
            {
                _logger.LogError(ae, $"Argument exception occurred while creating event with artifact id {metric?.ArtifactId} and project id {metric?.ProjectId}");
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
