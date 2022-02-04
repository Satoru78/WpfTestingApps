using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfComputerServiceApp.Model
{
    public partial class Computer
    {
        public string GetPhoto
        {
            get
            {
                return Environment.CurrentDirectory + "\\" + Photo;
            }
            set
            {
                Photo = value;
            }
        }

    }
}
