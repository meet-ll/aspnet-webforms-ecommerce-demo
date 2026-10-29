# AspNetWebFormsDemo

Classic ASP.NET Web Forms (.NET Framework 4.8) ecommerce data-entry demo, built as a source-analysis fixture.

## Pages
- `ProductEntry.aspx`: product catalog data entry (25+ fields)
- `CustomerProfile.aspx`: customer profile and preferences (20+ fields)
- `ShippingAddress.aspx`: shipping and delivery address (15+ fields)
- `OrderEntry.aspx`: order, pricing, tax and fulfillment (25+ fields)
- `PaymentDetails.aspx`: payment metadata (15+ fields)
- `Site.Master`: common navigation and layout
- `Controls/Notice.ascx`: reusable user control
- `BasePage.cs`: common page base class
- `Web.config`, `Global.asax`, `.sln`, `.csproj`

Forms include server controls, associated labels, required and regex validation, validation summaries, lifecycle methods, server event handlers and client-side event attributes. Data is not persisted. Payment form intentionally avoids collecting a full card number or CVV; use a gateway token/reference.

## Runtime
Source parsing works on Ubuntu. Running with Microsoft's official ASP.NET Web Forms runtime requires Windows and .NET Framework 4.8 / IIS or Visual Studio tooling. Mono compatibility varies.
