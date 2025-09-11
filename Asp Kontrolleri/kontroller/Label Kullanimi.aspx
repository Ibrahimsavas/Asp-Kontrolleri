<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Label Kullanimi.aspx.cs" Inherits="Asp_Kontrolleri.Label_Kullanimi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Label programlanabilir dinamik yazı yazdırma aracıdır. Şu an okuduğunuz bu yazı asp label olmadığı için değiştirilemez.
            <br />
            <asp:Label ID="lbl_mesaj" runat="server">asp:Label dinamik(değiştirilebilir) yazı aracıdır</asp:Label>
            <br />
            <asp:Button ID="btn_labeltikla" Text="Bana Tıkla" runat="server" onclick="btn_labeltikla_Click" />
        </div>
    </form>
</body>
</html>
