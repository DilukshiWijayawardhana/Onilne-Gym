 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onilne_Gym.Views.Admin
{
    public partial class Receptionist : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowReceptionistList();
            }

        }

        private void ShowReceptionistList()
        {
            string Query = "select * from ReceptionistTbl";
            ReceptionistList.DataSource = Con.GetData(Query);
            ReceptionistList.DataBind();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            try
            {
                string RecName = RecTb.Value;
                string RGen = RGenCb.SelectedValue;
                string DOB = RDOBTb.Value;
                string Add = RecAddTb.Value;
                string Phone = PhoneTb.Value;
                string Pass = PasswordTb.Value;
                string Email = EmailTb.Value;
                string Query = "insert into ReceptionistTbl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                Query = string.Format(Query, RecName, RGen, DOB, Add, Phone, Pass, Email);
                Con.setData(Query);
                ShowReceptionistList();
                ErrMsg.InnerText = "Receptionist Added!!";


            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void ReceptionistList_SelectedIndexChanged(object sender, EventArgs e)
        {
            RecTb.Value = ReceptionistList.SelectedRow.Cells[1].Text;
            RGenCb.Text = ReceptionistList.SelectedRow.Cells[2].Text;
            RecAddTb.Value = ReceptionistList.SelectedRow.Cells[4].Text;
            PhoneTb.Value = ReceptionistList.SelectedRow.Cells[5].Text;
            PasswordTb.Value = ReceptionistList.SelectedRow.Cells[6].Text;
            EmailTb.Value = ReceptionistList.SelectedRow.Cells[7].Text;



        }
    }
}