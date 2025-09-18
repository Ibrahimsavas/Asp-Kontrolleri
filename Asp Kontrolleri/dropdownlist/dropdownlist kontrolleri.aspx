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
        </div>
    </form>
</body>
</html>
