VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Refresh Screen Improved"
   ClientHeight    =   8535
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13425
   LinkTopic       =   "Form1"
   ScaleHeight     =   8535
   ScaleWidth      =   13425
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   8055
      Left            =   5160
      TabIndex        =   1
      Top             =   240
      Width           =   8175
      _Version        =   65536
      _ExtentX        =   14420
      _ExtentY        =   14208
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Delete All"
      Height          =   495
      Left            =   1680
      TabIndex        =   3
      Top             =   480
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   2520
      Top             =   240
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add Image"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   480
      Width           =   1335
   End
   Begin VB.ListBox List1 
      Height          =   3375
      Left            =   120
      TabIndex        =   0
      Top             =   1320
      Width           =   4695
   End
   Begin VB.Label Label1 
      Caption         =   "After add the image to listbox, select Image"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   4920
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|Mng (*.mng *.jng)|*.mng;*.jng|Raw Image format(*.cr2 *.nef *.crw *.mrw *.raf *.erf *.3fr *.dcr *.raw *.dng *.pef *.x3f *.arw *.sr2 *.mef *.prf)|*.cr2;*.nef;*.crw;*.mrw;*.raf;*.erf;*.3fr;*.dcr;*.raw;*.dng;*.pef;*.x3f;*.arw;*.sr2;*.mef;*.prf|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen


Me.List1.AddItem Me.CommonDialog1.FileName
End Sub

Private Sub Command2_Click()
List1.Clear
End Sub

Private Sub List1_Click()
ImageViewer1.PDFRenderDPIX = 36
ImageViewer1.PDFRenderDPIY = 36

ImageViewer1.RefreshAfterLoadImage = False

ImageViewer1.FileName = List1.List(List1.ListIndex)
ImageViewer1.View = 12


End Sub
