<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfiles.aspx.cs" Inherits="HACKCDMX.Perfiles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 524px;
        }
    </style>
    <link href="LoginCss.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">

        <div>
            <table style="width: 100%;" aria-orientation="horizontal">
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>
                        <br />
                        <br />
                        <br />
                        <br />
                       <center> <asp:Label ID="Label1" runat="server" Text="Selecciona Perfil" Font-Bold="True" Font-Names="Franklin Gothic Book" Font-Size="50px" ForeColor="#E2F033"></asp:Label></center>

                    </td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>


                </tr>

                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp
                       <br />
                        <br />
               

                        
                    </td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td align="center">
                        <div>
                            <asp:Image ID="Image1" runat="server" Height="340px" ImageUrl="~/Imagenes/Perfiles con Fondos-02.png" Width="340px" /></div>
                    </td>

                    <td align="center">
                        <asp:Image ID="Image2" runat="server" Height="340px" ImageUrl="~/Imagenes/Perfiles con Fondos-01-01.png" Width="340px" /></td>
                    <td align="center">
                        <asp:Image ID="Image3" runat="server" Height="340px" ImageUrl="~/Imagenes/Perfiles con Fondos-03.png" Width="340px" /></td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>
                        <center><asp:Button ID="Button1" runat="server" Text="Ciclista" CssClass="myButton" OnClick="Button1_Click" /></center>
                    </td>
                    <td><center><asp:Button ID="Button2" runat="server" Text="Peatón" CssClass="myButton" OnClick="Button2_Click" /></center></td>
                    <td><center><asp:Button ID="Button3" runat="server" Text="Automovilista" CssClass="myButton" OnClick="Button3_Click" /></center></td>
                    <td></td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
