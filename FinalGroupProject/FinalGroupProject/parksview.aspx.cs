using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FinalGroupProject;
using Newtonsoft.Json;

namespace FinalGroupProject
{
    public partial class parksview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button(object sender, EventArgs e)
        {
            Weatherser();
        }
        public void Weatherser()
        {
            Weather_ser.Text = "";


            String cityName = "";

            
                cityName = CityName.SelectedItem.Value.ToString();

            if (cityName == null)
            {
                Weather_ser.Text = "<p>Please select a park<strong>";
            }
            else
            {

                string url = "http://api.openweathermap.org/data/2.5/weather?q=" + cityName + "&units=imperial&appid=d78f31ba82af97ca482c280d26b9ad35";

                Uri uri = new Uri(@url);
                int statusNumber;
                HttpWebResponse res = null;
                try
                {

                    WebRequest webRequest = WebRequest.Create(uri);
                    res = (HttpWebResponse)webRequest.GetResponse();
                    statusNumber = (int)res.StatusCode;
                }
                catch (WebException we)
                {
                    statusNumber = (int)we.Status;
                    if (statusNumber == 404)
                    {
                        Weather_ser.Text = "<p>Please select a park<strong>";

                    }
                }



                StreamReader streamReader = new StreamReader(res.GetResponseStream());
                String responseData = streamReader.ReadToEnd();


                allinone build = JsonConvert.DeserializeObject<allinone>(responseData);






                Weather_ser.Text = "<br/><strong>Country: </strong>" + build.Sys.Country + "<br/><strong>City: </strong>" + build.Name + "<br/><strong>Weather Condition: </strong>" + build.Weathers[0].Main + "<br/><strong>Temperature: </strong>" + build.Main.Temp + " <br/><strong>Pressure: </strong>" + build.Main.Pressure + "<br/><strong>Humidity: </strong>"
                    + build.Main.Humidity + "<br/><strong>Minimum Temperature: </strong>" + build.Main.Temp_min + "<br/><strong> Maximum Temperature: </strong> " + build.Main.Temp_max +
                    "<br/><strong> Speed of the wind: </strong> " + build.Wind.Speed + "<br/><strong> Deg of the wind: </strong> " + build.Wind.Deg;

            }
            



                
            

        }
    }
}