using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Kontrolleri
{
	public partial class Cok_Basit_Hesap_Makinesi : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            tb_sayi1.Text = "";
            tb_sayi2.Text = "";
            tb_sonuc.Text = "";
		}

        protected void btn_topla_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(tb_sayi1.Text);
            int sayi2 = Convert.ToInt32(tb_sayi2.Text);
            int toplam = sayi1 + sayi2;
            tb_sonuc.Text = Convert.ToString(toplam);
        }

        protected void btn_cikar_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(tb_sayi1.Text);
            int sayi2 = Convert.ToInt32(tb_sayi2.Text);
            int toplam = sayi1 - sayi2;
            tb_sonuc.Text = Convert.ToString(toplam);
        }

        protected void btn_bol_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(tb_sayi1.Text);
            int sayi2 = Convert.ToInt32(tb_sayi2.Text);
            int toplam = sayi1 / sayi2;
            tb_sonuc.Text = Convert.ToString(toplam);
        }

        protected void btn_carp_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(tb_sayi1.Text);
            int sayi2 = Convert.ToInt32(tb_sayi2.Text);
            int toplam = sayi1 * sayi2;
            tb_sonuc.Text = Convert.ToString(toplam);
        }
    }
}