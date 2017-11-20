using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
namespace WEBFORM
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public string WCSExecuteTask(string TaskNo) 
        {
            WCSDataService.WCSDataService wcs = new WCSDataService.WCSDataService();
            return wcs.transWCSExecuteTask(TaskNo);
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            #region
            //DataTable Jdt = bll.FillDataTable("Wcs.SelectTaskWcs", new DataParameter("{0}", TaskNo));
            //string Id = bll.FillDataTable("Wcs.SelectTaskTemp", new DataParameter("{0}", TaskNo)).Rows[0]["ID"].ToString();
            //string Json = "[{\"id\":\"" + Id + "\",\"taskNo\":\"" + TaskNo + "\",\"palletBarcode\":\"" + Jdt.Rows[0]["PalletBarcode"].ToString() + "\",\"startDate\":\"" + Jdt.Rows[0]["StartDate"].ToString() + "\",\"sendDate\":\"" + Jdt.Rows[0]["TaskDate"].ToString() + "\",\"deviceNo\":\"" + Jdt.Rows[0]["DeviceNo"].ToString() + "\",\"sender\":\"" + Jdt.Rows[0]["Tasker"].ToString() + "\"}]";
            #endregion
            //string Json = "[{\"id\":\"" + "00a0c0b0001" + "\",\"taskNo\":\"" + "201702040001" + "\",\"palletBarcode\":\"" + "B045" + "\",\"startDate\":\"" + "2017-02-06 9:33:50 966" + "\",\"sendDate\":\"" + "2017-02-05 09:50:49 980" + "\",\"deviceNo\":\"" + "" + "\",\"sender\":\"" + "admin" + "\"}]";
            string TaskNo = "201702040001";
            string msg = WCSExecuteTask(TaskNo);
            MessageBox.Show(msg);
        }
    }
}
