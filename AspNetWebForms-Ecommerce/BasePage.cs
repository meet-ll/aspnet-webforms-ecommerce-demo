using System;
using System.Web.UI;
namespace AspNetWebFormsDemo {
 public class BasePage : Page {
  protected override void OnInit(EventArgs e) { base.OnInit(e); }
  protected string CurrentPageName { get { return GetType().Name; } }
 }
}
