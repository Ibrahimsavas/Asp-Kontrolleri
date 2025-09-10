<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Textbox Kullanimi.aspx.cs" Inherits="Asp_Kontrolleri.Textbox_Kullanimi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Textbox metinsel veri girişi için kullanılan kontroldür.
            <br />
            İçine yazılan veri kontroladi.text özelliği ile alınır.
            <br />
            <asp:TextBox ID="tb_metin" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_titleDeğiştir" runat="server" Text="Title değiştir" OnClick="btn_titleDeğiştir_Click" />
        </div>
    </form>
</body>
</html>
