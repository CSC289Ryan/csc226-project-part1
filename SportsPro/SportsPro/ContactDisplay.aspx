<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactDisplay.aspx.cs" Inherits="SportsPro.ContactDisplay" %>

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
            <div class="row col-sm-offset-1">
                <div class="col-sm-12">
                    Contact List:
                </div>
                <div class="col-sm-6"> <%-- Contact display column --%>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:ListBox ID="lstContacts" runat="server" CssClass="form-control"></asp:ListBox>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6"> <%-- listbox manipulation buttons --%>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnRemoveContact" runat="server" Text="Remove Contact" 
                                CssClass="btn btn-primary" OnClick="btnRemoveContact_Click" />
                        </div>
                        <div class="col-sm-12">
                            <asp:Button ID="btnEmptyContacts" runat="server" Text="Empty List"
                                CssClass="btn btn-primary" OnClick="btnEmptyContacts_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row col-sm-offset-1">
                <div class="col-sm-12">
                    <div class="form-group">
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="false"></asp:Label>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12">
                            <asp:Button ID="btnAddCustomers" runat="server" Text="Select Additional Customers" 
                                CssClass="btn btn-primary" PostBackUrl="~/CustomerDisplay.aspx"/>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
