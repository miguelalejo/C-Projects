using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DISCO
{
    public class ClaseDiscoDuro
    {
        string _ubicacion;
        string _etiqueta;
        double _espacioUtilizado;
        double _espacioLibre;
        double _espacioTotal;

        public ClaseDiscoDuro(string Ubicacion, string Etiqueta, double EspacioUtilizado, double EspacioLibre, double EspacioTotal)
        {
            this._ubicacion = Ubicacion;
            this._etiqueta = Etiqueta;
            this._espacioUtilizado = EspacioUtilizado;
            this._espacioLibre = EspacioLibre;
            this._espacioTotal = EspacioTotal;            
        }

        public string Ubicacion
        {
            get { return this._ubicacion; }

            set { this._ubicacion = value; }
        }

        public string Etiqueta
        {
            get { return this._etiqueta; }

            set { this._etiqueta = value; }
        }

        public double EspacioUtilizado
        {
            get { return this._espacioUtilizado; }

            set { this._espacioUtilizado = value; }
        }

        public double EspacioLibre
        {
            get { return this._espacioLibre; }

            set { this._espacioLibre = value; }
        }

        public double EspacioTotal
        {
            get { return this._espacioTotal; }

            set { this._espacioTotal = value; }
        }
    }
}
