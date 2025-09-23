<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="isimsoyisimellemeli.aspx.cs" Inherits="Asp_Kontrolleri.Check_ve_Rqadiobutton.isimsoyisimellemeli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Screen</title>
    <link rel="stylesheet" type="text/css" href="isimsoyisim.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="tb_isim">İsim:</label>
            <asp:TextBox ID="tb_isim" runat="server" />
        </div>
        <div>
            <label for="tb_soyisim">Soyisim:</label>
            <asp:TextBox ID="tb_soyisim" runat="server" />
        </div>
        <div>
            <label for="tb_email">Email:</label>
            <asp:TextBox ID="tb_email" runat="server" TextMode="Email" />
        </div>
        <div>
            <label>Medeni Durum:</label>
            <asp:RadioButton ID="rb_bekar" runat="server" GroupName="Medeni" Text="Bekar" />
            <asp:RadioButton ID="rb_evli" runat="server" GroupName="Medeni" Text="Evli" />
        </div>
        <div>
            <label for="rb_yas">Yaş:</label>
            <asp:TextBox ID="tb_yas" runat="server" TextMode="Number" />
        </div>
        <div>
            <asp:Button ID="btn_kaydet" runat="server" Text="Kaydet"/>
        </div>
    </form>
</body>
</html>
