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
        public Computer Computer { get; set; }
        public List<Computer> Computers;
        public ComputerDataViewPage(Computer computer)
        {
            InitializeComponent();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            DataComputer.ItemsSource = Data.tb.Computer.ToList();
        }
        //Поиск
        private void Search_SelectionChanged(object sender, RoutedEventArgs e)
        {
            var data = Data.tb.Computer.Where(item => item.CompanyName.Contains(Search.Text) || item.ComputerType.Title.Contains(Search.Text)
            || item.Cooler.Title.Contains(Search.Text) || item.VideoCard.Title.Contains(Search.Text) || item.StorageDevice.Title.Contains(Search.Text) ||
            item.Motherboard.Title.Contains(Search.Text) || item.PowerUnit.Title.Contains(Search.Text) || item.CPU.Title.Contains(Search.Text)).ToList();
            if (data.Any())
            {
                DataComputer.Visibility = Visibility.Visible;
                NoResult.Visibility = Visibility.Collapsed;
                DataComputer.ItemsSource = data;
            }
            else
            {
                DataComputer.Visibility = Visibility.Collapsed;
                NoResult.Visibility = Visibility.Visible;
            }
        }
        //Добавление
        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ComputerActionDataPage(new Computer()));
        }
        //Редактирование
        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            var selectedComputer = (Computer)DataComputer.SelectedItem;
            if (selectedComputer != null)
            {
                NavigationService.Navigate(new ComputerActionDataPage(selectedComputer));
            }
        }
        // Удаление
        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            var selectedComputer = (Computer)DataComputer.SelectedItem;
            if (selectedComputer != null)
            {
                Data.tb.Computer.Remove(selectedComputer);
                Data.tb.SaveChanges();
            }
            MessageBox.Show("Данные удалены", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
            Page_Loaded(null, null);
        }

        private void ComputerTypeBX_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SearchType((ComputerTypeBX.SelectedItem as ComboBoxItem).Content.ToString(), Search.Text);
        }
        // Сортировка
        private void SearchType(string type = "", string search = "")
        {
            var computers = Data.tb.Computer.ToList();
            if (!string.IsNullOrEmpty(type) && !string.IsNullOrEmpty(type))
            {
                if (type == "Игровой")
                {
                    computers = computers.Where(item => item.ComputerType.Title == "Игровой").ToList();
                }
                if (type == "Офисный")
                {
                    computers = computers.Where(item => item.ComputerType.Title == "Офисный").ToList();
                }                
            }
            DataComputer.ItemsSource = computers;
        }
    }
}