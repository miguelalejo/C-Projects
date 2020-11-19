using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Proyecto.Protocolos.Chat.UI.WinFormCliente
{
    public class ConfiguracionEquipo
    {
        public static void ConfigurarRegistro(string key,string valor)
        {
            ConfiguracionEquipo.BorrarRegistro(key);
            ConfiguracionEquipo.AñadirRegistro(key, valor);
        }
        public static void AñadirRegistro(string key, string valor)
        {
            Configuration cn = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            cn.AppSettings.Settings.Add(key, valor);
            cn.AppSettings.SectionInformation.ForceSave = true;
            cn.Save(ConfigurationSaveMode.Full);
            ConfigurationManager.RefreshSection("appSettings");
        }
        public static void BorrarRegistro(string key)
        {
            Configuration cn = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            cn.AppSettings.Settings.Remove(key);
            cn.AppSettings.SectionInformation.ForceSave = true;
            cn.Save(ConfigurationSaveMode.Full);
            ConfigurationManager.RefreshSection("appSettings");
        }
    }
}
