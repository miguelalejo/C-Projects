using System;
using System.Collections.Generic;

using System.Text;
using System.Data;

namespace InformacionSistema
{
    public class ProgramasIns
    {
        int hrSWInstalledIndex;
        string hrSWInstalledName;
        string hrSWInstalledID;
        int hrSWInstalledType;
        string hrSWInstalledDate;
        public ProgramasIns()
        { 
        }

        public ProgramasIns(int _hrSWInstalledIndex, string _hrSWInstalledName, string _hrSWInstalledID, int _hrSWInstalledType, string _hrSWInstalledDate)
        {
            this.hrSWInstalledIndex = _hrSWInstalledIndex;
            this.hrSWInstalledName = _hrSWInstalledName;
            this.hrSWInstalledID = _hrSWInstalledID;
            this.hrSWInstalledType = _hrSWInstalledType;
            this.hrSWInstalledDate = _hrSWInstalledDate;
        }

        public int HrSWInstalledIndex
        {
            set { this.hrSWInstalledIndex = value; }
            get { return this.hrSWInstalledIndex; }
        }
        
        public string HrSWInstalledName
        {
            set { this.hrSWInstalledName = value; }
            get { return this.hrSWInstalledName; }
        }
        
        public string HrSWInstalledID
        {
            set { this.hrSWInstalledID = value; }
            get { return this.hrSWInstalledID; }
        }
        
        public int HrSWInstalledType
        {
            set { this.hrSWInstalledType = value; }
            get { return this.hrSWInstalledType; }
        }
        
        public string HrSWInstalledDate
        {
            set { this.hrSWInstalledDate = value; }
            get { return this.hrSWInstalledDate; }
        }
        public static ProgramasIns[] Programas(DataTable lista)
        {
            ProgramasIns[] temp = new ProgramasIns[lista.Rows.Count];
            for (int i = 0; i < temp.Length; i++)
            {

                object[] objeto = lista.Rows[i].ItemArray;
                temp[i] = new ProgramasIns();
                temp[i].HrSWInstalledIndex = int.Parse(objeto[0].ToString());
                temp[i].HrSWInstalledName = objeto[1].ToString();
                temp[i].HrSWInstalledID = objeto[2].ToString();
                temp[i].HrSWInstalledType = int.Parse(objeto[3].ToString());
                temp[i].HrSWInstalledDate = objeto[4].ToString();





            }
            return temp;
        }

    }
}
