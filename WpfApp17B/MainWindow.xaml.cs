using System;
using System.Security.Policy;
using System.Text;
using System.Windows;

namespace WpfApp17B
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private bool CheckInput()
        {
            if (string.IsNullOrEmpty(txtIn.Text))
            {
                txtIn.Focus();
                MessageBox.Show("Input a text.");
                return false;
            }
            else
            {
                return true;
            }
        }

        private void ConvertString(Func<string, string> conv)
        {
            if (CheckInput() == false)
            {
                return;
            }

            try
            {
                txtOut.Text = conv(txtIn.Text);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Clear_OnClick(object sender, RoutedEventArgs e)
        {
            txtIn.Clear();
            txtOut.Clear();
        }

        private void Upper_OnClick(object sender, RoutedEventArgs e)
        {
            ConvertString((string inStr) => { return inStr.ToUpper(); });
        }

        private void Lower_OnClick(object sender, RoutedEventArgs e)
        {
            ConvertString(inStr => { return inStr.ToLower(); });
        }

        private void Encode64_OnClick(object sender, RoutedEventArgs e)
        {
            ConvertString(ConvertBase64Encode);
        }

        private string ConvertBase64Encode(string str)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(str));
        }

        private void Decode64_OnClick(object sender, RoutedEventArgs e)
        {
            ConvertString(inStr =>
            {
                // return Encoding.UTF8.GetBytes(Convert.FromBase64String(inStr));
                return Encoding.UTF8.GetString(Convert.FromBase64String(inStr));
            });
        }

        private void EncodeUrl_OnClick(object sender, RoutedEventArgs e)
        {
            ConvertString(inStr =>
            {
                // return Url.EscapeDataString(inStr);
                return Uri.EscapeDataString(inStr);
            });
        }

        private void DecodeUrl_OnClick(object sender, RoutedEventArgs e)
        {
            // return Uri.UnescapeDataString(inStr);
            ConvertString(inStr =>
            {
                return Uri.UnescapeDataString(inStr);
            });
        }
    }
}