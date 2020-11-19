using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Proyecto.Protocolos.Chat.Entidades;
using Proyecto.Protocolos.Chat.AccesoDatos;

namespace Proyecto.Protocolos.Chat.Negocio
{
    class Nperfil
    {
        public static void Guardarperfil(perfil un_perfil)
        {
            Baseperfil basep=new Baseperfil();
            basep.Guardarperfil(un_perfil);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Modificarperfil(perfil un_perfil)
        {
            Baseperfil basep = new Baseperfil(); 
            basep.Modificarperfil(un_perfil);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Eliminarperfil(perfil un_perfil)
        {
            Baseperfil basep=new Baseperfil();
            basep.Eliminarperfil(un_perfil.idPerfil);
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
        public static void Registrosperfil()
        {
            Baseperfil basep=new Baseperfil();
            basep.Registrosperfil();
            // AdministradorCorreo.EnviarCorreoCreacionCuenta(usuario.Nombres, usuario.Clave, usuario.Correo);
        }
    }
}
