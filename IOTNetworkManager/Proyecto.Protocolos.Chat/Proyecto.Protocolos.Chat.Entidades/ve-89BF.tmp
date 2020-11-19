using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using Microsoft.Win32;

namespace Proyecto.Protocolos.Chat.Entidades
{
    [Serializable]
    public class InformacionBasica
    {
        string tamañomonitor;
        public string TamañoMonitor
        {
            get {
                return this.tamañomonitor;
            }
            set {
                this.tamañomonitor = value;
            }
        }
        string direcotriosistema;
        public string Direcotriosistema
        {
            get
            {
                return this.direcotriosistema;
            }
            set
            {
                this.direcotriosistema = value;
            }
        }
        string nombremaquina;
        public string Nombremaquina
        {
            get
            {
                return this.nombremaquina;
            }
            set
            {
                this.nombremaquina = value;
            }
        }
        long tamañomemoria;
        public long Tamañomemoria
        {
            get
            {
                return this.tamañomemoria;
            }
            set
            {
                this.tamañomemoria = value;
            }
        }
        int minutosactiva;
        public int Minutosactiva
        {
            get
            {
                return this.minutosactiva;
            }
            set
            {
                this.minutosactiva = value;
            }
        }
        string opversion;
        public string Opversion
        {
            get
            {
                return this.opversion;
            }
            set
            {
                this.opversion = value;
            }
        }
        string version;
        public string Version
        {
            get
            {
                return this.version;
            }
            set
            {
                this.version = value;
            }
        }
        string nombreusuario;
        public string Nombreusuario
        {
            get
            {
                return this.nombreusuario;
            }
            set
            {
                this.nombreusuario = value;
            }
        }
        string nombreusuariodomino;
        public string Nombreusuariodomino
        {
            get
            {
                return this.nombreusuariodomino;
            }
            set
            {
                this.nombreusuariodomino = value;
            }
        }
        string tipoprocesador;
        public string Tipoprocesador
        {
            get
            {
                return this.tipoprocesador;
            }
            set
            {
                this.tipoprocesador = value;
            }
        }
        string nombreservipack;
        public string Nombreservipack
        {
            get
            {
                return this.nombreservipack;
            }
            set
            {
                this.nombreservipack = value;
            }
        }
        string plataforma;
        public string Plataforma
        {
            get
            {
                return this.plataforma;
            }
            set
            {
                this.plataforma = value;
            }
        }
        public InformacionBasica(string tamañomonitor,string direcotriosistema,string nombremaquina,long tamañomemoria,
        int minutosactiva,string opversion,string version,string nombreusuario,string nombreusuariodomino, string tipoprocesador,string nombreservipack,string plataforma)
        {
            this.direcotriosistema = direcotriosistema;
            this.minutosactiva = minutosactiva;
            this.nombremaquina = nombremaquina;
            this.nombreservipack = nombreservipack;
            this.nombreusuario = nombreusuario;
            this.nombreusuariodomino = nombreusuariodomino;
            this.opversion = opversion;
            this.plataforma = plataforma;
            this.tamañomemoria = tamañomemoria;
            this.tamañomonitor = tamañomonitor;
            this.version = version;
            this.tipoprocesador = tipoprocesador;
        }

        public static InformacionBasica GetInformacion(string monitor)
        {
            string tamañomonitor = monitor;
            string direcotriosistema = System.Environment.SystemDirectory;
            string nombremaquina= System.Environment.MachineName;
            long tamañomemoria = System.Environment.WorkingSet;
            int q = System.Environment.TickCount;
            int w = (q / 1000) / 60;
            int minutosactiva = w;
            string opversion = System.Environment.OSVersion.ToString();
            string nombreservipack = System.Environment.OSVersion.ServicePack;
            string plataforma = System.Environment.OSVersion.Platform.ToString();
            string version = System.Environment.Version.ToString();
            string nombreusuario = System.Environment.UserName;
            string nombreusuariodomino = System.Environment.UserDomainName;
            RegistryKey Rkey = Registry.LocalMachine;
            Rkey = Rkey.OpenSubKey("HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0");
            string tipoprocesador = (string)Rkey.GetValue("ProcessorNameString");
            return new InformacionBasica(tamañomonitor, direcotriosistema, nombremaquina, tamañomemoria, minutosactiva, opversion,
                version, nombreusuario, nombreusuariodomino, tipoprocesador, nombreservipack, plataforma);
        }
    }
}
