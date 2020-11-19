using System;
using System.Data;
using System.Data.Odbc;

namespace Proyecto.Protocolos.Chat.Entidades
{
    [Serializable]
	public class perfil
	{
		private int _idPerfil;
		private String _NombrePerfil;

		public perfil()
		{


		}

		public int idPerfil
		{
			get {return  _idPerfil;}
			set { _idPerfil=value; }
		}
		public String NombrePerfil
		{
			get {return  _NombrePerfil;}
			set { _NombrePerfil=value; }
		}
		public perfil(int unidPerfil,String unNombrePerfil)
		{
			 this._idPerfil = unidPerfil;
			 this._NombrePerfil = unNombrePerfil;
		}

		public static perfil ParseOjeto(object[]ItemArray )
		{
			 return new perfil(int.Parse(ItemArray[0].ToString()),ItemArray[1].ToString());
		}

	}
}
