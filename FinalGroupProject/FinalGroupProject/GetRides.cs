using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

namespace FinalGroupProject
{
    public class GetRides
    {
        static GetRides()
        {
            using (var webClient = new WebClient())
            {
                //returns JSON as a string named rawJSON
                string rawJSON = webClient.DownloadString("https://touringplans.com/magic-kingdom/attractions.json");
                //parse JSON string into series of objects bundled in rideCollection
                List<Ride> rideCollection = JsonConvert.DeserializeObject<List<Ride>>(rawJSON);
                //assign this series of objects into static AllRides class
                AllRides = rideCollection;
            }
        }
        

        private static List<Ride> allRides;

        public static List<Ride> AllRides { get => allRides; set => allRides = value; }

        public static List<Ride> GetMyRides()
        {
            return AllRides;
        }

        public static Ride GetSpecificRide(String name)
        {

            foreach (Ride ride in AllRides)
            {
                if (ride.Name.Equals(name))

                {
                    return ride;
                }
            }
            return null;
        }
    }

}