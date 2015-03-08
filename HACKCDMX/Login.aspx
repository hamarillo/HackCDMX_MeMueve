<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HACKCDMX.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 524px;
        }
    </style>
    <link href="LoginCss.css" rel="stylesheet" type="text/css"/>
    
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <table style="width: 100%;" aria-orientation="horizontal">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                       &nbsp; 
                        <br />
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="314px" ImageUrl="~/Imagenes/Me Mueve 1 (1).png" Width="329px" />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="right" class="auto-style1">
                        <div class="yourFontName">
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario: " Font-Bold="True" Font-Names="Franklin Gothic Book"></asp:Label>
                            </div>
                    </td>
                    <td>

                        
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="field" Width="300px"></asp:TextBox>
                        
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    
                    <td>&nbsp;</td>
                    <td align="right" class="auto-style1">
                     <div class="yourFontName">
                            <asp:Label ID="lblContra" runat="server" Text="Clave: " Font-Bold="True" Font-Names="Franklin Gothic Book"  ></asp:Label>

                        </div>

                    </td>
                    <td>
                        <asp:TextBox ID="txtContraseña" runat="server" CssClass="field" Width="300px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                      <td class="auto-style1">&nbsp;</td>
                      <td>
                          <br />
                          &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp<asp:Button ID="btnAcceder" runat="server" Text="Acceder" OnClick="btnAcceder_Click" CssClass="myButton" Font-Names="Franklin Gothic Book" Font-Size="Large" />
                    </td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
