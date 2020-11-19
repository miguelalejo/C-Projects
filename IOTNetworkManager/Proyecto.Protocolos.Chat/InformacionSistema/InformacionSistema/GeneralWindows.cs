using System;
using System.Collections.Generic;
using System.Text;

namespace InformacionSistema
{
    class GeneralWindows
    {
        public string versionwindows = "";
        public float tiempoinicio = 0;
        public int nroprogramas = 0;
        public string versionExplorer = "";
        public GeneralWindows(string unaversionwindows,float untiempoinicio,int unnroprogramas, string unaversionExplorer)
        {
            this.versionwindows = unaversionwindows;
            this.tiempoinicio = untiempoinicio;
            this.nroprogramas = unnroprogramas;
            this.versionExplorer = unaversionExplorer;
        }
   

    }
}
