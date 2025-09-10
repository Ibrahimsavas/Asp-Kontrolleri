using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Kontrolleri
{
	public partial class Label_Kullanimi : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lbl_mesaj.Text = "Page_load event metodundan veri gönderildi.";
        }

        protected void btn_labeltikla_Click(object sender, EventArgs e)
        {
            lbl_mesaj.Text = "Butona tıklandı ve Yazı değiştirildi";
        }
    }
}