using System;
using System.Data;
using System.Data.Odbc;

namespace Proyecto.Protocolos.Chat.Entidades
{
    [Serializable]
	public class equipo
	{
		private int _idEquipo;
		private perfil _perfil;
		private sala _sala;
		private String _Mac;
		private String _NombreNick;
		private String _Contraseña;
		private String _LLaveNick;
		private String _LlaveContraseña;
		private int _LLavePublica;
		private int _VecesIngreso;
		private bool _Activo;
		private String _Dominio;
		private int _VecesIngresoChat;
        private string ipCliente;
        public bool _Asignado;
        public Posicion pos;
        public InformacionBasica _informacionbasica;
        public InformacionBasica Informacionbasica
        {
            get
            {
                return this._informacionbasica;
            }
            set
            {
                this._informacionbasica = value;
            }
        }
        public string IpCliente
        {
            get
            {
                return this.ipCliente;
            }
            set
            {
                this.ipCliente = value;
            }
        }

		public equipo()
		{


		}

		public int idEquipo
		{
			get {return  _idEquipo;}
			set { _idEquipo=value; }
		}
		public perfil perfil
		{
			get {return  _perfil;}
			set { _perfil=value; }
		}
		public sala sala
		{
			get {return  _sala;}
			set { _sala=value; }
		}
		public String Mac
		{
			get {return  _Mac;}
			set { _Mac=value; }
		}
		public String NombreNick
		{
			get {return  _NombreNick;}
			set { _NombreNick=value; }
		}
		public String Contraseña
		{
			get {return  _Contraseña;}
			set { _Contraseña=value; }
		}
		public String LLaveNick
		{
			get {return  _LLaveNick;}
			set { _LLaveNick=value; }
		}
		public String LlaveContraseña
		{
			get {return  _LlaveContraseña;}
			set { _LlaveContraseña=value; }
		}
		public int LLavePublica
		{
			get {return  _LLavePublica;}
			set { _LLavePublica=value; }
		}
		public int VecesIngreso
		{
			get {return  _VecesIngreso;}
			set { _VecesIngreso=value; }
		}
		public bool Activo
		{
			get {return  _Activo;}
			set { _Activo=value; }
		}
		public String Dominio
		{
			get {return  _Dominio;}
			set { _Dominio=value; }
		}
		public int VecesIngresoChat
		{
			get {return  _VecesIngresoChat;}
			set { _VecesIngresoChat=value; }
		}
        public bool Asigando
        {
            get { return _Asignado; }
            set { _Asignado = value; }
        }
		public equipo(int unidEquipo,perfil unperfil,sala unsala,String unMac,String unNombreNick,String unContraseña,String unLLaveNick,String unLlaveContraseña,int unLLavePublica,int unVecesIngreso,bool unActivo,String unDominio,int unVecesIngresoChat)
		{
			 this._idEquipo = unidEquipo;
			 this._perfil = unperfil;
			 this._sala = unsala;
			 this._Mac = unMac;
			 this._NombreNick = unNombreNick;
			 this._Contraseña = unContraseña;
			 this._LLaveNick = unLLaveNick;
			 this._LlaveContraseña = unLlaveContraseña;
			 this._LLavePublica = unLLavePublica;
			 this._VecesIngreso = unVecesIngreso;
			 this._Activo = unActivo;
			 this._Dominio = unDominio;
			 this._VecesIngresoChat = unVecesIngresoChat;
		}
        public equipo(string unNombreNick, string unaContraseña)
        {
            this._NombreNick = unNombreNick;
            this._Contraseña = unaContraseña;
        }

		public static equipo ParseOjeto(object[]ItemArray ,perfil unperfil,sala unsala)
		{
			 return new equipo(int.Parse(ItemArray[0].ToString()),unperfil,unsala,ItemArray[3].ToString(),ItemArray[4].ToString(),ItemArray[5].ToString(),ItemArray[6].ToString(),ItemArray[7].ToString(),int.Parse(ItemArray[8].ToString()),int.Parse(ItemArray[9].ToString()),(bool)ItemArray[10],ItemArray[11].ToString(),int.Parse(ItemArray[12].ToString()));
		}

	}
}
