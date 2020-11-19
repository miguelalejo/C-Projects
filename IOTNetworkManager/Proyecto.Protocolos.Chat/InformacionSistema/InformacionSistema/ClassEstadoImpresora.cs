using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace InformacionSistema
{
    class ClassEstadoImpresora
    {
        string hrPrinterStatus;
        string hrPrinterDetectedErrorState;

        public ClassEstadoImpresora(string _hrPrinterStatus, string _hrPrinterDetectedErrorState)
        {
            this.hrPrinterStatus = _hrPrinterStatus;
            this.hrPrinterDetectedErrorState = _hrPrinterDetectedErrorState;
        }

        public string HrPrinterStatus
        {
            set { this.hrPrinterStatus = value; }
            get { return this.hrPrinterStatus; }
        }
        public string HrPrinterDetectedErrorState
        {
            set { this.hrPrinterDetectedErrorState = value; }
            get { return this.hrPrinterDetectedErrorState; }
        }

    }
}
