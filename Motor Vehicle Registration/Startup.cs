using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Motor_Vehicle_Registration.Startup))]
namespace Motor_Vehicle_Registration
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
