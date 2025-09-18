using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Kontrolleri.dropdownlist
{
	public partial class dropdownlist_kontrolleri : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void ddl_sorumlu_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_yazdir_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_eklenecek.Text))
            {
                ddl_eklenenler.Items.Add(tb_eklenecek.Text);
                tb_eklenecek.Text = string.Empty;
            }
        }

        protected void btn_eklenecek_Click(object sender, EventArgs e)
        {
            lbl_secilmis.Text = "Text = " + ddl_eklenenler.SelectedItem.Text + " - Value = " + ddl_eklenenler.SelectedItem.Value;
        }
    }
}