using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            SRMDataService.SRMDataService client = new SRMDataService.SRMDataService();
            string json = "[{\"ID\":\"00a0c0b0001\",\"taskNo\":\"201702040001\",\"taskType\":\"11\",\"taskLevel\":1,\"taskFlag\":\"2\",\"palletBarcode\":\"B045\",\"fromAddress\": \"001001001\",\"toAddress\":\"005003003\",\"status\":\"0\",\"sendDate\":\"" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss fff") + "\",\"sender\":\"admin\"}]";
            string ms = client.transSRMTask(json);
            MessageBox.Show(ms);
        }
    }
}
