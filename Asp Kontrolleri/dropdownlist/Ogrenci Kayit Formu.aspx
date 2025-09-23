<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ogrenci Kayit Formu.aspx.cs" Inherits="Asp_Kontrolleri.dropdownlist.Ogrenci_Kayit_Formu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Öğrenci Kayıt Formu</title>
    <link href="OgrenciKayitFormuStil.css" rel="stylesheet" />
</head>
<body>
    <canvas id="matrix-canvas"></canvas>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Öğrenci Kayıt Formu</h2>
            <label for="tb_isim">İsim:</label>
            <asp:TextBox ID="tb_isim" runat="server" />

            <label for="tb_soyad">Soyad:</label>
            <asp:TextBox ID="tb_soyad" runat="server" />

            <label for="tb_okulno">Okul No:</label>
            <asp:TextBox ID="tb_okulno" runat="server" />

            <label for="ddl_sinif">Sınıf:</label>
            <asp:DropDownList ID="ddl_sinif" runat="server" CssClass="custom-dropdown">
                <asp:ListItem Text="Sınıf Seçiniz" Value="" />
                <asp:ListItem Text="9" Value="9" />
                <asp:ListItem Text="10" Value="10" />
                <asp:ListItem Text="11" Value="11" />
                <asp:ListItem Text="12" Value="12" />
            </asp:DropDownList>

            <label for="ddl_sube">Şube:</label>
            <asp:DropDownList ID="ddl_sube" runat="server" CssClass="custom-dropdown">
                
                <asp:ListItem Text="Şube Seçiniz" Value="" />
                
                <asp:ListItem Text="A" Value="A" />
                <asp:ListItem Text="B" Value="B" />
                <asp:ListItem Text="C" Value="C" />
                <asp:ListItem Text="D" Value="D" />

            </asp:DropDownList>

            <label for="ddl_ilce">İlçe:</label>
            <asp:DropDownList ID="ddl_ilce" runat="server" CssClass="dropdown">
                <asp:ListItem Text="İlçe Seçiniz" Value="" />
                <asp:ListItem Text="Kadıköy" Value="Kadıköy" />
                <asp:ListItem Text="Beşiktaş" Value="Beşiktaş" />
                <asp:ListItem Text="Üsküdar" Value="Üsküdar" />
                <asp:ListItem Text="Bakırköy" Value="Bakırköy" />
                <asp:ListItem Text="Şişli" Value="Şişli" />
                <asp:ListItem Text="Esenler" Value="Esenler" />
                <asp:ListItem Text="Bağcılar" Value="Bağcılar" />
                <asp:ListItem Text="Çekmeköy" Value="Çekmeköy" />
                <asp:ListItem Text="Sancaktepe" Value="Sancaktepe" />
                <asp:ListItem Text="Maltepe" Value="Maltepe" />
                <asp:ListItem Text="Kartal" Value="Kartal" />
                <asp:ListItem Text="Pendik" Value="Pendik" />
                <asp:ListItem Text="Tuzla" Value="Tuzla" />
            </asp:DropDownList>


            <asp:LinkButton ID="btn_kaydet" runat="server" Text="Kaydet" CssClass="linkbutton" />
        </div>
    </form>
<script>
    const canvas = document.getElementById('matrix-canvas');
    const ctx = canvas.getContext('2d');

    function resizeCanvas() {
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
    }
    resizeCanvas();
    window.addEventListener('resize', resizeCanvas);

    const fontSize = 18;
    const columns = Math.floor(canvas.width / fontSize);
    const drops = Array(columns).fill(1);

    function drawMatrix() {
        ctx.fillStyle = '#fff';
        ctx.fillRect(0, 0, canvas.width, canvas.height);

        ctx.font = fontSize + "px 'Fira Mono', 'Consolas', monospace";
        ctx.fillStyle = 'rgba(0,0,0,0.9)'; 

        for (let i = 0; i < drops.length; i++) {
            const text = Math.random() > 0.5 ? '0' : '1';
            ctx.fillText(text, i * fontSize, drops[i] * fontSize);

            if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
                drops[i] = 0;
            }
            drops[i]++;
        }
    }

    setInterval(drawMatrix, 120);
</script>
</body>
</html>
