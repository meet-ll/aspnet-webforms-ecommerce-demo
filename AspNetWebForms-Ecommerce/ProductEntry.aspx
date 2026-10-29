<%@ Page Title="Product Entry" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductEntry.aspx.cs" Inherits="AspNetWebFormsDemo.ProductEntry" %>
<asp:Content ID="ProductEntryContent" ContentPlaceHolderID="MainContent" runat="server">
<section class="entry-page">
<h2>Product Entry</h2><p class="form-intro">Create a product catalog record with pricing, stock, classification and publication settings.</p>
<asp:ValidationSummary ID="vsProductEntry" runat="server" HeaderText="Please correct the following:" CssClass="validation-summary" ValidationGroup="Entry" />
<asp:HiddenField ID="hfFormSource" runat="server" Value="ProductEntry" />
<div class="form-grid"><div class="form-field">
 <asp:Label ID="lblSKU" runat="server" AssociatedControlID="txtSKU" Text="SKU" />
 <asp:TextBox ID="txtSKU" runat="server" CssClass="form-control" MaxLength="30" placeholder="SKU-1001" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvSKU" runat="server" ControlToValidate="txtSKU" ErrorMessage="SKU is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revSKU" runat="server" ControlToValidate="txtSKU"
  ValidationExpression="^[A-Za-z0-9_-]{3,30}$" ErrorMessage="Use 3-30 letters, digits, underscore or hyphen." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblProductName" runat="server" AssociatedControlID="txtProductName" Text="Product name" />
 <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" MaxLength="150" placeholder="Product name" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvProductName" runat="server" ControlToValidate="txtProductName" ErrorMessage="Product name is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblSlug" runat="server" AssociatedControlID="txtSlug" Text="URL slug" />
 <asp:TextBox ID="txtSlug" runat="server" CssClass="form-control" MaxLength="160" placeholder="wireless-headphones" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvSlug" runat="server" ControlToValidate="txtSlug" ErrorMessage="URL slug is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revSlug" runat="server" ControlToValidate="txtSlug"
  ValidationExpression="^[a-z0-9]+(?:-[a-z0-9]+)*$" ErrorMessage="Use lowercase letters, digits and hyphens." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblBrand" runat="server" AssociatedControlID="txtBrand" Text="Brand" />
 <asp:TextBox ID="txtBrand" runat="server" CssClass="form-control" MaxLength="100" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvBrand" runat="server" ControlToValidate="txtBrand" ErrorMessage="Brand is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblModelNumber" runat="server" AssociatedControlID="txtModelNumber" Text="Model number" />
 <asp:TextBox ID="txtModelNumber" runat="server" CssClass="form-control" MaxLength="50" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revModelNumber" runat="server" ControlToValidate="txtModelNumber"
  ValidationExpression="^[A-Za-z0-9._/-]{0,50}$" ErrorMessage="Use letters, numbers or . _ / -." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblBarcode" runat="server" AssociatedControlID="txtBarcode" Text="Barcode / GTIN" />
 <asp:TextBox ID="txtBarcode" runat="server" CssClass="form-control" MaxLength="14" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revBarcode" runat="server" ControlToValidate="txtBarcode"
  ValidationExpression="^[0-9]{8,14}$" ErrorMessage="Barcode must contain 8-14 digits." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblShortDescription" runat="server" AssociatedControlID="txtShortDescription" Text="Short description" />
 <asp:TextBox ID="txtShortDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="250" />
 <asp:RequiredFieldValidator ID="rfvShortDescription" runat="server" ControlToValidate="txtShortDescription" ErrorMessage="Short description is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblSearchKeywords" runat="server" AssociatedControlID="txtSearchKeywords" Text="Search keywords" />
 <asp:TextBox ID="txtSearchKeywords" runat="server" CssClass="form-control" MaxLength="250" placeholder="comma-separated keywords" onkeyup="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblCategory" runat="server" AssociatedControlID="ddlCategory" Text="Category" />
 <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose category" Value="" />
  <asp:ListItem Text="Electronics" Value="electronics" />
  <asp:ListItem Text="Home" Value="home" />
  <asp:ListItem Text="Clothing" Value="clothing" />
  <asp:ListItem Text="Books" Value="books" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory" InitialValue="" ErrorMessage="Category is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblSubcategory" runat="server" AssociatedControlID="ddlSubcategory" Text="Subcategory" />
 <asp:DropDownList ID="ddlSubcategory" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose subcategory" Value="" />
  <asp:ListItem Text="Accessories" Value="accessories" />
  <asp:ListItem Text="Appliances" Value="appliances" />
  <asp:ListItem Text="Apparel" Value="apparel" />
  <asp:ListItem Text="Other" Value="other" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvSubcategory" runat="server" ControlToValidate="ddlSubcategory" InitialValue="" ErrorMessage="Subcategory is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblProductType" runat="server" AssociatedControlID="ddlProductType" Text="Product type" />
 <asp:DropDownList ID="ddlProductType" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Physical" Value="physical" />
  <asp:ListItem Text="Digital" Value="digital" />
  <asp:ListItem Text="Service" Value="service" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvProductType" runat="server" ControlToValidate="ddlProductType" InitialValue="" ErrorMessage="Product type is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblTaxClass" runat="server" AssociatedControlID="ddlTaxClass" Text="Tax class" />
 <asp:DropDownList ID="ddlTaxClass" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Choose tax class" Value="" />
  <asp:ListItem Text="Standard" Value="standard" />
  <asp:ListItem Text="Reduced" Value="reduced" />
  <asp:ListItem Text="Exempt" Value="exempt" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvTaxClass" runat="server" ControlToValidate="ddlTaxClass" InitialValue="" ErrorMessage="Tax class is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblUnitPrice" runat="server" AssociatedControlID="txtUnitPrice" Text="Unit price" />
 <asp:TextBox ID="txtUnitPrice" runat="server" CssClass="form-control" MaxLength="12" placeholder="0.00" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvUnitPrice" runat="server" ControlToValidate="txtUnitPrice" ErrorMessage="Unit price is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revUnitPrice" runat="server" ControlToValidate="txtUnitPrice"
  ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Enter a non-negative price with up to 2 decimals." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCompareAtPrice" runat="server" AssociatedControlID="txtCompareAtPrice" Text="Compare-at price" />
 <asp:TextBox ID="txtCompareAtPrice" runat="server" CssClass="form-control" MaxLength="12" placeholder="0.00" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revCompareAtPrice" runat="server" ControlToValidate="txtCompareAtPrice"
  ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Enter a valid price." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblCostPrice" runat="server" AssociatedControlID="txtCostPrice" Text="Cost price" />
 <asp:TextBox ID="txtCostPrice" runat="server" CssClass="form-control" MaxLength="12" placeholder="0.00" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revCostPrice" runat="server" ControlToValidate="txtCostPrice"
  ValidationExpression="^\d+(\.\d{1,2})?$" ErrorMessage="Enter a valid cost." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblStockQuantity" runat="server" AssociatedControlID="txtStockQuantity" Text="Stock quantity" />
 <asp:TextBox ID="txtStockQuantity" runat="server" CssClass="form-control" MaxLength="8" placeholder="0" onkeyup="markDirty(this)" />
 <asp:RequiredFieldValidator ID="rfvStockQuantity" runat="server" ControlToValidate="txtStockQuantity" ErrorMessage="Stock quantity is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
 <asp:RegularExpressionValidator ID="revStockQuantity" runat="server" ControlToValidate="txtStockQuantity"
  ValidationExpression="^\d{1,8}$" ErrorMessage="Enter a whole number." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblLowStockThreshold" runat="server" AssociatedControlID="txtLowStockThreshold" Text="Low-stock threshold" />
 <asp:TextBox ID="txtLowStockThreshold" runat="server" CssClass="form-control" MaxLength="8" placeholder="5" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revLowStockThreshold" runat="server" ControlToValidate="txtLowStockThreshold"
  ValidationExpression="^\d{1,8}$" ErrorMessage="Enter a whole number." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblWeightKg" runat="server" AssociatedControlID="txtWeightKg" Text="Weight (kg)" />
 <asp:TextBox ID="txtWeightKg" runat="server" CssClass="form-control" MaxLength="12" placeholder="0.500" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revWeightKg" runat="server" ControlToValidate="txtWeightKg"
  ValidationExpression="^\d+(\.\d{1,3})?$" ErrorMessage="Enter a valid weight." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblStatus" runat="server" AssociatedControlID="ddlStatus" Text="Publication status" />
 <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Draft" Value="draft" />
  <asp:ListItem Text="Active" Value="active" />
  <asp:ListItem Text="Archived" Value="archived" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvStatus" runat="server" ControlToValidate="ddlStatus" InitialValue="" ErrorMessage="Publication status is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblFulfillment" runat="server" AssociatedControlID="ddlFulfillment" Text="Fulfillment method" />
 <asp:DropDownList ID="ddlFulfillment" runat="server" CssClass="form-control" onchange="validateField(this)">
  <asp:ListItem Text="Ship" Value="ship" />
  <asp:ListItem Text="Pickup" Value="pickup" />
  <asp:ListItem Text="Download" Value="download" />
 </asp:DropDownList>
 <asp:RequiredFieldValidator ID="rfvFulfillment" runat="server" ControlToValidate="ddlFulfillment" InitialValue="" ErrorMessage="Fulfillment method is required." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkIsFeatured" runat="server" Text="Mark as featured" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkTrackInventory" runat="server" Text="Track inventory" Checked="true" onclick="markDirty(this)" />
