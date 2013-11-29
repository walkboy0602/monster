using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(iShopping.Startup))]
namespace iShopping
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
