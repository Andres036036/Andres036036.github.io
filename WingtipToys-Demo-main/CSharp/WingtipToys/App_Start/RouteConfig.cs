using System.Web.Routing;

namespace WingtipToys
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            // ❌ NO usar FriendlyUrls
            // routes.EnableFriendlyUrls();  // Debe estar desactivado

            // Rutas necesarias para Wingtip Toys
            routes.MapPageRoute(
                "ProductList",
                "ProductList.aspx",
                "~/ProductList.aspx"
            );

            routes.MapPageRoute(
                "ProductDetails",
                "ProductDetails.aspx",
                "~/ProductDetails.aspx"
            );

            routes.MapPageRoute(
                "AddToCart",
                "AddToCart.aspx",
                "~/AddToCart.aspx"
            );

            // Opcional: About y Contact
            routes.MapPageRoute(
                "About",
                "About.aspx",
                "~/About.aspx"
            );

            routes.MapPageRoute(
                "Contact",
                "Contact.aspx",
                "~/Contact.aspx"
            );
        }
    }
}