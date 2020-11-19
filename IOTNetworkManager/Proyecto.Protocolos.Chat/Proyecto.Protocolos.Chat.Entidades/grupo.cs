using System;
using System.Data;
using System.Data.Odbc;

namespace Proyecto.Protocolos.Chat.Entidades
{
    [Serializable]
	public class grupo
	{
		private int _idGrupo;
		private String _nombreGrupo;
		private String _imagen;
		private String _frase;
        private sala[] _Salassala;
		public grupo()
		{


		}
        public sala[] Salassala
        {
            get {
                return this._Salassala;
            }
            set {
                this._Salassala = value;
            }
        }

		public int idGrupo
		{
			get {return  _idGrupo;}
			set { _idGrupo=value; }
		}
		public String nombreGrupo
		{
			get {return  _nombreGrupo;}
			set { _nombreGrupo=value; }
		}
		public String imagen
		{
			get {return  _imagen;}
			set { _imagen=value; }
		}
		public String frase
		{
			get {return  _frase;}
			set { _frase=value; }
		}
		public grupo(int unidGrupo,String unnombreGrupo,String unimagen,String unfrase)
		{
			 this._idGrupo = unidGrupo;
			 this._nombreGrupo = unnombreGrupo;
			 this._imagen = unimagen;
			 this._frase = unfrase;
		}

		public static grupo ParseOjeto(object[]ItemArray )
		{
			 return new grupo(int.Parse(ItemArray[0].ToString()),ItemArray[1].ToString(),ItemArray[2].ToString(),ItemArray[3].ToString());
		}

	}
}
