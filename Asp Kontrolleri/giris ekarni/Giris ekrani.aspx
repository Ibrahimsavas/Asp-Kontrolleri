<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris ekrani.aspx.cs" Inherits="Asp_Kontrolleri.Giris_ekrani" %>

<!DOCTYPE html>
<link href="giris ekrani css.css" rel="stylesheet" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="kutu">
            <div>
                <h2>Giriş Yap</h2>
                <p>Giriş yapmak için lütfen bilgilerinizi giriniz</p>
            </div>
            <div>
                <asp:TextBox ID="tb_deneme" runat="server" cssClass="textbox"/>
            </div>
        </div>
    </form>
</body>
</html>
