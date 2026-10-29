using System;
using System.Web.UI.WebControls;
namespace AspNetWebFormsDemo {
 public partial class PaymentDetails : BasePage {
  protected void Page_Init(object sender, EventArgs e) { }
  protected void Page_Load(object sender, EventArgs e) {
   if (!IsPostBack) lblPaymentDetailsResult.Text = "Complete the form and submit to validate the entered data.";
  }
  protected void Page_PreRender(object sender, EventArgs e) { }
  protected void btnSavePayment_Click(object sender, EventArgs e) {
   if (!Page.IsValid) { lblPaymentDetailsResult.Text = "Please correct the validation errors."; return; }
   lblPaymentDetailsResult.Text = "Payment Details validated successfully (demo only). Source: " + Server.HtmlEncode(hfFormSource.Value) + ". No data was persisted.";
  }
  protected void btnClearPaymentDetails_Click(object sender, EventArgs e) {
   lblPaymentDetailsResult.Text = "Status cleared. Field values were not reset.";
  }

        protected void cvPaymentReference_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = !string.IsNullOrWhiteSpace(args.Value) && args.Value.StartsWith("PAY-", StringComparison.OrdinalIgnoreCase);
        }

 }
}
