<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Button Kullanimi.aspx.cs" Inherits="Asp_Kontrolleri.Button_Kullanimi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Buton Kullanımı</title>
    <style>
        .yakisikliButon {
            background-color: lightgreen; /*Arkaplan Rengi*/
            color: white; /*Yazı Rengi*/
            font-weight: 900; /*Yazı Kalınlığı*/
            font-size: 15pt; /*Yazı Boyutu*/
            padding: 10px; /*Buton İç Boşluğu (padding:üsta-alt-sağ-sol)*/
            border-radius: 5px; /*Buton Çerçeve Köşe Yuvarlama*/
            border: 1px solid; /*Buton Çerçevesi*/
            cursor: pointer; /*Fare İmleci Buton Üzerine Gelince Değişir*/
        }
            .yakisikliButon:hover {
                background-color: green; /*İmleç üzerinde iken rengi değişir*/
            }
    </style>
</head>
<body>
    <!-- ASP.Net kontrollerinin çalışabilmesi için form etiketinin içinde olması gerekir -->
    <form id="form1" runat="server">
        <div>
            <!-- Her ASP.Net kontrolü ID'ye sahip olmak zorundadır -->
            <!-- Her ASP.Net kontrolü runat attributuna sahip olmak zorundadır -->
            <asp:Button ID="btn_tikla" Text="Tıkla" runat="server" CssClass="yakisikliButon" OnClick="btn_tikla_Click" />
            <br />
            <asp:LinkButton ID="lbtn_tikla" Text="Link görünümlü buton" runat="server"></asp:LinkButton>
        </div>
    </form>
</body>
</html>
