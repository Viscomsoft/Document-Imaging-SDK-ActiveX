using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using SCRIBBLELib;
namespace WindowsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public string strApp;
        private void button1_Click(object sender, EventArgs e)
        {
            string strFile;
            string strType,strType2;

             this.openFileDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico";
             if (this.openFileDialog1.ShowDialog(this) == DialogResult.OK)
             {
                 strFile =this.openFileDialog1.FileName;
                 strType =strFile.Substring(strFile.Length-3);
                 strType2 = strFile.Substring(strFile.Length - 4);
                 txtfilename.Text = strFile;
 
                 if (strType == "pdf" || strType == "tif" || strType =="tiff")
                 {
                     axImageViewer1.LoadMultiPage(strFile, 0);
                     this.txttotpage.Text = axImageViewer1.GetTotalPage().ToString();
                     this.txtPageNo.Text = "1";
                     this.btnprev.Enabled = true;
                     this.btnnext.Enabled = true;

                 }
                 else
                 {
                     this.axImageViewer1.FileName = strFile;
                     this.txtPageNo.Text = "1";
                     this.txttotpage.Text = "1";
                     this.btnprev.Enabled = false;
                     this.btnnext.Enabled = false;


                 }

                 axImageViewer1.Focus();
                 axImageViewer1.HighQuality = true;
                 axImageViewer1.View = 5;
                 this.txtleft.Text = "0";
                 this.txttop.Text = "0";
                 this.txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
                 this.txtfileheight.Text = axImageViewer1.FileHeight.ToString();
                 this.chkfullpage.Checked = true;
                 axImageViewer1.MouseTrackMode = MOUSE_TRACKMODE.NoSelectionRectMode;



             }

        }

        private void btnnext_Click(object sender, EventArgs e)
        {

            short page = Convert.ToInt16(this.txtPageNo.Text);
            short count = this.axImageViewer1.GetTotalPage();

            if (page < count)
            {
                page++;
            }
            else
            {
                page = count;
            }
            this.txtPageNo.Text = page.ToString();

            axImageViewer1.LoadMultiPage(this.txtfilename.Text, page);

        }

        private void btnscan_Click(object sender, EventArgs e)
        {
            
            short ibarcodeCount = 0;
            string str1;
            string strtmp;

            if (chkfullpage.Checked)
                ibarcodeCount =axImageViewer1.BarCodeReadFullPage();
            else
                ibarcodeCount =axImageViewer1.BarCodeReadByZone(Convert.ToInt16(txtleft.Text), Convert.ToInt16(txttop.Text), Convert.ToInt16(txtfilewidth.Text), Convert.ToInt16(txtfileheight.Text));


            if (ibarcodeCount < 1)
            {
                MessageBox.Show("No barcode found");
                return;
            }

            str1 = "Total " + ibarcodeCount.ToString() + " BarCode detected" + "\r\n";

            for (short i = 0; i < ibarcodeCount ; i++)
            {
                strtmp = axImageViewer1.BarCodeGetType(i) + " score:" + axImageViewer1.BarCodeGetScore(i).ToString() + " value:" + axImageViewer1.BarCodeGetValue(i).ToString();
                str1 = str1 + "\r\n" + strtmp;

            }

            MessageBox.Show(str1);
 
        }

        private void btnprev_Click(object sender, EventArgs e)
        {
            short page = Convert.ToInt16(this.txtPageNo.Text);
            if (page > 1)
            {
                page--;
            }
            this.txtPageNo.Text = page.ToString();
            axImageViewer1.LoadMultiPage(this.txtfilename.Text, page);


        }

        private void axImageViewer1_SelectionRectDrawn(object sender, AxSCRIBBLELib._DImageViewerEvents_SelectionRectDrawnEvent e)
        {
            if (!chkfullpage.Checked)
            {
                this.txtleft.Text = e.iLeft.ToString();
                this.txttop.Text = e.iTop.ToString();
                this.txtfilewidth.Text = e.iWidth.ToString();
                this.txtfileheight.Text = e.iHeight.ToString();

            }
        }

     

        private void chkfullpage_CheckedChanged(object sender, EventArgs e)
        {
                if(!chkfullpage.Checked)
                    axImageViewer1.MouseTrackMode=MOUSE_TRACKMODE.SelectionRectMode;
            else
                    axImageViewer1.MouseTrackMode=MOUSE_TRACKMODE.NoSelectionRectMode;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

           
            int iFindIndex;
            strApp = Application.ExecutablePath;
            iFindIndex = strApp.IndexOf("Examples");

            strApp = strApp.Substring(0, iFindIndex);
            strApp = strApp + "barcodeimage";

            this.txtPageNo.Text = "1";
            this.txttotpage.Text = "1";
            this.btnprev.Enabled = false;
            this.btnnext.Enabled = false;
            axImageViewer1.MouseTrackMode = MOUSE_TRACKMODE.NoSelectionRectMode;

        }

        private void chkuseadvpdf_CheckedChanged(object sender, EventArgs e)
        {
            if (chkuseadvpdf.Checked)
                this.axImageViewer1.PDFUseAdvancedViewer = true;
            else
                this.axImageViewer1.PDFUseAdvancedViewer = false;

        }

        private void button2_Click(object sender, EventArgs e)
        {
       
            axImageViewer1.FileName = strApp + "\\barcodetest1.jpg";
            txttotpage.Text = "1";
            txtPageNo.Text = "1";
            btnnext.Enabled = false;
            btnprev.Enabled = false;
            txtfilename.Text = "";

            chkfullpage.Checked = true;
            txtleft.Text = "0";
            txttop.Text = "0";
            txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
            txtfileheight.Text = axImageViewer1.FileHeight.ToString();
       }

        private void button3_Click(object sender, EventArgs e)
        {
            axImageViewer1.FileName = strApp + "\\barcodetest2.jpg";
            txttotpage.Text = "1";
            txtPageNo.Text = "1";
            btnnext.Enabled = false;
            btnprev.Enabled = false;
            txtfilename.Text = "";

            chkfullpage.Checked = true;
            txtleft.Text = "0";
            txttop.Text = "0";
            txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
            txtfileheight.Text = axImageViewer1.FileHeight.ToString();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            axImageViewer1.FileName = strApp + "\\barcodetest3.jpg";
            txttotpage.Text = "1";
            txtPageNo.Text = "1";
            btnnext.Enabled = false;
            btnprev.Enabled = false;
            txtfilename.Text = "";

            chkfullpage.Checked = true;
            txtleft.Text = "0";
            txttop.Text = "0";
            txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
            txtfileheight.Text = axImageViewer1.FileHeight.ToString();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            axImageViewer1.FileName = strApp + "\\barcodetest4.png";
            txttotpage.Text = "1";
            txtPageNo.Text = "1";
            btnnext.Enabled = false;
            btnprev.Enabled = false;
            txtfilename.Text = "";

            chkfullpage.Checked = true;
            txtleft.Text = "0";
            txttop.Text = "0";
            txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
            txtfileheight.Text = axImageViewer1.FileHeight.ToString();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            axImageViewer1.FileName = strApp + "\\barcodetest5.jpg";
            txttotpage.Text = "1";
            txtPageNo.Text = "1";
            btnnext.Enabled = false;
            btnprev.Enabled = false;
            txtfilename.Text = "";

            chkfullpage.Checked = true;
            txtleft.Text = "0";
            txttop.Text = "0";
            txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
            txtfileheight.Text = axImageViewer1.FileHeight.ToString();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            axImageViewer1.FileName = strApp + "\\barcodetest6.pdf";
            txttotpage.Text = "1";
            txtPageNo.Text = "1";
            btnnext.Enabled = false;
            btnprev.Enabled = false;
            txtfilename.Text = "";

            chkfullpage.Checked = true;
            txtleft.Text = "0";
            txttop.Text = "0";
            txtfilewidth.Text = axImageViewer1.FileWidth.ToString();
            txtfileheight.Text = axImageViewer1.FileHeight.ToString();
        }

       

        

    }
}