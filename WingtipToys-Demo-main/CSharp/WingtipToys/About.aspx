<%@ Page Title="Acerca de NovaType" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" 
    CodeBehind="About.aspx.cs" Inherits="WingtipToys.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section style="max-width:900px; margin:auto; padding:30px;">
        <h2 style="text-align:center; color:#2b2b2b;">Acerca de NovaType</h2>
        <h3 style="text-align:center; color:#555;">Innovación, diseño y calidad a tu alcance</h3>

        <p style="margin-top:25px; font-size:16px; line-height:1.7;">
            En <strong>NovaType</strong> creemos que la tecnología debe ser práctica, estética y accesible. 
            Nuestra plataforma ofrece una amplia selección de productos modernos y funcionales, 
            pensados para quienes buscan rendimiento y estilo en cada detalle.
        </p>

        <p style="font-size:16px; line-height:1.7;">
            Desde nuestros inicios, nos hemos comprometido a brindar una experiencia de compra 
            confiable, segura y personalizada. Cada producto que ofrecemos pasa por un proceso 
            de selección cuidadoso, asegurando que cumpla con los estándares de calidad 
            que nuestros clientes merecen.
        </p>

        <p style="font-size:16px; line-height:1.7;">
            Más que una tienda, <strong>NovaType</strong> es una comunidad que impulsa la innovación 
            y el diseño. Nos apasiona conectar a las personas con lo último en tecnología, 
            inspirando nuevas formas de crear, trabajar y disfrutar cada día.
        </p>

        <blockquote style="border-left:4px solid #0094ff; padding-left:15px; color:#444; margin-top:25px; font-style:italic;">
            “En NovaType no solo vendemos productos, ofrecemos experiencias.”
        </blockquote>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <h3 style="color:#2b2b2b;">Nuestra misión</h3>
        <p style="font-size:16px; line-height:1.7;">
            Ofrecer productos tecnológicos de alta calidad con un servicio excepcional, 
            fomentando la confianza, la innovación y la satisfacción de cada cliente.
        </p>

        <h3 style="color:#2b2b2b;">Nuestra visión</h3>
        <p style="font-size:16px; line-height:1.7;">
            Ser una marca reconocida por la excelencia, la innovación constante y el compromiso 
            con la mejora continua, posicionándonos como líderes en soluciones tecnológicas 
            modernas y accesibles.
        </p>

        <h3 style="color:#2b2b2b;">Nuestros valores</h3>
        <ul style="font-size:16px; line-height:1.7; margin-left:25px;">
            <li><strong>Innovación:</strong> Nos mantenemos a la vanguardia de las tendencias tecnológicas.</li>
            <li><strong>Calidad:</strong> Garantizamos productos confiables y duraderos.</li>
            <li><strong>Compromiso:</strong> Atendemos las necesidades de nuestros clientes con dedicación.</li>
            <li><strong>Confianza:</strong> Cada compra en NovaType es segura y transparente.</li>
            <li><strong>Pasión:</strong> Amamos lo que hacemos y lo reflejamos en cada detalle.</li>
        </ul>

        <hr style="margin:40px 0; border:0; border-top:1px solid #ccc;" />

        <p style="text-align:center; font-size:15px; color:#777;">
            &copy; <%: DateTime.Now.Year %> NovaType. Todos los derechos reservados.
        </p>
    </section>
</asp:Content>