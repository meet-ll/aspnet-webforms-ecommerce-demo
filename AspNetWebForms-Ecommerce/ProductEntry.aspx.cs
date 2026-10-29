using System;
using System.Web.UI.WebControls;
namespace AspNetWebFormsDemo {
 public partial class ProductEntry : BasePage {
  protected void Page_Init(object sender, EventArgs e) { }
  protected void Page_Load(object sender, EventArgs e) {
   if (!IsPostBack) lblProductEntryResult.Text = "Complete the form and submit to validate the entered data.";
  }
  protected void Page_PreRender(object sender, EventArgs e) { }
  protected void btnSaveProduct_Click(object sender, EventArgs e) {
   if (!Page.IsValid) { lblProductEntryResult.Text = "Please correct the validation errors."; return; }
   lblProductEntryResult.Text = "Product Entry validated successfully (demo only). Source: " + Server.HtmlEncode(hfFormSource.Value) + ". No data was persisted.";
  }
  protected void btnClearProductEntry_Click(object sender, EventArgs e) {
   lblProductEntryResult.Text = "Status cleared. Field values were not reset.";
  }

        protected void cvProductPrice_ServerValidate(object source, ServerValidateEventArgs args)
        {
            decimal value;
            args.IsValid = decimal.TryParse(args.Value, out value) && value >= 0;
        }

 }
}
