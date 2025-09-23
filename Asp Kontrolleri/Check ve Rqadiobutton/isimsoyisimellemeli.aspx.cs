using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Kontrolleri.Check_ve_Rqadiobutton
{
    public partial class isimsoyisimellemeli : System.Web.UI.Page
    {
        static List<Kisi> kisiler = new List<Kisi>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GuncelleKisiler();
            }
        }

        protected void btn_kaydet_Click(object sender, EventArgs e)
        {
            string isim = tb_isim.Text;
            string soyisim = tb_soyisim.Text;
            string email = tb_email.Text;
            string medeniDurum = rb_bekar.Checked ? "Bekar" : rb_evli.Checked ? "Evli" : "";
            int yas = 0;
            int.TryParse(tb_yas.Text, out yas);

            Kisi yeniKisi = new Kisi
            {
                Isim = isim,
                Soyisim = soyisim,
                Email = email,
                MedeniDurum = medeniDurum,
                Yas = yas
            };

            kisiler.Add(yeniKisi);

            GuncelleKisiler();

            TemizleForm();
        }

        private void GuncelleKisiler()
        {
            ddl_kisiler.Items.Clear();
            foreach (var kisi in kisiler)
            {
                ddl_kisiler.Items.Add($"{kisi.Isim} {kisi.Soyisim}");
            }

            gv_kisiler.DataSource = kisiler;
            gv_kisiler.DataBind();
        }

        private void TemizleForm()
        {
            tb_isim.Text = "";
            tb_soyisim.Text = "";
            tb_email.Text = "";
            tb_yas.Text = "";
            rb_bekar.Checked = false;
            rb_evli.Checked = false;
        }

        public class Kisi
        {
            public string Isim { get; set; }
            public string Soyisim { get; set; }
            public string Email { get; set; }
            public string MedeniDurum { get; set; }
            public int Yas { get; set; }
        }
    }
}