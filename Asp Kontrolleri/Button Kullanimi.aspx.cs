using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Kontrolleri
{
	public partial class Button_Kullanimi : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			this.Title = "Ben sayfa açılmadan önce çalışırım";
		}

        protected void btn_tikla_Click(object sender, EventArgs e)
        {
			this.Title = "Ben butona tıklandığında Deüişirim";
        }
    }
}