</div>
<div class="form-field checkbox-field">
 <asp:CheckBox ID="chkAllowBackorder" runat="server" Text="Allow backorders" onclick="markDirty(this)" />
</div>
<div class="form-field">
 <asp:Label ID="lblInternalNotes" runat="server" AssociatedControlID="txtInternalNotes" Text="Internal notes" />
 <asp:TextBox ID="txtInternalNotes" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" MaxLength="1000" />
</div>
<div class="form-field">
 <asp:Label ID="lblSupplierCode" runat="server" AssociatedControlID="txtSupplierCode" Text="Supplier code" />
 <asp:TextBox ID="txtSupplierCode" runat="server" CssClass="form-control" MaxLength="30" onkeyup="markDirty(this)" />
 <asp:RegularExpressionValidator ID="revSupplierCode" runat="server" ControlToValidate="txtSupplierCode"
  ValidationExpression="^[A-Za-z0-9_-]{0,30}$" ErrorMessage="Use letters, digits, underscore or hyphen." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" />
</div>
<div class="form-field">
 <asp:Label ID="lblRestockDate" runat="server" AssociatedControlID="txtRestockDate" Text="Expected restock date" />
 <asp:TextBox ID="txtRestockDate" runat="server" CssClass="form-control" TextMode="Date" onkeyup="markDirty(this)" />
</div>
<div class="form-field"><asp:CustomValidator ID="cvProductPrice" runat="server" ControlToValidate="txtUnitPrice" OnServerValidate="cvProductPrice_ServerValidate" ErrorMessage="Unit price must be zero or greater." Display="Dynamic" CssClass="validation-error" ValidationGroup="Entry" /></div></div>
<div class="form-actions">
<asp:Button ID="btnSaveProduct" runat="server" Text="Save product" CssClass="button" CausesValidation="true" ValidationGroup="Entry" OnClick="btnSaveProduct_Click" OnClientClick="return confirmFormSubmit();" />
<asp:Button ID="btnClearProductEntry" runat="server" Text="Clear status" CssClass="button secondary" CausesValidation="false" OnClick="btnClearProductEntry_Click" />
</div>
<asp:Label ID="lblProductEntryResult" runat="server" CssClass="result" EnableViewState="true" />
</section></asp:Content>
