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
using WpfComputerServiceApp.Model;
using WpfComputerServiceApp.Context;
using System.IO;
using Microsoft.Win32;

namespace WpfComputerServiceApp.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для ComputerActionDataPage.xaml
    /// </summary>
    public partial class ComputerActionDataPage : Page
    {
        public List<StorageDevice> StorageDevices { get; set; }
        public List<PowerUnit> PowerUnits { get; set;}
        public List<Motherboard> Motherboards { get; set; }
        public List<VideoCard> VideoCards { get; set; }
        public List<CPU> CPUs { get; set; }
        public List<ComputerType> ComputerTypes { get; set;}
        public List<Cooler> Coolers { get; set; }
        public Computer Computer { get; set; }
        public ComputerActionDataPage(Computer computer)
        {
            InitializeComponent();
            ComputerTypes = Data.tb.ComputerType.ToList();
            StorageDevices = Data.tb.StorageDevice.ToList();
            VideoCards = Data.tb.VideoCard.ToList();
            CPUs = Data.tb.CPU.ToList();
            Motherboards = Data.tb.Motherboard.ToList();
            PowerUnits = Data.tb.PowerUnit.ToList();
            Coolers = Data.tb.Cooler.ToList();
            Computer = computer;
            this.DataContext = this;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if(Computer.ID == 0)
            {
                Data.tb.Computer.Add(Computer);
            }
            File.Copy(file.FileName, $"computerphoto\\{System.IO.Path.GetFileName(file.FileName).Trim()}", true);
            Computer.GetPhoto = "\\computerphoto\\" + System.IO.Path.GetFileName(file.FileName);
            Data.tb.SaveChanges();
            MessageBox.Show("Данные сохранены", "Внимание", MessageBoxButton.OK, MessageBoxImage.Information);
        }
        OpenFileDialog file = new OpenFileDialog();

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ComputerDataViewPage(new Computer()));
        }

        private void Select_Click(object sender, RoutedEventArgs e)
        {
            file.Filter = "Image (*.jpg;*.jpeg;*.png;) |  *.jpg; *.jpeg; *.png";
            if (file.ShowDialog() == true)
            {
                BitmapImage image = new BitmapImage(new Uri(file.FileName));
                Img.Source = image;
            }
        }
    }
}
