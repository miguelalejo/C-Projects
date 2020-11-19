using System;
using System.Data;
using System.Data.Odbc;

namespace Proyecto.Protocolos.Chat.Entidades
{
    [Serializable]
	public class equipo_has_mensaje
	{
		private int _idequipo_has_mensaje;
		private mensaje _mensaje;
		private equipo _equipo;
		private DateTime _fechaInicioUChat;
		private DateTime _horaInicioUchat;

		public equipo_has_mensaje()
		{


		}

		public int idequipo_has_mensaje
		{
			get {return  _idequipo_has_mensaje;}
			set { _idequipo_has_mensaje=value; }
		}
		public mensaje mensaje
		{
			get {return  _mensaje;}
			set { _mensaje=value; }
		}
		public equipo equipo
		{
			get {return  _equipo;}
			set { _equipo=value; }
		}
		public DateTime fechaInicioUChat
		{
			get {return  _fechaInicioUChat;}
			set { _fechaInicioUChat=value; }
		}
		public DateTime horaInicioUchat
		{
			get {return  _horaInicioUchat;}
			set { _horaInicioUchat=value; }
		}
		public equipo_has_mensaje(int unidequipo_has_mensaje,mensaje unmensaje,equipo unequipo,DateTime unfechaInicioUChat,DateTime unhoraInicioUchat)
		{
			 this._idequipo_has_mensaje = unidequipo_has_mensaje;
			 this._mensaje = unmensaje;
			 this._equipo = unequipo;
			 this._fechaInicioUChat = unfechaInicioUChat;
			 this._horaInicioUchat = unhoraInicioUchat;
		}
        public equipo_has_mensaje( mensaje unmensaje, equipo unequipo)
        {
            
            this._mensaje = unmensaje;
            this._equipo = unequipo;
            
        }

		public static equipo_has_mensaje ParseOjeto(object[]ItemArray ,mensaje unmensaje,equipo unequipo)
		{
			 return new equipo_has_mensaje(int.Parse(ItemArray[0].ToString()),unmensaje,unequipo,(DateTime)ItemArray[3],(DateTime)ItemArray[4]);
		}

	}
}
