<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutComplete.aspx.cs" Inherits="WingtipToys.Checkout.CheckoutComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Compra Completada</h1>
    <p></p>
    <h3>ID de la Transacción de Pago:</h3> <asp:Label ID="TransactionId" runat="server"></asp:Label>
    <p></p>
    <h3>¡Gracias!</h3>
    <p></p>
    <hr />
    <asp:Button ID="Continue" runat="server" Text="Continuar Comprando" OnClick="Continue_Click" />
</asp:Content>