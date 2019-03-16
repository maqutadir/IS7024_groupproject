using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalGroupProject
{
    public partial class index : System.Web.UI.Page
    {
        protected void BtnGetRides_Click(object sender, EventArgs e)
        {
            // Assign Dropdown list value to selectedRide var
            String selectedRide = DropDownRide.SelectedValue;

            // Get JSON for the selected ride and assign to showRideDetails Ride object
            Ride showRideDetails = GetRides.GetSpecificRide(selectedRide);

            // Outputting all values, make them readonly, and appear when BtnGetRides_Click
            NameLabel.Visible = true;
            NameOutput.Visible = true;
            NameOutput.ReadOnly = true;
            NameOutput.Text = showRideDetails.Name;
            ShortNameLabel.Visible = true;
            ShortNameOutput.ReadOnly = true;
            ShortNameOutput.Visible = true;
            ShortNameOutput.Text = showRideDetails.Short_name;
            LinkLabel.Visible = true;
            LinkOutput.ReadOnly = true;
            LinkOutput.Visible = true;
            LinkOutput.Text = showRideDetails.Permalink;
            
        }
    }
}