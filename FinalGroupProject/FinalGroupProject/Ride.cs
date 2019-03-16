using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FinalGroupProject
{
    public class Ride
    {
        string name;
        string short_name;
        string permalink;

        public string Name { get => name; set => name = value; }
        public string Short_name { get => short_name; set => short_name = value; }
        public string Permalink { get => permalink; set => permalink = value; }
    }
}