using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportsPro.Models;

namespace SportsPro {
    public partial class ContactDisplay : System.Web.UI.Page {
        private CustomerList contacts;

        protected void Page_Load(object sender, EventArgs e) {
            contacts = CustomerList.GetCustomers();
            DisplayContactsOnFirstLoad();
        }

        private void DisplayContactsOnFirstLoad() {
            if (!IsPostBack) {
                DisplayContacts();
            }
        }

        private void DisplayContacts() {
            lstContacts.Items.Clear();
            for (int idx = 0; idx < contacts.Count; idx++) {
                lstContacts.Items.Add(new ListItem(contacts[idx].ContactDisplay()));
            }
        }

        protected void btnRemoveContact_Click(object sender, EventArgs e) {
            // stub event handler
        }

        protected void btnEmptyContacts_Click(object sender, EventArgs e) {
            // stub event handler
        }
    }
}