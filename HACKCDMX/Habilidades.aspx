<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Habilidades.aspx.cs" Inherits="HACKCDMX.Habilidades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginCss.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 237px;
        }

        .auto-style2 {
            width: 271px;
        }
        .auto-style3 {
            width: 195px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;" aria-orientation="horizontal">
            <tr>
                <td>
                     <center><asp:Label ID="Label1" runat="server" Text="Habilidades" Font-Bold="True" Font-Names="Franklin Gothic Book" Font-Size="50px" ForeColor="#E2F033"></asp:Label>
                    
                    <center>
                    
                    </center>
                </td>
            </tr>
        </table>

        <div>
            <table style="width: 100%;" aria-orientation="horizontal">
                <tr>
                   
                    <td> <br/>
                        <br/>
                        <br/>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Imagenes/Progreso-08.png" Width="140px" Height="41px" />&nbsp &nbsp &nbsp &nbsp
                   <asp:Image ID="Image6" runat="server" ImageUrl="~/Imagenes/Barra Progreso-02.png" Width="201px" Height="41px" />

                    </td>


                </tr>
            </table>
            <table style="width: 100%;" aria-orientation="horizontal">





                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td class="auto-style3">&nbsp
                       
                                       <br />
                        <br />
                                       <br />
                        <br />


                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td align="center" class="auto-style3">
                        <div>
                           
                            <asp:ImageButton ID="Image1" runat="server" Height="120px" ImageUrl="~/Imagenes/Habilidades-06-06 (1).png" Width="120px" OnClick="Image1_Click" />
                        </div>
                    </td>

                    <td align="center" class="auto-style1">
                        <asp:ImageButton ID="Image2" runat="server" Height="120px" ImageUrl="~/Imagenes/Habilidades-07.png" Width="120px" OnClick="Image2_Click" /></td>
                    <td align="center">
                        <asp:ImageButton ID="Image3" runat="server" Height="120px" ImageUrl="~/Imagenes/Habilidades-08.png" Width="120px" OnClick="Image3_Click" /></td>
                    <td align="center" class="auto-style2">
                        <asp:ImageButton ID="Image4" runat="server" Height="120px" ImageUrl="~/Imagenes/Habilidades-09.png" Width="120px" OnClick="Image4_Click" /></td>
                    <td align="center"><asp:ImageButton ID="ImageButton1" runat="server" Height="120px" ImageUrl="~/Imagenes/Habilidades Seguridad-05.png" Width="120px" OnClick="ImageButton1_Click" /></td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                    <td class="auto-style3">
                        <center><asp:Button ID="Button1" runat="server" Text="Señalamientos" CssClass="myButton" /></center>
                    </td>
                    <td class="auto-style1">
                        <center><asp:Button ID="Button2" runat="server" Text="Destreza" CssClass="myButton" /></center>
                    </td>
                    <td>
                        <center><asp:Button ID="Button3" runat="server" Text="Ambientales" CssClass="myButton" /></center>
                    </td>
                    <td class="auto-style2">
                        <center><asp:Button ID="Button4" runat="server" Text="Emergencia" CssClass="myButton" /></center>
                    </td>
                    <td><center><asp:Button ID="Button5" runat="server" Text="Seguridad" CssClass="myButton" /></center></td>
                    <td>&nbsp</td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
        </div>

        <table style="width: 100%;" aria-orientation="horizontal">
           <tr> <td>&nbsp</td></tr>
             <tr>
                <td>&nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td>
                <td align="justify">
                    &nbsp &nbsp
                    <asp:Label ID="label_info" runat="server" Width="100%" Font-Bold="True" Font-Names="Franklin Gothic Book"></asp:Label>
                </td>
                  <td>&nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp </td>
            </tr>
        </table>
    </form>
</body>
</html>
