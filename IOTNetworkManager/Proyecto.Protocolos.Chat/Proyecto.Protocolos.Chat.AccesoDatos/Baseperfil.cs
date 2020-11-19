using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	public class Baseperfil: BaseConector
	{

		public Baseperfil(MySqlConnection una_conexion):base(una_conexion)
		{
		}
        public Baseperfil()
            : base()
        {
        }

		public void Guardarperfil(perfil _perfil)
		{

			this.Comando ("Insert Into perfil(idPerfil,NombrePerfil)values("+_perfil.idPerfil.ToString()+","+"'"+_perfil.NombrePerfil.ToString()+"'"+")");
		}

		public void Modificarperfil(perfil _perfil)
		{

			this.Comando ("Update perfil Set idPerfil = "+_perfil.idPerfil.ToString()+",NombrePerfil = "+"'"+_perfil.NombrePerfil.ToString()+"'"+" where idPerfil = "+_perfil.idPerfil.ToString() );
		}

		public void Eliminarperfil( int idPerfil )
		{

			this.Comando ("Delete From perfil  where idPerfil = "+idPerfil.ToString() );
		}

		public int NumeroRegistrosperfil ()
		{

			this.Adaptador ("Select Count(*) From perfil ");
			if (this.Tabla.Rows.Count > 0)
				return (int)this.Tabla.Rows[0].ItemArray[0];
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public DataTable BuscarRegistrosperfil_idPerfil (int idPerfil)
		{

			this.Adaptador ("Select idPerfil,NombrePerfil From perfil  where idPerfil = "+idPerfil.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosperfil_NombrePerfil (String NombrePerfil)
		{

			this.Adaptador ("Select idPerfil,NombrePerfil From perfil  where NombrePerfil = "+"'"+NombrePerfil.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable Registrosperfil ()
		{

			this.Adaptador ("Select idPerfil,NombrePerfil From perfil");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public perfil[]  BuscarRegistros_idPerfil (int idPerfil)
		{

			DataTable tabla = this.BuscarRegistrosperfil_idPerfil (idPerfil);
			perfil[] lista = new perfil[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=perfil.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

		public perfil[]  BuscarRegistros_NombrePerfil (String NombrePerfil)
		{

			DataTable tabla = this.BuscarRegistrosperfil_NombrePerfil (NombrePerfil);
			perfil[] lista = new perfil[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				 lista[k]=perfil.ParseOjeto(ItemArray);
				k++;
			}
			return lista;
		}

	}
}
