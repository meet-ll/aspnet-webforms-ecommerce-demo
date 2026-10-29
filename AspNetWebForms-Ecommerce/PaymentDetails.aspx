<%@ Page Title="Payment Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="AspNetWebFormsDemo.PaymentDetails" %>
<asp:Content ID="PaymentDetailsContent" ContentPlaceHolderID="MainContent" runat="server">
<section class="entry-page">
<h2>Payment Details</h2><p class="form-intro">Record payment metadata. Use test references or gateway tokens only; never enter real card numbers or CVV.</p>
<asp:ValidationSummary ID="vsPaymentDetails" runat="server" HeaderText="Please correct the following:" CssClass="validation-summary" ValidationGroup="Entry" />
<asp:HiddenField ID="hfFormSource" runat="server" Value="PaymentDetails" />
<div class="form-grid"><div class="form-field">
 <asp:Label ID="lblPaymentReference" runat="server" AssociatedControlID="txtPaymentReference" Text="Internal payment reference" />
 <asp:TextBox ID="txtPaymentReference" runat="server" CssClass="form-control" MaxLength="40" placeholder="PAY-2026-0001" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvPaymentReference" runat="server" ControlToValidate="txtPaymentReference" ErrorMessage="Internal payment reference is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revPaymentReference" runat="server" ControlToValidate="txtPaymentReference"
  ValidationExpression="^[A-Za-z0-9_-]{6,40}$" ErrorMessage="Use 6-40 letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblOrderReference" runat="server" AssociatedControlID="txtOrderReference" Text="Order reference" />
 <asp:TextBox ID="txtOrderReference" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvOrderReference" runat="server" ControlToValidate="txtOrderReference" ErrorMessage="Order reference is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revOrderReference" runat="server" ControlToValidate="txtOrderReference"
  ValidationExpression="^[A-Za-z0-9_-]{4,30}$" ErrorMessage="Enter a valid order reference." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPayerName" runat="server" AssociatedControlID="txtPayerName" Text="Payer name" />
 <asp:TextBox ID="txtPayerName" runat="server" CssClass="form-control" MaxLength="100" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvPayerName" runat="server" ControlToValidate="txtPayerName" ErrorMessage="Payer name is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revPayerName" runat="server" ControlToValidate="txtPayerName"
  ValidationExpression="^[A-Za-z][A-Za-z .'-]{1,99}$" ErrorMessage="Enter a valid name." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPayerEmail" runat="server" AssociatedControlID="txtPayerEmail" Text="Payer email" />
 <asp:TextBox ID="txtPayerEmail" runat="server" CssClass="form-control" TextMode="Email" MaxLength="150" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvPayerEmail" runat="server" ControlToValidate="txtPayerEmail" ErrorMessage="Payer email is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revPayerEmail" runat="server" ControlToValidate="txtPayerEmail"
  ValidationExpression="^[^@\\s]+@[^@\\s]+\\.[^@\\s]+$" ErrorMessage="Enter a valid email address." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblAmount" runat="server" AssociatedControlID="txtAmount" Text="Amount" />
 <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" MaxLength="12" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvAmount" runat="server" ControlToValidate="txtAmount" ErrorMessage="Amount is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revAmount" runat="server" ControlToValidate="txtAmount"
  ValidationExpression="^\\d+(\\.\\d{1,2})?$" ErrorMessage="Enter a valid amount." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblGatewayTransactionId" runat="server" AssociatedControlID="txtGatewayTransactionId" Text="Gateway transaction ID" />
 <asp:TextBox ID="txtGatewayTransactionId" runat="server" CssClass="form-control" MaxLength="80" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revGatewayTransactionId" runat="server" ControlToValidate="txtGatewayTransactionId"
  ValidationExpression="^[A-Za-z0-9_-]{0,80}$" ErrorMessage="Use letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblGatewayResponseCode" runat="server" AssociatedControlID="txtGatewayResponseCode" Text="Gateway response code" />
 <asp:TextBox ID="txtGatewayResponseCode" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revGatewayResponseCode" runat="server" ControlToValidate="txtGatewayResponseCode"
  ValidationExpression="^[A-Za-z0-9_-]{0,30}$" ErrorMessage="Use letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCardLastFour" runat="server" AssociatedControlID="txtCardLastFour" Text="Card last four digits (if applicable)" />
 <asp:TextBox ID="txtCardLastFour" runat="server" CssClass="form-control" MaxLength="4" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revCardLastFour" runat="server" ControlToValidate="txtCardLastFour"
  ValidationExpression="^[0-9]{4}$" ErrorMessage="Enter exactly 4 digits." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblBankReference" runat="server" AssociatedControlID="txtBankReference" Text="Bank / UPI reference" />
 <asp:TextBox ID="txtBankReference" runat="server" CssClass="form-control" MaxLength="80" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revBankReference" runat="server" ControlToValidate="txtBankReference"
  ValidationExpression="^[A-Za-z0-9_-]{0,80}$" ErrorMessage="Use letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPaymentMethod" runat="server" AssociatedControlID="ddlPaymentMethod" Text="Payment method" />
 <asp:DropDownList ID="ddlPaymentMethod" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose method" Value="" />
  <asp:ListItem Text="UPI" Value="upi" />
  <asp:ListItem Text="Card token" Value="card-token" />
  <asp:ListItem Text="Net banking" Value="netbanking" />
  <asp:ListItem Text="Wallet" Value="wallet" />
  <asp:ListItem Text="Cash on delivery" Value="cod" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvPaymentMethod" runat="server" ControlToValidate="ddlPaymentMethod" InitialValue="" ErrorMessage="Payment method is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPaymentStatus" runat="server" AssociatedControlID="ddlPaymentStatus" Text="Payment status" />
 <asp:DropDownList ID="ddlPaymentStatus" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Initiated" Value="initiated" />
  <asp:ListItem Text="Pending" Value="pending" />
  <asp:ListItem Text="Succeeded" Value="succeeded" />
  <asp:ListItem Text="Failed" Value="failed" />
  <asp:ListItem Text="Refunded" Value="refunded" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvPaymentStatus" runat="server" ControlToValidate="ddlPaymentStatus" InitialValue="" ErrorMessage="Payment status is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCurrency" runat="server" AssociatedControlID="ddlCurrency" Text="Currency" />
 <asp:DropDownList ID="ddlCurrency" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="INR" Value="INR" />
  <asp:ListItem Text="USD" Value="USD" />
  <asp:ListItem Text="GBP" Value="GBP" />
  <asp:ListItem Text="EUR" Value="EUR" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvCurrency" runat="server" ControlToValidate="ddlCurrency" InitialValue="" ErrorMessage="Currency is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblGateway" runat="server" AssociatedControlID="ddlGateway" Text="Payment gateway" />
 <asp:DropDownList ID="ddlGateway" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose gateway" Value="" />
  <asp:ListItem Text="PayU" Value="payu" />
  <asp:ListItem Text="Stripe" Value="stripe" />
  <asp:ListItem Text="Razorpay" Value="razorpay" />
  <asp:ListItem Text="Manual" Value="manual" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvGateway" runat="server" ControlToValidate="ddlGateway" InitialValue="" ErrorMessage="Payment gateway is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblPaymentDate" runat="server" AssociatedControlID="txtPaymentDate" Text="Payment date" />
 <asp:TextBox ID="txtPaymentDate" runat="server" CssClass="form-control" TextMode="Date" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblPaymentNotes" runat="server" AssociatedControlID="txtPaymentNotes" Text="Payment notes" />
 <asp:TextBox ID="txtPaymentNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="1000" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkRefundRequested" runat="server" Text="Refund requested" onclick="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblRefundReference" runat="server" AssociatedControlID="txtRefundReference" Text="Refund reference" />
 <asp:TextBox ID="txtRefundReference" runat="server" CssClass="form-control" MaxLength="80" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revRefundReference" runat="server" ControlToValidate="txtRefundReference"
  ValidationExpression="^[A-Za-z0-9_-]{0,80}$" ErrorMessage="Use letters, digits, _ or -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field"><asp:CustomValidator ID="cvPaymentReference" runat="server" ControlToValidate="txtPaymentReference" OnServerValidate="cvPaymentReference_ServerValidate" ErrorMessage="Payment reference should begin with PAY-." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" /></div></div>
<div class="form-actions">
<asp:Button ID="btnSavePayment" runat="server" Text="Save payment record" CssClass="button" CausesValidation="true" ValidationGroup="Entry" OnClick="btnSavePayment_Click" OnClientClick="return confirmFormSubmit();" />
<asp:Button ID="btnClearPaymentDetails" runat="server" Text="Clear status" CssClass="button secondary" CausesValidation="false" OnClick="btnClearPaymentDetails_Click" />
</div>
<asp:Label ID="lblPaymentDetailsResult" runat="server" CssClass="result" EnableViewState="true" />
</section></asp:Content>
