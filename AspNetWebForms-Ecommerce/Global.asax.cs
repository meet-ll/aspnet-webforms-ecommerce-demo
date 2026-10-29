using System;
using System.Web;
namespace AspNetWebFormsDemo {
 public class Global : HttpApplication {
  protected void Application_Start(object sender, EventArgs e) { Application["StartedUtc"] = DateTime.UtcNow; }
  protected void Session_Start(object sender, EventArgs e) { Session["VisitCount"] = 0; }
 }
}
