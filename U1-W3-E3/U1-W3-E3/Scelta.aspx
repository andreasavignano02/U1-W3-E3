<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scelta.aspx.cs" Inherits="U1_W3_E3.Scelta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <h1>Scegli un auto:</h1>
                <div class="col-md-6">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem value="0" text=""/>
                        <asp:ListItem value="40000" text="Ford Mustang"/>
                        <asp:ListItem value="200000" text="Ferrari"/>
                    </asp:DropDownList> <br />
                </div>
                <div class="col-md-6" text-align="center">
                    <asp:Image ID="Image1" runat="server" />
                </div>
            </div>
            <div class="row text-end">
                <p font-weight="bold">Prezzo di Partenza:
                <asp:Label ID="PrezzoPartenza" Visible="false" runat="server" Text=""></asp:Label></p>
            </div>
            <hr />
        <div class="row">
            <h2>Optional:</h2>
            <div class="col-md-12">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem Text="Vernice Metallizzata (+ 300)" Value="300"></asp:ListItem>
                    <asp:ListItem Text="Navigatore Satelitare (+ 1000)" Value="1000"></asp:ListItem>
                    <asp:ListItem Text="Fari Led (+ 300)" Value="300"></asp:ListItem>
               </asp:CheckBoxList>
            </div>
        </div>
            <hr />
            <br />
            <div class="row">
                <h2>Anni di Garanzia:</h2>
                <div class="col-md-12">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem value="1" Text="1 Anno"></asp:ListItem>
                        <asp:ListItem value="2" Text="2 Anni"></asp:ListItem>
                        <asp:ListItem value="3" Text="3 Anni"></asp:ListItem>
                        <asp:ListItem value="4" Text="4 Anni"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div>
                <asp:Button CssClass="bg-primary" ID="Preventivo" runat="server" Text="Calcola Preventivo" OnClick="Preventivo_Click" />
            </div>
            <div>
                Totale Macchina: <asp:Label ID="CostoMacchina" runat="server" Text=""></asp:Label> <br />
                Totale Accessori: <asp:Label ID="CostoAccessori" runat="server" Text=""></asp:Label> <br />
                Totale Garanzia: <asp:Label ID="CostoGaranzia" runat="server" Text=""></asp:Label> <br />
                Totale Preventivo: <asp:Label ID="Totale" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
