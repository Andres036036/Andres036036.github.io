<%@ Page Title="Productos - NovaType" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs" Inherits="WingtipToys.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section style="max-width:1100px; margin:auto; padding:30px;">
        <h1 style="text-align:center; color:#2b2b2b;">Nuestros Productos</h1>
        <h2 style="text-align:center; color:#555;">Tecnología moderna para todos los gustos</h2>

        <p style="margin-top:25px; font-size:16px; line-height:1.7;">
            En <strong>NovaType</strong> encontrarás una amplia selección de productos tecnológicos diseñados
            para mejorar tu día a día. Desde accesorios inteligentes y periféricos modernos, hasta soluciones
            que combinan innovación, estilo y rendimiento. Descubre nuestras categorías y elige lo que mejor
            se adapte a ti.
        </p>

        <hr style="margin:30px 0; border:0; border-top:1px solid #ccc;" />

        <div style="margin-bottom:25px; text-align:center;">
            <span style="font-size:15px; color:#777;">Explora nuestras categorías:</span><br />
            <span style="display:inline-block; margin-top:10px;">
                <a href="ProductList.aspx?category=Audio" style="margin:0 10px; color:#0094ff; text-decoration:none;">Audio y Sonido</a> |
                <a href="ProductList.aspx?category=Teclados" style="margin:0 10px; color:#0094ff; text-decoration:none;">Teclados y Smart Pen</a> |
                <a href="ProductList.aspx?category=Accesorios" style="margin:0 10px; color:#0094ff; text-decoration:none;">Cases y Accesorios</a> |
                <a href="ProductList.aspx?category=Power" style="margin:0 10px; color:#0094ff; text-decoration:none;">Power Bank</a> |
                <a href="ProductList.aspx?category=Wearables" style="margin:0 10px; color:#0094ff; text-decoration:none;">Relojes y Smart Bands</a>
            </span>
        </div>

        <asp:ListView ID="productList" runat="server"
            DataKeyNames="ProductID" GroupItemCount="4"
            ItemType="WingtipToys.Models.Product" SelectMethod="GetProducts">

            <EmptyDataTemplate>
                <div style="text-align:center; font-size:16px; color:#777; margin:50px 0;">
                    No se encontraron productos disponibles.
                </div>
            </EmptyDataTemplate>

            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>

            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>

            <ItemTemplate>
                <td runat="server" style="padding:15px; text-align:center; vertical-align:top;">
                    <div style="border:1px solid #ddd; border-radius:10px; padding:15px; background:#fafafa; transition:0.3s; box-shadow:0 2px 4px rgba(0,0,0,0.1);">
                        <a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                            <img src="/Catalog/Images/Thumbs/<%#:Item.ImagePath%>" width="160" height="120"
                                 alt="<%#: Item.ProductName %>" style="border-radius:8px; border:1px solid #ccc;" />
                        </a>
                        <h4 style="margin-top:10px; color:#333;"><%#: Item.ProductName %></h4>
                        <p style="color:#0094ff; font-weight:bold; margin:5px 0;">
                            <%#: String.Format("{0:c}", Item.UnitPrice) %>
                        </p>
                        <a href='<%# "AddToCart.aspx?productID=" + Item.ProductID %>'
                        style="display:inline-block; margin-top:8px; background:#0094ff; color:white;
                        padding:8px 15px; border-radius:20px; text-decoration:none;
                        font-size:14px; font-weight:bold;">
                        Agregar al carrito
                        </a>

                    </div>
                </td>
            </ItemTemplate>

            <LayoutTemplate>
                <table style="width:100%; text-align:center;">
                    <tbody>
                        <tr>
                            <td>
                                <table id="groupPlaceholderContainer" runat="server" style="width:100%;">
                                    <tr id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </LayoutTemplate>
        </asp:ListView>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <p style="text-align:center; font-size:15px; color:#777;">
            &copy; <%: DateTime.Now.Year %> NovaType — Innovación a tu alcance.
        </p>
    </section>

</asp:Content>