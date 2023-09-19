using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static System.Runtime.CompilerServices.RuntimeHelpers;

namespace WpfApp1
{
    //creating a class library, constructure and a me
    class Library
    {
        public string Module_Code { get; set; }
        public string Module_Name { get; set; }
        public int Hours_per_week { get; set; }
        public int Credit_for_module { get; set; }
        public int Number_of_weeks { get; set; }
        public int Hours_Spent { get; set; }
        public DateTime Start_Date { get; set; }
        public int Self_Study_Hours_Per_Week { get; set; }
        public int Self_Study_Hours_Remaining { get; set; }

        public Library(string module_Code, string module_Name, int hours_per_week, int credit_for_module,
            int number_of_weeks, int hours_Spent, DateTime start_date, int self_Study_Hours_Per_Week, int self_Study_Hours_Remaining)
        {
            Module_Code = module_Code;
            Module_Name = module_Name;
            Hours_per_week = hours_per_week;
            Credit_for_module = credit_for_module;
            this.Number_of_weeks = number_of_weeks;
            Hours_Spent = hours_Spent;
            Start_Date = start_date;
            Self_Study_Hours_Per_Week = self_Study_Hours_Per_Week;
            Self_Study_Hours_Remaining = self_Study_Hours_Remaining;
        }   
        public string isDisplayed()
        {
            return "Module code : " + Module_Code + "\t"
                + "\nModule name : " + Module_Name + "\t"
                + "\nCredit for this module : " + Credit_for_module + "\t"
                + "\nHours per week : " + Hours_per_week + "\t"
                + "\nNumber of weeks : " + Number_of_weeks + "\t"
                + "\nHours spent on this module : " + Hours_Spent + "\t"
                + "\n\nStarting date : " + Start_Date + "\t"
                + "\nHours set for self studying : " + Self_Study_Hours_Per_Week + "\t"
                + "\nRemaining hours for the module : " + Self_Study_Hours_Remaining;
        }
    }
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        List<Library> newList =new List<Library>();
        private void save_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txt_code.Text) || string.IsNullOrEmpty(txt_name.Text) || string.IsNullOrEmpty(txt_hours_week.Text)|| string.IsNullOrEmpty(txt_credit.Text) || 
                string.IsNullOrEmpty(txt_number_of_weeks.Text)|| string.IsNullOrEmpty(txt_hours_spent.Text) || string.IsNullOrEmpty(txt_start_date.Text))
            {
                MessageBox.Show("Please fill in all the required fields.");
                return;
            }
            else
            {
                //creating new variables that will store the data in the list
                string module_Code, module_Name;
                int hours_per_week, credit_for_module, number_of_weeks, hours_Spent, self_Study_Hours_Per_Week, self_Study_Hours_Remaining; DateTime start_date;

                //taking information in the textboxs
                module_Code = txt_code.Text;
                module_Name = txt_name.Text;
                hours_per_week = Convert.ToInt32(txt_hours_week.Text);
                credit_for_module = Convert.ToInt32(txt_credit.Text);
                number_of_weeks = Convert.ToInt32(txt_number_of_weeks.Text);
                hours_per_week = Convert.ToInt32(txt_hours_week.Text);
                hours_Spent = Convert.ToInt32(txt_hours_spent.Text);
                start_date = Convert.ToDateTime(txt_start_date.Text);

                self_Study_Hours_Per_Week = ((credit_for_module * 10) / number_of_weeks) - hours_per_week;

                self_Study_Hours_Remaining = (self_Study_Hours_Per_Week - hours_Spent);

                Library newlibrary = new Library(module_Code, module_Name, hours_per_week, credit_for_module, number_of_weeks
                    , hours_Spent, start_date, self_Study_Hours_Per_Week, self_Study_Hours_Remaining);
                newList.Add(newlibrary);

                MessageBox.Show("Module has been succesfuly been entered click OK to continew!!");
                clear_Click();
                var Library = from m in newList select m;
                foreach (var i in Library)
                {
                    displayinfor.Items.Add(i.isDisplayed());
                }
            }
        }

        private void clear_Click()
        {
            txt_name.Text = "";
            txt_credit.Text = "";
            txt_code.Text = "";
            txt_hours_spent.Text = null;
            txt_hours_week.Text = null;
            txt_start_date.Text = null;
            txt_credit.Text = null;
            txt_number_of_weeks.Text = null;
        }

        private void exitbtn_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Are you sure you want to exit the application? ");
        }
    }
}
