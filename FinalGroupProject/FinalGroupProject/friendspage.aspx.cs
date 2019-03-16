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
    public partial class friendspage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void viewDetails_Click(object sender, EventArgs e)
        {

            {
                string filter = Request.QueryString["Name"];

                if (filter != null)
                {
                    jsonOutput.Text = (ShowJSON(filter));
                    jsonOutput.Visible = true;
                }
                else
                {
                    jsonOutput.Text = (ShowJSON(""));
                    jsonOutput.Visible = true;
                }

                return;

            }
        }

            public static string ShowJSON(String filter)
            {
                List<Friend> selectedFriends = new List<Friend>();

            Friend mickey = new Friend
            {
                Name = "Mickey Mouse",
                Species = "Mouse",
                Gender = "Male",
                About = "Mickey Mouse loves adventure and trying new things, though his best intentions often go awry. He is optimistic and a friend to everyone."
            };
            if (mickey.Name.Contains(filter))
                {
                    selectedFriends.Add(mickey);
                }


            Friend minnie = new Friend
            {
                Name = "Minnie Mouse",
                Species = "Mouse",
                Gender = "Female",
                About = "Minnie Mouse is sweet, stylish, and enjoys dancing and singing. She especially loves to spend time with her lifelong sweetheart, Mickey."
            };
            if (minnie.Name.Contains(filter))
                {
                    selectedFriends.Add(minnie);
                }

            Friend goofy = new Friend
            {
                Name = "Goofy",
                Species = "Dog",
                Gender = "Male",
                About = "Goofy is good-natured. Though he can be a bit clumsy and trips himself up from time to time, he never loses his willingness to try his best at anything."
            };
            if (goofy.Name.Contains(filter))
                {
                    selectedFriends.Add(goofy);
                }


            Friend pluto = new Friend
            {
                Name = "Pluto",
                Species = "Dog",
                Gender = "Male",
                About = "Fun-loving, curious, and playful, Pluto has the heart of a puppy. He is a very loyal companion to Mickey."
            };
            if (pluto.Name.Contains(filter))
                {
                    selectedFriends.Add(pluto);
                }


            Friend donald = new Friend
            {
                Name = "Donald Duck",
                Species = "Duck",
                Gender = "Male",
                About = "Donald Duck might be quick-tempered when things don't go his way, but he has a heart of gold and is very devoted to his friends."
            };
            if (donald.Name.Contains(filter))
                {
                    selectedFriends.Add(donald);
                }


            Friend daisy = new Friend
            {
                Name = "Daisy Duck",
                Species = "Duck",
                Gender = "Female",
                About = "Daisy Duck is a friend to many and is Minnie's best friend. While she can be sassy, she's always sweet to those she cares about, especially her guy, Donald."
            };
            if (daisy.Name.Contains(filter))
                {
                    selectedFriends.Add(daisy);
                }

            //converting to JSON and returning the string
            string jsonFriend = JsonConvert.SerializeObject(selectedFriends);
            return jsonFriend;
        }
        
    }
}