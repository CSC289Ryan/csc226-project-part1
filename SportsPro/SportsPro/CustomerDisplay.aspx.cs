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
            DataBindOnFirstLoad();
            Customer c = GetSelectedCustomer();
            DisplayCustomerInfo(c);
        }

        private void DataBindOnFirstLoad() {
            if (!IsPostBack) {
                ddlCustomers.DataBind();
            }
        }

        private Customer GetSelectedCustomer() {
            DataRowView row = RowFromCustomerTableById(ddlCustomers.SelectedValue);
            return CustomerFromTableRow(row);
        }

        private DataRowView RowFromCustomerTableById(string targetID) {
            DataView customersTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            customersTable.RowFilter = $"CustomerID = '{targetID}'";
            DataRowView firstRow = customersTable[0];
            return firstRow;
        }

        private Customer CustomerFromTableRow(DataRowView row) {
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

        protected void btnAddContact_Click(object sender, EventArgs e) {
            // stub event handler
        }

        protected void btnDisplayContacts_Click(object sender, EventArgs e) {
            // stub event handler
        }
    }
}