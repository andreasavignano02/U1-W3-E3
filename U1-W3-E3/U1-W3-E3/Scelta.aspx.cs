using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace U1_W3_E3
{
    public partial class Scelta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Preventivo_Click(object sender, EventArgs e)
        {
            double PrezzoScelto = Convert.ToDouble(DropDownList1.SelectedValue);

            double accessori = 0;
            double totale = 0;
            for(int i = 0; i < CheckBoxList1.Items.Count; i++ ) 
            {
                if (CheckBoxList1.Items[i].Selected) 
                {
                    accessori += Convert.ToDouble(CheckBoxList1.Items[i].Value);
                }
            }

            int anniGaranzia = Convert.ToInt32(DropDownList2.SelectedValue);
            int totaleGaranzia = anniGaranzia * 150;

            totale = PrezzoScelto + accessori + totaleGaranzia;

            CostoMacchina.Text = PrezzoScelto.ToString("c");
            CostoAccessori.Text = accessori.ToString("c");
            CostoGaranzia.Text = totaleGaranzia.ToString("c");
            Totale.Text = totale.ToString("c");
        }

        protected void DropDownList1_SelectedIndexChanged (object sender, EventArgs e) 
        {
            string AutoSelected = DropDownList1.SelectedItem.Text;
            double autoSelectedCost = Convert.ToDouble(DropDownList1.SelectedValue);
            if(AutoSelected == "Ford Mustang") 
            {
                Image1.ImageUrl = "~/IMG/Ford Mustang.jpg";
            } 
            else if (AutoSelected == "Ferrari") 
            {
                Image1.ImageUrl = "~/IMG/Ferrari.jpg";
            }
            PrezzoPartenza.Visible = true;
            PrezzoPartenza.Text = autoSelectedCost.ToString("c");
        }
    }
}