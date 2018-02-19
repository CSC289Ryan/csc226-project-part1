using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportsPro.Models {
    public class CustomerList {
        private List<Customer> customers;

        public CustomerList() {
            customers = new List<Customer>();
        }

        public Customer this[int index] {
            get {
                return customers[index];
            }
            set {
                customers[index] = value;
            }
        }

        public Customer this[string name] {
            get {
                foreach (Customer c in customers) {
                    if (c.Name == name) {
                        return c;
                    }
                }
                return null;
            }
        }
    }
}