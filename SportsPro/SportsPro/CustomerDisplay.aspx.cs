using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using SportsPro.Models;

namespace SportsPro {
    public partial class CustomerDisplay : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                ddlCustomers.DataBind();
            }
            Customer c = GetSelectedCustomer();
            DisplayCustomerInfo(c);
        }

        private Customer GetSelectedCustomer() {
            DataView customersTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            customersTable.RowFilter = $"CustomerID = '{ddlCustomers.SelectedValue}'";
            DataRowView row = customersTable[0];

            Customer c = new Customer();
            c.ID = (int)row["CustomerID"];
            c.Name = row["Name"].ToString();
            c.Address = row["Address"].ToString();
            c.City = row["City"].ToString();
            c.State = row["State"].ToString();
            c.PostalCode = row["ZipCode"].ToString();
            c.PhoneNumber = row["Phone"].ToString();
            c.Email = row["Email"].ToString();
            return c;
        }

        private void DisplayCustomerInfo(Customer c) {
            string address = $"{c.Address}<br />{c.City}, {c.State} {c.PostalCode}";
            lblAddress.Text = address;
            lblPhone.Text = c.PhoneNumber;
            lblEmail.Text = c.Email;
        }
    }
}