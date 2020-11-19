using System;
using System.Collections.Generic;
using System.Text;

namespace InformacionSistema
{
    public class ClassParticionDisco
    {
        int hrPartitionIndex;
        string hrPartitionLabel;
        string hrPartitionID;
        double hrPartitionSize;
        double hrPartitionFSIndex;
        public ClassParticionDisco()
        {

        }
        public int HrPartitionIndex
        {
            get {
                return this.hrPartitionIndex;
            }
            set {
                this.hrPartitionIndex = value;
            }
        }
        public string HrPartitionLabel
        {
            get
            {
                return this.hrPartitionLabel;
            }
            set
            {
                this.hrPartitionLabel = value;
            }
        }
        public string HrPartitionID
        {
            get
            {
                return this.hrPartitionID;
            }
            set
            {
                this.hrPartitionID = value;
            }
        }
        public double HrPartitionSize
        {
            get
            {
                return this.hrPartitionSize;
            }
            set
            {
                this.hrPartitionSize = value;
            }
        }
        public double HrPartitionFSIndex
        {
            get
            {
                return this.hrPartitionFSIndex;
            }
            set
            {
                this.hrPartitionFSIndex = value;
            }
        }

    }
}
