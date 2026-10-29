using System;
using System.Web.UI.WebControls;
namespace AspNetWebFormsDemo {
 public partial class CustomerProfile : BasePage {
  protected void Page_Init(object sender, EventArgs e) { }
  protected void Page_Load(object sender, EventArgs e) {
   if (!IsPostBack) lblCustomerProfileResult.Text = "Complete the form and submit to validate the entered data.";
  }
  protected void Page_PreRender(object sender, EventArgs e) { }
  protected void btnSaveCustomer_Click(object sender, EventArgs e) {
   if (!Page.IsValid) { lblCustomerProfileResult.Text = "Please correct the validation errors."; return; }
   lblCustomerProfileResult.Text = "Customer Profile validated successfully (demo only). Source: " + Server.HtmlEncode(hfFormSource.Value) + ". No data was persisted.";
  }
  protected void btnClearCustomerProfile_Click(object sender, EventArgs e) {
   lblCustomerProfileResult.Text = "Status cleared. Field values were not reset.";
  }

 }
}
