using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CCoworking.Startup))]
namespace CCoworking
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
