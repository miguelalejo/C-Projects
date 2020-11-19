using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace InformacionSistema
{
    public class ProgInicio
    {
        int hrSWRunIndex;
        string hrSWRunName;
        string hrSWRunID;
        string hrSWRunPath;
        string hrSWRunParameters;
        int hrSWRunType;
        int hrSWRunStatus;

        public ProgInicio()
        { 
        }

        public ProgInicio(int _hrSWRunIndex, string _hrSWRunName, string _hrSWRunID, string _hrSWRunPath, string _hrSWRunParameters, int _hrSWRunType,int _hrSWRunStatus)
        {
            this.hrSWRunIndex=_hrSWRunIndex;
            this.hrSWRunName=_hrSWRunName;
            this.hrSWRunID=_hrSWRunID;
            this.hrSWRunPath=_hrSWRunPath;
            this.hrSWRunParameters=_hrSWRunParameters;
            this.hrSWRunType=_hrSWRunType;
            this.hrSWRunStatus=_hrSWRunStatus;
        }

        public int HrSWRunIndex
        {
            set { this.hrSWRunIndex = value; }
            get { return this.hrSWRunIndex; }
        }

        public string HrSWRunName
        {
            set { this.hrSWRunName = value; }
            get { return this.hrSWRunName; }
        }

        public string HrSWRunID
        {
            set { this.hrSWRunID = value; }
            get { return this.hrSWRunID; }
        }

        public string HrSWRunPath
        {
            set { this.hrSWRunPath = value; }
            get { return this.hrSWRunPath; }
        }

        public string HrSWRunParameters
        {
            set { this.hrSWRunParameters = value; }
            get { return this.hrSWRunParameters; }
        }

        public int HrSWRunType
        {
            set { this.hrSWRunType = value; }
            get { return this.hrSWRunType; }
        }

        public int HrSWRunStatus
        {
            set { this.hrSWRunStatus = value; }
            get { return this.hrSWRunStatus; }
        }
        public static ProgInicio[] ProgramasIni(DataTable lista)
        {
            ProgInicio[] temp = new ProgInicio[lista.Rows.Count];
            for (int i = 0; i < temp.Length; i++)
            {

                object[] objeto = lista.Rows[i].ItemArray;
                temp[i] = new ProgInicio();
                temp[i].HrSWRunIndex = int.Parse(objeto[0].ToString());
                temp[i].HrSWRunName = objeto[1].ToString();
                temp[i].HrSWRunID = objeto[2].ToString();
                temp[i].HrSWRunPath = (objeto[3].ToString());
                temp[i].HrSWRunParameters = objeto[4].ToString();
                temp[i].HrSWRunType = int.Parse(objeto[5].ToString());
                temp[i].HrSWRunStatus = int.Parse(objeto[6].ToString());


            }
            return temp;
        }

    }
}
