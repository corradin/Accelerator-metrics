using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AcceleratorMetrics.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace AcceleratorMetrics.Controllers
{
    [Route("[controller]")]
    public class DeploymentsController : Controller
    {
        private readonly MetricsContext context;
        public DeploymentsController(MetricsContext context)
        {
            this.context = context;
        }
        // GET: <controller>
        [HttpGet]
        public IEnumerable<Deployment> Get()
        {
            return context.Deployments.ToList();
            //return new string[] { "Deployment1", "Deployment2" };
        }

        // GET <controller>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST <controller>
        [HttpPost]
        public void Post([FromBody]string value)
        {
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
