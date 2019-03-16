using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalGroupProject
{
    public class Friend
    {
        string name;
        string species;
        string gender;
        string about;

        public string Name { get => name; set => name = value; }
        public string Species { get => species; set => species = value; }
        public string Gender { get => gender; set => gender = value; }
        public string About { get => about; set => about = value; }
    }
}