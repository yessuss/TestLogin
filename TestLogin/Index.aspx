<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TestLogin.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Content/Login.css" rel="stylesheet" />
    <title>Inicio</title>
</head>
<body>
    <form id="form_index" class="form-control" runat="server">
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 h1"><asp:Label id="lblBienvenida" runat="server" Text=""></asp:Label></span>
                <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesion" Class="btn btn-outline-primary"  OnClick="BtnCerrar_Click"/>
            </div>
        </nav>
        <div class="container">
            <div class="text-center">
             <asp:Label id="lblEncabezado" runat="server" Text="Convertir Numero a Letra" CssClass="h3" ></asp:Label>
            </div>
            <div >
                <br />
                <asp:Label runat="server" ID="lblConvertir" Text="Ingresar Numero:"  ></asp:Label>
                <asp:TextBox runat="server" ID="txtNumero" pattern="[0-9]+" maxlength="10" CssClass=""></asp:TextBox>
                <asp:Button runat="server" ID="btnConvertir" Text="Convertir" OnClick="BtnConvertir_Click"/>
            </div>
            <div class="text-center">
                <br /><br />
                
            </div>
            <div class="card text-center">
                <div class="card-header">
                    Numero en letra
                </div>
                <div class="card-body">
                    <h5 class="card-title"><asp:Label runat="server" ID="lblLetras" CssClass="h3" Text=""></asp:Label></h5>
                </div>
                <div class="card-footer text-muted">
                    <asp:Label runat="server" ID="lblMensaje" Text="" CssClass="alert-success"></asp:Label>
                    <asp:Label runat="server" ID="lblMensajeError" Text="" CssClass="alert-danger"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
