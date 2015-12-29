namespace WindowsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.axImageViewer1 = new AxSCRIBBLELib.AxImageViewer();
            this.button1 = new System.Windows.Forms.Button();
            this.btnprev = new System.Windows.Forms.Button();
            this.btnnext = new System.Windows.Forms.Button();
            this.txtfilename = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txttotpage = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtPageNo = new System.Windows.Forms.TextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.txtfileheight = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtfilewidth = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txttop = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtleft = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.chkfullpage = new System.Windows.Forms.CheckBox();
            this.btnscan = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.saveFileDialog1 = new System.Windows.Forms.SaveFileDialog();
            this.chkuseadvpdf = new System.Windows.Forms.CheckBox();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.axImageViewer1)).BeginInit();
            this.groupBox4.SuspendLayout();
            this.SuspendLayout();
            // 
            // axImageViewer1
            // 
            this.axImageViewer1.Enabled = true;
            this.axImageViewer1.Location = new System.Drawing.Point(12, 12);
            this.axImageViewer1.Name = "axImageViewer1";
            this.axImageViewer1.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("axImageViewer1.OcxState")));
            this.axImageViewer1.Size = new System.Drawing.Size(456, 451);
            this.axImageViewer1.TabIndex = 0;
            this.axImageViewer1.SelectionRectDrawn += new AxSCRIBBLELib._DImageViewerEvents_SelectionRectDrawnEventHandler(this.axImageViewer1_SelectionRectDrawn);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(474, 189);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(105, 35);
            this.button1.TabIndex = 1;
            this.button1.Text = "Select Image";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnprev
            // 
            this.btnprev.Location = new System.Drawing.Point(594, 194);
            this.btnprev.Name = "btnprev";
            this.btnprev.Size = new System.Drawing.Size(65, 25);
            this.btnprev.TabIndex = 2;
            this.btnprev.Text = "<<";
            this.btnprev.UseVisualStyleBackColor = true;
            this.btnprev.Click += new System.EventHandler(this.btnprev_Click);
            // 
            // btnnext
            // 
            this.btnnext.Location = new System.Drawing.Point(665, 194);
            this.btnnext.Name = "btnnext";
            this.btnnext.Size = new System.Drawing.Size(65, 25);
            this.btnnext.TabIndex = 3;
            this.btnnext.Text = ">>";
            this.btnnext.UseVisualStyleBackColor = true;
            this.btnnext.Click += new System.EventHandler(this.btnnext_Click);
            // 
            // txtfilename
            // 
            this.txtfilename.Enabled = false;
            this.txtfilename.Location = new System.Drawing.Point(477, 239);
            this.txtfilename.Name = "txtfilename";
            this.txtfilename.Size = new System.Drawing.Size(326, 20);
            this.txtfilename.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(478, 275);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 13);
            this.label1.TabIndex = 5;
            this.label1.Text = "Total Page";
            // 
            // txttotpage
            // 
            this.txttotpage.Location = new System.Drawing.Point(554, 273);
            this.txttotpage.Name = "txttotpage";
            this.txttotpage.Size = new System.Drawing.Size(40, 20);
            this.txttotpage.TabIndex = 6;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(618, 276);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Page No.";
            // 
            // txtPageNo
            // 
            this.txtPageNo.Location = new System.Drawing.Point(676, 273);
            this.txtPageNo.Name = "txtPageNo";
            this.txtPageNo.Size = new System.Drawing.Size(40, 20);
            this.txtPageNo.TabIndex = 8;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.label8);
            this.groupBox4.Controls.Add(this.label9);
            this.groupBox4.Controls.Add(this.label7);
            this.groupBox4.Controls.Add(this.txtfileheight);
            this.groupBox4.Controls.Add(this.label6);
            this.groupBox4.Controls.Add(this.txtfilewidth);
            this.groupBox4.Controls.Add(this.label5);
            this.groupBox4.Controls.Add(this.txttop);
            this.groupBox4.Controls.Add(this.label4);
            this.groupBox4.Controls.Add(this.txtleft);
            this.groupBox4.Controls.Add(this.label3);
            this.groupBox4.Controls.Add(this.chkfullpage);
            this.groupBox4.Location = new System.Drawing.Point(481, 318);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(380, 122);
            this.groupBox4.TabIndex = 12;
            this.groupBox4.TabStop = false;
            this.groupBox4.Text = "Zone - Selected specific zone to  increase barcode recognition accuracy";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.ForeColor = System.Drawing.Color.Red;
            this.label8.Location = new System.Drawing.Point(14, 94);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(141, 13);
            this.label8.TabIndex = 11;
            this.label8.Text = "click Detect BarCode button";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.ForeColor = System.Drawing.Color.Red;
            this.label9.Location = new System.Drawing.Point(14, 73);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(254, 13);
            this.label9.TabIndex = 10;
            this.label9.Text = "You may draw the selection rectangle on image and ";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.ForeColor = System.Drawing.Color.Red;
            this.label7.Location = new System.Drawing.Point(86, 21);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(230, 13);
            this.label7.TabIndex = 9;
            this.label7.Text = "uncheck this button recognize for specific zone";
            // 
            // txtfileheight
            // 
            this.txtfileheight.Location = new System.Drawing.Point(271, 50);
            this.txtfileheight.Name = "txtfileheight";
            this.txtfileheight.Size = new System.Drawing.Size(39, 20);
            this.txtfileheight.TabIndex = 8;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(236, 53);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(38, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Height";
            // 
            // txtfilewidth
            // 
            this.txtfilewidth.Location = new System.Drawing.Point(191, 50);
            this.txtfilewidth.Name = "txtfilewidth";
            this.txtfilewidth.Size = new System.Drawing.Size(39, 20);
            this.txtfilewidth.TabIndex = 6;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(161, 53);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(35, 13);
            this.label5.TabIndex = 5;
            this.label5.Text = "Width";
            // 
            // txttop
            // 
            this.txttop.Location = new System.Drawing.Point(116, 50);
            this.txttop.Name = "txttop";
            this.txttop.Size = new System.Drawing.Size(39, 20);
            this.txttop.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(84, 53);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(26, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Top";
            // 
            // txtleft
            // 
            this.txtleft.Location = new System.Drawing.Point(39, 50);
            this.txtleft.Name = "txtleft";
            this.txtleft.Size = new System.Drawing.Size(39, 20);
            this.txtleft.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 53);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(25, 13);
            this.label3.TabIndex = 1;
            this.label3.Text = "Left";
            // 
            // chkfullpage
            // 
            this.chkfullpage.AutoSize = true;
            this.chkfullpage.Checked = true;
            this.chkfullpage.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chkfullpage.Location = new System.Drawing.Point(12, 18);
            this.chkfullpage.Name = "chkfullpage";
            this.chkfullpage.Size = new System.Drawing.Size(70, 17);
            this.chkfullpage.TabIndex = 0;
            this.chkfullpage.Text = "Full Page";
            this.chkfullpage.UseVisualStyleBackColor = true;
            this.chkfullpage.CheckedChanged += new System.EventHandler(this.chkfullpage_CheckedChanged);
            // 
            // btnscan
            // 
            this.btnscan.Location = new System.Drawing.Point(481, 468);
            this.btnscan.Name = "btnscan";
            this.btnscan.Size = new System.Drawing.Size(160, 70);
            this.btnscan.TabIndex = 16;
            this.btnscan.Text = "Detect BarCode";
            this.btnscan.UseVisualStyleBackColor = true;
            this.btnscan.Click += new System.EventHandler(this.btnscan_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // chkuseadvpdf
            // 
            this.chkuseadvpdf.AutoSize = true;
            this.chkuseadvpdf.Location = new System.Drawing.Point(474, 155);
            this.chkuseadvpdf.Name = "chkuseadvpdf";
            this.chkuseadvpdf.Size = new System.Drawing.Size(156, 17);
            this.chkuseadvpdf.TabIndex = 17;
            this.chkuseadvpdf.Text = "Use Advanced PDF Viewer";
            this.chkuseadvpdf.UseVisualStyleBackColor = true;
            this.chkuseadvpdf.CheckedChanged += new System.EventHandler(this.chkuseadvpdf_CheckedChanged);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(482, 11);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(139, 60);
            this.button2.TabIndex = 18;
            this.button2.Text = "Read QR Code Demo";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(645, 12);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(139, 60);
            this.button3.TabIndex = 19;
            this.button3.Text = "Read 1D Barcode Demo";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(810, 12);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(139, 60);
            this.button4.TabIndex = 20;
            this.button4.Text = "Read Multiple Barcode Demo";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(482, 83);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(139, 60);
            this.button5.TabIndex = 21;
            this.button5.Text = "Read DataMatrix Demo";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(645, 83);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(139, 60);
            this.button6.TabIndex = 22;
            this.button6.Text = "Read barcode at any orientation";
            this.button6.UseVisualStyleBackColor = true;
            this.button6.Click += new System.EventHandler(this.button6_Click);
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(810, 83);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(139, 60);
            this.button7.TabIndex = 23;
            this.button7.Text = "Read barcode from PDF ";
            this.button7.UseVisualStyleBackColor = true;
            this.button7.Click += new System.EventHandler(this.button7_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1158, 542);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.axImageViewer1);
            this.Controls.Add(this.button6);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.chkuseadvpdf);
            this.Controls.Add(this.btnscan);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.txtPageNo);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txttotpage);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtfilename);
            this.Controls.Add(this.btnnext);
            this.Controls.Add(this.btnprev);
            this.Controls.Add(this.button1);
            this.Name = "Form1";
            this.Text = "1D and 2D Barcode Reader";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.axImageViewer1)).EndInit();
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private AxSCRIBBLELib.AxImageViewer axImageViewer1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnprev;
        private System.Windows.Forms.Button btnnext;
        private System.Windows.Forms.TextBox txtfilename;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txttotpage;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtPageNo;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtfileheight;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtfilewidth;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txttop;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtleft;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.CheckBox chkfullpage;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnscan;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.SaveFileDialog saveFileDialog1;
        private System.Windows.Forms.CheckBox chkuseadvpdf;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
    }
}

