<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist kontrolleri.aspx.cs" Inherits="Asp_Kontrolleri.dropdownlist.dropdownlist_kontrolleri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-section">
                <label>Sorumlu Seçiniz</label>
                <asp:DropDownList ID="ddl_sorumlu" runat="server" CssClass="dropdown" OnSelectedIndexChanged="ddl_sorumlu_SelectedIndexChanged">
                    <asp:ListItem Text="Poyraz Salih" Value="S10"></asp:ListItem>
                    <asp:ListItem Text="Cemrenaz Türkenoğlu" Value="S15"></asp:ListItem>
                    <asp:ListItem Text="Nisa Nur Uçar" Value="S22"></asp:ListItem>
                    <asp:ListItem Text="Kaan Aydıngör" Value="S14"></asp:ListItem>
                    <asp:ListItem Text="Alperen Efe" Value="S09"></asp:ListItem>
                    <asp:ListItem Text="Arda Çırak" Value="S16"></asp:ListItem>
                    <asp:ListItem Text="İbrahim Savaş" Value="S18"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-section">
                <label>Başkan Seçiniz</label>
            </div>
            <div>
                <label>Eklenecek veri</label>
                <asp:TextBox ID="tb_eklenecek" runat="server"></asp:TextBox>
                <asp:Button ID="btn_eklenecek" runat="server" Text="Ekle" OnClick="btn_eklenecek_Click" />
                <br />
                <asp:DropDownList ID="ddl_eklenenler" runat="server"></asp:DropDownList>
                <asp:Button ID="btn_yazdir" runat="server" Text="Yazdır" OnClick="btn_yazdir_Click" />
                <br />
                <asp:Label ID="lbl_secilmis" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
