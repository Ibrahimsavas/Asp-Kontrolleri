using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Kontrolleri
{
	public partial class Textbox_Kullanimi : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btn_titleDeğiştir_Click(object sender, EventArgs e)
        {
			this.Title = tb_metin.Text;
        }
    }
}