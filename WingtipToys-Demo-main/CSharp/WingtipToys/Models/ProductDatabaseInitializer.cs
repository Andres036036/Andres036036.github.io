using System.Collections.Generic;
using System.Data.Entity;

namespace WingtipToys.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Audifonos y Speakers"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Teclados y Smart Pen"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Cases y Accesorios"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Power Bank"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Relojes y Smart Bands"
                },
            };

            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product> {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Haylou MoriPods ANC",
                    Description = "Audifonos Bluetooth Contenido de la Caja: 2 x Auriculares Haylou" +
                                  "MoriPods(Izquierdo y Derecho) 1 X Caja de carga 1 X Cable de carga 3 X"+
                                  "Pares de puntas auricular (S/M/L) 1 X Manual de usuario",
                    ImagePath="Haylou Moripods.png",
                    UnitPrice = 22.50,
                    CategoryID = 1
               },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Haylou S30",
                    Description = "Audifonos Bluetooth Over-ear Noise Cancellation",
                    ImagePath="Haylou S30.png",
                    UnitPrice = 15.95,
                     CategoryID = 1
               },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Redmi Buds 6",
                    Description = "Redmi Buds 6",
                    ImagePath="Redmi Buds 6.png",
                    UnitPrice = 32.99,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Redmi Buds 6 Lite",
                    Description = "Redmi Buds 6 Lite",
                    ImagePath="Redmi Buds 6 Lite.png",
                    UnitPrice = 8.95,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Redmi Buds 6 Play",
                    Description = "Redmi Buds 6 Play, Hasta 36 horas de reproducción continua con el estuche" +
                                  "de carga., Driver dinámico de 10mm para un sonido potente., Reducción de" +
                                  "ruido con IA para llamadas claras., Hasta 3 horas de música con solo 10" +
                                  "minutos de carga",
                    ImagePath="Redmi Buds 6 Play.png",
                    UnitPrice = 34.95,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Xiaomi Open Wear",
                    Description = "Xiaomi Open Wear",
                    ImagePath="Xiaomi Open Wear.png",
                    UnitPrice = 95.00,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 7,
                    ProductName = "Teclado Bluetooth Mini para Tablet",
                    Description = "Teclado Bluetooth Mini para Tablet",
                    ImagePath="Teclado Bluetooth Mini para Tablet.png",
                    UnitPrice = 4.95,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Redmi Smart Pen",
                    Description = "El primer lápiz activo de Redmi, Escritura fluida, comparable a la de un lápiz" +
                    "real., A primera vista, el lápiz presenta un elegante color blanco, pero al+" +
                    "examinarlo de cerca, descubrirás líneas finas que le dan una apariencia" +
                    "discreta y elegante. Con un agarre ergonómico y una punta que se abre al" +
                    "girar, el lápiz ofrece una experiencia de escritura fluida que se asemeja a la de" +
                    "un lápiz real.",
                    ImagePath="Redmi Smart Pen.png",
                    UnitPrice = 2.95,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Estuche Smart Case Redmi Pad SE",
                    Description = "Estuche Smart Case con espacio para lapiz y teclado Bluetooth Redmi Pad SE",
                    ImagePath="Estuche Smart Case Redmi Pad SE.png",
                    UnitPrice = 32.95,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "Xiaomi Power Bank 3",
                    Description = "Xiaomi Power Bank 3 20.000 mAh es una de las baterías externas más" +
                    "populares de la marca, conocida por su relación calidad-precio.",
                    ImagePath="Xiaomi Power Bank 3.png",
                    UnitPrice = 15.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 11,
                    ProductName = "Xiaomi Power Bank 18W",
                    Description = "El Xiaomi Power Bank 20,000 mAh 18W es un cargador portátil popular por" +
                    "su capacidad, diseño y funcionalidad. ",
                    ImagePath="Xiaomi Power Bank 18W.png",
                    UnitPrice = 26.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 12,
                    ProductName = "Xiaomi Power Bank 10.000 mAh",
                    Description = "*Apta para viajar en avión: Cumple con estándares internacionales de aviación," +
                    "clasificada como batería portátil de menos de 100Wh.",
                    ImagePath="Xiaomi Power Bank 10.000 mAh.png",
                    UnitPrice = 29.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 13,
                    ProductName = "Xiaomi Power Bank 18W",
                    Description = "Power Bank XIAOMI 10.000mAh Redmi 18w carga rápida Negro, Para los" +
                                  "amantes de los smartphones que les encanta estar conectados.",
                    ImagePath="Xiaomi Power Bank 18W2.png",
                    UnitPrice = 95.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 14,
                    ProductName = "Redmi Watch 5 Active",
                    Description = "Redmi Watch 5 Active",
                    ImagePath="Redmi Watch 5 Active.png",
                    UnitPrice = 4.95,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 15,
                    ProductName = "Xiaomi Watch 5",
                    Description = "XIAOMI MIWATCH 5 La memoria disponible y la capacidad de" +
                    "almacenamiento reales pueden variar.",
                    ImagePath="Xiaomi Watch 5.png",
                    UnitPrice = 42.95,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 16,
                    ProductName = "Redmi Watch 5 Lite",
                    Description = "Redmi Watch 5 Lite, Contenido del paquete Redmi Watch 5 Lite / Cable de" +
                    "carga magnética / Manual del usuario",
                    ImagePath="Redmi Watch 5 Lite.png",
                    UnitPrice = 122.95,
                    CategoryID = 5
                }
            };

            return products;
        }
    }
}