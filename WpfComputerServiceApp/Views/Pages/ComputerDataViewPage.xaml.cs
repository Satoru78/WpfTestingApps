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
using WpfComputerServiceApp.Context;
using WpfComputerServiceApp.Model;

namespace WpfComputerServiceApp.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для ComputerDataViewPage.xaml
    /// </summary>
    public partial class ComputerDataViewPage : Page
    {
        public List<Computer> Computers;
        public ComputerDataViewPage(Computer computer)
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DataComputer.ItemsSource = Data.tb.Computer.ToList();
        }

        private void Search_SelectionChanged(object sender, RoutedEventArgs e)
        {
            DataComputer.ItemsSource = Data.tb.Computer.Where(item => item.CompanyName.Contains(Search.Text) || item.ComputerType.ToString().Contains(Search.Text)
            || item.Cooler.ToString().Contains(Search.Text) || item.VideoCard.ToString().Contains(Search.Text) || item.StorageDevice.ToString().Contains(Search.Text) ||
            item.Motherboard.ToString().Contains(Search.Text) || item.PowerUnit.ToString().Contains(Search.Text) || item.CPU.ToString().Contains(Search.Text));
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ComputerActionDataPage(new Computer()));
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            var selectedComputer = (Computer)DataComputer.SelectedItem;
            if (selectedComputer != null)
            {
                NavigationService.Navigate(new ComputerActionDataPage(selectedComputer));
            }
        }
        
        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            var selectedComputer = (Computer)DataComputer.SelectedItem;
            if (selectedComputer != null)
            {
                Data.tb.Computer.Remove(selectedComputer);
                Data.tb.SaveChanges();
            }
            MessageBox.Show("Данные удалены","Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
            Page_Loaded(null, null);
        }

        private void ComputerTypeBX_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
