using System;
using System.Data;
using System.Data.Odbc;
using System.Collections;

namespace Proyecto.Protocolos.Chat.Entidades
{
    [Serializable]
	public class sala
	{
		private int _idSala;
		private grupo _grupo;
		private String _nombreSala;
		private int _puerto;
		private DateTime _fechaInicio;
		private TimeSpan _horaInicio;
		private TimeSpan _horaCierre;
		private bool _activa;
		private int _numeroequipos;
        private bool _activatexto;
        private equipo_has_mensaje[] _equipossala;
        private equipo[,] _matrizequipos;
        
		public sala()
		{


		}
        public equipo[,] matrizequipos
        {
            get
            {
                return this._matrizequipos;
            }
            set
            {
                this._matrizequipos= value;
            }
        }
        public equipo_has_mensaje[] equipossala
        {
            get {
                return this._equipossala;
            }
            set {
                this._equipossala = value;
            }
        }

		public int idSala
		{
			get {return  _idSala;}
			set { _idSala=value; }
		}
		public grupo grupo
		{
			get {return  _grupo;}
			set { _grupo=value; }
		}
		public String nombreSala
		{
			get {return  _nombreSala;}
			set { _nombreSala=value; }
		}
		public int puerto
		{
			get {return  _puerto;}
			set { _puerto=value; }
		}
		public DateTime fechaInicio
		{
			get {return  _fechaInicio;}
			set { _fechaInicio=value; }
		}
		public TimeSpan horaInicio
		{
			get {return  _horaInicio;}
			set { _horaInicio=value; }
		}
		public TimeSpan horaCierre
		{
			get {return  _horaCierre;}
			set { _horaCierre=value; }
		}
		public bool activa
		{
			get {return  _activa;}
			set { _activa=value; }
		}
        public bool activatexto
        {
            get { return _activatexto; }
            set { _activatexto = value; }
        }
		public int numeroequipos
		{
			get {return  _numeroequipos;}
			set { _numeroequipos=value; }
		}
		public sala(int unidSala,grupo ungrupo,String unnombreSala,int unpuerto,DateTime unfechaInicio,TimeSpan unhoraInicio,TimeSpan unhoraCierre,bool unactiva,int unnumeroequipos)
		{
			 this._idSala = unidSala;
			 this._grupo = ungrupo;
			 this._nombreSala = unnombreSala;
			 this._puerto = unpuerto;
			 this._fechaInicio = unfechaInicio;
			 this._horaInicio = unhoraInicio;
			 this._horaCierre = unhoraCierre;
			 this._activa = unactiva;
			 this._numeroequipos = unnumeroequipos;
		}
        public sala(int unpuerto)
        {
            this._puerto = unpuerto;
        }

		public static sala ParseOjeto(object[]ItemArray ,grupo ungrupo)
		{
            DateTime t1=(DateTime)ItemArray[4];
            TimeSpan t2=   (TimeSpan)ItemArray[5];
            TimeSpan t3= (TimeSpan)ItemArray[6];
            bool val =(bool)ItemArray[7];
            int tem = (int)ItemArray[8];
            return new sala(int.Parse(ItemArray[0].ToString()), ungrupo, ItemArray[2].ToString(), int.Parse(ItemArray[3].ToString()), (DateTime)ItemArray[4], (TimeSpan)ItemArray[5], (TimeSpan)ItemArray[6], bool.Parse(ItemArray[7].ToString()), int.Parse(ItemArray[8].ToString()));
		}
        public void IniciaMatriz(int filas,int columnas)
        {
            this._matrizequipos = new equipo[filas, columnas];
            this.IniciaEquiposMatriz();
        }
        public void IniciaEquiposMatriz()
        {
            for (int i = 0; i < this._matrizequipos.GetLength(0); i++)
            {
                for (int j = 0; j < this._matrizequipos.GetLength(1); j++)
                {
                    this._matrizequipos[i, j] = new equipo();
                    this._matrizequipos[i, j].pos = new Posicion(i, j);
                      
                }
            }
        }
        public Posicion RetornaPosLibre()
        {
            for(int i=0;i<this._matrizequipos.GetLength(0);i++)
            {
                for (int j = 0; j < this._matrizequipos.GetLength(1); j++)
                {
                    if (!this._matrizequipos[i, j].Asigando)
                        return new Posicion(i, j);
                }
            }
            return new Posicion(0, 0);
        }
        public void AñadirEquipo(equipo unequipo)
        {
            Posicion pos=this.RetornaPosLibre();
            unequipo.Asigando = true;
            unequipo.pos = pos;
            this._matrizequipos[pos.X,pos.Y]=unequipo;

        }
        public void QuitarEquipo(equipo unequipo)
        {
            for (int i = 0; i < this._matrizequipos.GetLength(0); i++)
            {
                for (int j = 0; j < this._matrizequipos.GetLength(1); j++)
                {
                    //codigo sensible
                    if (this._matrizequipos[i, j].IpCliente != null)
                    {
                        if (this._matrizequipos[i, j].idEquipo == unequipo.idEquipo)
                        {
                            this._matrizequipos[i, j] = new equipo();
                        }

                    }
                        
                }
            }
            
        }



    }
}
