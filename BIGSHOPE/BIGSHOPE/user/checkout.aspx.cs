using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceStack.Stripe;
using ServiceStack.Stripe.Types;

namespace BIGSHOPE.user
{
    public partial class checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["customer_id"] != null)
            {
                // Auto fill the entire form
                using (var db = new bigshopeEntities())
                {
                    int customer_id = Convert.ToInt32(Session["customer_id"]);
                    tblCustomer c = db.tblCustomers.FirstOrDefault(v => v.customer_id == customer_id);
                    tbFName.Text = c.customer_name;
                    tbLName.Text = c.customer_surname;
                    tbEmail.Text = c.customer_email;
                    tbPhone.Text = c.customer_phone;
                    tbAddress.Text = c.customer_address;
                    tbCity.Text = c.customer_city;
                    tbState.Text = c.customer_state;
                    tbPost.Text = Convert.ToString(c.customer_zip);
                    tbPass.Enabled = false;
                    tbCnfrmPass.Enabled = false;

                    SetFocus(tbCardNo);
                    


                }

            }
        }

        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            
            var gateway = new StripeGateway("sk_test_Biqolmcf9wmzviLy2J0xHfjg");
            
            var cardToken = gateway.Post(new CreateStripeToken
            {
                Card = new StripeCard
                {
                    Name = tbFName.Text + tbLName.Text,
                    Number = tbCardNo.Text,
                    Cvc = tbCVC.Text,
                    ExpMonth = Convert.ToInt32(tbMonth.Text),
                    ExpYear = Convert.ToInt32(tbYear.Text),
                    AddressLine1 = tbAddress.Text,
                    AddressLine2 = tbAddress.Text,
                    AddressZip = tbCity.Text,
                    AddressState = tbState.Text,
                    AddressCountry = "Pakistan",
                },
               
            });

            var customer = gateway.Post(new CreateStripeCustomerWithToken
            {
                Card = cardToken.Id,
                Description = "Purchasing Purpose",
                Email = tbEmail.Text,
            });
            var temp = customer.Id;
            var charge = gateway.Post(new ChargeStripeCustomer
            {
                Amount = 100 * 10,
                Customer = customer.Id,
                Currency = "usd",
                Description = "Test Charge Customer",
            });


            using (var db = new bigshopeEntities())
            {

                tblCustomer cus = new tblCustomer();
                cus.customer_name = tbFName.Text;
                cus.customer_surname = tbLName.Text;
                cus.customer_email = tbEmail.Text;
                cus.customer_phone = tbPhone.Text;
                cus.customer_address = tbAddress.Text;
                cus.customer_city = tbCity.Text;
                cus.customer_address = tbAddress.Text;
                cus.customer_city = tbCity.Text;
                cus.customer_state = tbState.Text;
                cus.customer_zip = Convert.ToInt32(tbPost.Text);
                cus.customer_password = EncDec.Encrypt(tbPass.Text);
                //cus.customer_stripe_id = "sk_test_Biqolmcf9wmzviLy2J0xHfjg";
                cus.customer_stripe_id = temp;
                db.tblCustomers.Add(cus);
                db.SaveChanges();

                // Order Insertion
                tblOrder order = new tblOrder();
                order.order_prod_id = 1;
                order.order_total_amount = Request.Cookies["grandTotal"].Value.ToString();
                order.order_time = DateTime.Now;
                db.tblOrders.Add(order);
                db.SaveChanges();

                //sendMail();

                Response.Redirect("thanks_for_shopping.aspx");
                
            }



        }

        /*
        private void sendMail()
        {
            MailMessage message = new MailMessage();
            SmtpClient client = new SmtpClient();
            message.IsBodyHtml = true;
            message.From = new MailAddress("enjoytheservices@gmail.com", "Noreply");
            message.To.Add(new MailAddress("locatey4c@gmail.com"));
            message.Body = "Thanks for your shopping at out website. ";
            message.Subject = "test subject";
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = new System.Net.NetworkCredential("zubishadow99@gmail.com", "03037332829");
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.Send(message);
        }
        */
    }
}