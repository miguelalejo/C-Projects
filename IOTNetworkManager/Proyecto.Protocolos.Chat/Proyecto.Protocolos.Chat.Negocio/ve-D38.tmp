using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Proyecto.Protocolos.Chat.Entidades;
using Proyecto.Protocolos.Chat.AccesoDatos;

namespace Proyecto.Protocolos.Chat.Negocio
{
    public class Ngrupo
    {
        public static void Guardargrupo(grupo un_grupo)
        {
            Basegrupo basegru = new Basegrupo();
            basegru.Guardargrupo(un_grupo);

            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }

        public static void Modificargrupo(grupo un_grupo)
        {
            Basegrupo basegru = new Basegrupo();
            basegru.Modificargrupo(un_grupo);

            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }

        public static void Eliminargrupo(grupo un_grupo)
        {
            Basegrupo basegru = new Basegrupo();
            basegru.Eliminargrupo(un_grupo.idGrupo);

            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }

        public static grupo[] BuscarRegistros()
        {
             Basegrupo basegru = new Basegrupo();
             return basegru.BuscarRegistrosGrupo();
            
        }
       
    }
}
