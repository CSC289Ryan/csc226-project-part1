<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDisplay.aspx.cs" Inherits="SportsPro.CustomerDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/site.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <h1>SportsPro</h1>
            <h4>Sports management software for the sports enthusiast</h4>
        </div>
        <form id="form1" runat="server" class="form-horizontal">
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="Label1" runat="server" Text="Select a customer:" CssClass="control-label"></asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:DropDownList ID="ddlCustomers" runat="server" CssClass="form-control" AutoPostBack="True"
                        DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
                        SelectCommand="SELECT * FROM [Customers] ORDER BY [Name]"></asp:SqlDataSource>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:Label ID="lblAddress" runat="server" Text="ADDRESS"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="Label3" runat="server" Text="Phone:"></asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:Label ID="lblPhone" runat="server" Text="PHONE"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-1 col-sm-2">
                    <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>
                </div>
                <div class="col-sm-4">
                    <asp:Label ID="lblEmail" runat="server" Text="EMAIL"></asp:Label>
                </div>
            </div>
            <div class="col-sm-offset-1">
                <asp:Button ID="btnAddContact" runat="server" Text="Add to Contact List"
                    CssClass="btn btn-primary" OnClick="btnAddContact_Click" />
                <asp:Button ID="btnDisplayContacts" runat="server" Text="Display Contact List"
                    CssClass="btn btn-primary" PostBackUrl="~/ContactDisplay.aspx" />
            </div>
            <div class="col-sm-offset-1">
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false"
                            CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
