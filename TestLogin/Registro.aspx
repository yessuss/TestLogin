﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TestLogin.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Content/Login.css" rel="stylesheet" />
    <title>Registro de Usuarios</title>
</head>
<body>
    <div class="wrapper">
        <div class="formcontent">
            <form id="formulario_login" runat="server"> 
                <div class="form-control">
                    <div class="row">
                        <asp:Label class="h2" ID="lblBienvenida" runat="server" Text="Registro de Usuario"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
                        <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblUserError"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                        <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblPassError"></asp:Label>

                    </div>
                    <hr />
                    <div class="row">
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="BtnRegistrar" CssClass="btn btn-primary" runat="server" Text="Registrar" OnClick="BtnRegistrar_Click" />
                        
                            <asp:Button ID="BtnRegresar" CssClass="btn btn-light" runat="server" Text="Regresar" OnClick="BtnRegresar_click" />

                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
