using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.AccesoDatos
{
	public class Baseequipo_has_mensaje: BaseConector
	{
		private Basemensaje basemensaje;
		private Baseequipo baseequipo;

		public Basemensaje Basemensaje
		{
			get {return  basemensaje;}
			set { basemensaje=value; }
		}

		public Baseequipo Baseequipo
		{
			get {return  baseequipo;}
			set { baseequipo=value; }
		}

		public Baseequipo_has_mensaje(MySqlConnection una_conexion):base(una_conexion)
		{
			this.basemensaje= new Basemensaje(una_conexion);
			this.baseequipo= new Baseequipo(una_conexion);
		}
        public Baseequipo_has_mensaje()
            : base()
        {
            this.basemensaje = new Basemensaje();
            this.baseequipo = new Baseequipo();
        }

		public void Guardarequipo_has_mensaje(equipo_has_mensaje _equipo_has_mensaje)
		{

			this.Comando ("Insert Into equipo_has_mensaje(idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat)values("+_equipo_has_mensaje.mensaje.idMensaje.ToString()+","+_equipo_has_mensaje.equipo.idEquipo.ToString()+","+"'"+_equipo_has_mensaje.fechaInicioUChat.ToString()+"'"+","+"'"+_equipo_has_mensaje.horaInicioUchat.ToString()+"'"+")");
		}

		public void Modificarequipo_has_mensaje(equipo_has_mensaje _equipo_has_mensaje)
		{

			this.Comando ("Update equipo_has_mensaje Set idequipo_has_mensaje = "+_equipo_has_mensaje.idequipo_has_mensaje.ToString()+",idMensaje = "+_equipo_has_mensaje.mensaje.idMensaje.ToString()+",idEquipo = "+_equipo_has_mensaje.equipo.idEquipo.ToString()+",fechaInicioUChat = "+"'"+_equipo_has_mensaje.fechaInicioUChat.ToString()+"'"+",horaInicioUchat = "+"'"+_equipo_has_mensaje.horaInicioUchat.ToString()+"'"+" where idequipo_has_mensaje = "+_equipo_has_mensaje.idequipo_has_mensaje.ToString() );
		}

		public void Eliminarequipo_has_mensaje( int idequipo_has_mensaje )
		{

			this.Comando ("Delete From equipo_has_mensaje  where idequipo_has_mensaje = "+idequipo_has_mensaje.ToString() );
		}

		public int NumeroRegistrosequipo_has_mensaje ()
		{

			this.Adaptador ("Select Count(*) From equipo_has_mensaje ");
			if (this.Tabla.Rows.Count > 0)
				return (int)this.Tabla.Rows[0].ItemArray[0];
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public DataTable BuscarRegistrosequipo_has_mensaje_idequipo_has_mensaje (int idequipo_has_mensaje)
		{

			this.Adaptador ("Select idequipo_has_mensaje,idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat From equipo_has_mensaje  where idequipo_has_mensaje = "+idequipo_has_mensaje.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_has_mensaje_idMensaje (int idMensaje)
		{

			this.Adaptador ("Select idequipo_has_mensaje,idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat From equipo_has_mensaje  where idMensaje = "+idMensaje.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_has_mensaje_idEquipo (int idEquipo)
		{

			this.Adaptador ("Select idequipo_has_mensaje,idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat From equipo_has_mensaje  where idEquipo = "+idEquipo.ToString() );
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_has_mensaje_fechaInicioUChat (DateTime fechaInicioUChat)
		{

			this.Adaptador ("Select idequipo_has_mensaje,idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat From equipo_has_mensaje  where fechaInicioUChat = "+"'"+fechaInicioUChat.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable BuscarRegistrosequipo_has_mensaje_horaInicioUchat (DateTime horaInicioUchat)
		{

			this.Adaptador ("Select idequipo_has_mensaje,idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat From equipo_has_mensaje  where horaInicioUchat = "+"'"+horaInicioUchat.ToString() +"'");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");
		}

		public DataTable Registrosequipo_has_mensaje ()
		{

			this.Adaptador ("Select idequipo_has_mensaje,idMensaje,idEquipo,fechaInicioUChat,horaInicioUchat From equipo_has_mensaje");
			if (this.Tabla.Rows.Count > 0)
				return this.Tabla;
			else
				throw new Exception("No se ha podido encontrar ningun registro asociado a la busqueda");		}

		public equipo_has_mensaje[]  BuscarRegistros_idequipo_has_mensaje (int idequipo_has_mensaje)
		{

			DataTable tabla = this.BuscarRegistrosequipo_has_mensaje_idequipo_has_mensaje (idequipo_has_mensaje);
			equipo_has_mensaje[] lista = new equipo_has_mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				mensaje unmensaje = basemensaje.BuscarRegistros_idMensaje ((int)dr.ItemArray[0])[0];
				equipo unequipo = baseequipo.BuscarRegistros_idEquipo ((int)dr.ItemArray[1])[0];
				 lista[k]=equipo_has_mensaje.ParseOjeto(ItemArray,unmensaje,unequipo);
				k++;
			}
			return lista;
		}

		public equipo_has_mensaje[]  BuscarRegistros_idMensaje (int idMensaje)
		{

			DataTable tabla = this.BuscarRegistrosequipo_has_mensaje_idMensaje (idMensaje);
			equipo_has_mensaje[] lista = new equipo_has_mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				mensaje unmensaje = basemensaje.BuscarRegistros_idMensaje ((int)dr.ItemArray[0])[0];
				equipo unequipo = baseequipo.BuscarRegistros_idEquipo ((int)dr.ItemArray[1])[0];
				 lista[k]=equipo_has_mensaje.ParseOjeto(ItemArray,unmensaje,unequipo);
				k++;
			}
			return lista;
		}

		public equipo_has_mensaje[]  BuscarRegistros_idEquipo (int idEquipo)
		{

			DataTable tabla = this.BuscarRegistrosequipo_has_mensaje_idEquipo (idEquipo);
			equipo_has_mensaje[] lista = new equipo_has_mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				mensaje unmensaje = basemensaje.BuscarRegistros_idMensaje ((int)dr.ItemArray[0])[0];
				equipo unequipo = baseequipo.BuscarRegistros_idEquipo ((int)dr.ItemArray[1])[0];
				 lista[k]=equipo_has_mensaje.ParseOjeto(ItemArray,unmensaje,unequipo);
				k++;
			}
			return lista;
		}

		public equipo_has_mensaje[]  BuscarRegistros_fechaInicioUChat (DateTime fechaInicioUChat)
		{

			DataTable tabla = this.BuscarRegistrosequipo_has_mensaje_fechaInicioUChat (fechaInicioUChat);
			equipo_has_mensaje[] lista = new equipo_has_mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				mensaje unmensaje = basemensaje.BuscarRegistros_idMensaje ((int)dr.ItemArray[0])[0];
				equipo unequipo = baseequipo.BuscarRegistros_idEquipo ((int)dr.ItemArray[1])[0];
				 lista[k]=equipo_has_mensaje.ParseOjeto(ItemArray,unmensaje,unequipo);
				k++;
			}
			return lista;
		}

		public equipo_has_mensaje[]  BuscarRegistros_horaInicioUchat (DateTime horaInicioUchat)
		{

			DataTable tabla = this.BuscarRegistrosequipo_has_mensaje_horaInicioUchat (horaInicioUchat);
			equipo_has_mensaje[] lista = new equipo_has_mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				mensaje unmensaje = basemensaje.BuscarRegistros_idMensaje ((int)dr.ItemArray[0])[0];
				equipo unequipo = baseequipo.BuscarRegistros_idEquipo ((int)dr.ItemArray[1])[0];
				 lista[k]=equipo_has_mensaje.ParseOjeto(ItemArray,unmensaje,unequipo);
				k++;
			}
			return lista;
		}

        public equipo_has_mensaje[] BuscarRegistrosequipo_has_mensaje()
		{

            DataTable tabla = this.Registrosequipo_has_mensaje();
			equipo_has_mensaje[] lista = new equipo_has_mensaje[tabla.Rows.Count];

			int k=0;
			foreach (DataRow dr in tabla.Rows)
			{
				 object[]ItemArray =dr.ItemArray;

				mensaje unmensaje = basemensaje.BuscarRegistros_idMensaje ((int)dr.ItemArray[0])[0];
				equipo unequipo = baseequipo.BuscarRegistros_idEquipo ((int)dr.ItemArray[1])[0];
				 lista[k]=equipo_has_mensaje.ParseOjeto(ItemArray,unmensaje,unequipo);
				k++;
			}
			return lista;
		}

	}
}
