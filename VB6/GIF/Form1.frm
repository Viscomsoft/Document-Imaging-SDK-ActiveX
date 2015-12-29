VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6540
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10665
   LinkTopic       =   "Form1"
   ScaleHeight     =   6540
   ScaleWidth      =   10665
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   5655
      Left            =   3600
      TabIndex        =   9
      Top             =   360
      Width           =   6855
      _Version        =   65536
      _ExtentX        =   12091
      _ExtentY        =   9975
      _StockProps     =   0
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Select Color"
      Enabled         =   0   'False
      Height          =   255
      Left            =   1800
      TabIndex        =   8
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CheckBox chkdiffusion 
      Caption         =   "Error Diffusion"
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   2760
      Value           =   1  'Checked
      Width           =   1335
   End
   Begin VB.ComboBox cbogifquantizer 
      Height          =   315
      Left            =   1680
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   2280
      Width           =   1215
   End
   Begin VB.ComboBox cbomaxcolor 
      Height          =   315
      Left            =   1680
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save as GIF"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   3840
      Width           =   1935
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   2640
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Select Image File"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   960
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "Transparent color"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   3240
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Quantizer"
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "GIF Max Color"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   1800
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim clrtrancolor

Private Sub chkdiffusion_Click()

If chkdiffusion.Value = 1 Then
    Command3.Enabled = False
Else
    Command3.Enabled = True
End If

End Sub

Private Sub Command1_Click()


Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen

ImageViewer1.HighQuality = True

ImageViewer1.MouseTrackMode = SelectionRectMode

ImageViewer1.FileName = Me.CommonDialog1.FileName

ImageViewer1.View = 9



End Sub

Private Sub Command2_Click()

ImageViewer1.GIFMaxColor = Val(cbomaxcolor.List(cbomaxcolor.ListIndex))
ImageViewer1.GIFQuantizer = cbogifquantizer.ListIndex

If chkdiffusion.Value = 0 Then
    ImageViewer1.GIFErrorDiffusion = chkdiffusion.Value

    ImageViewer1.GIFTranColor = clrtrancolor
Else
    ImageViewer1.GIFErrorDiffusion = chkdiffusion.Value
End If

a = ImageViewer1.Save("c:\testgif", "gif")

If a = 1 Then
    MsgBox "Save to c:\testgif.gif Completed"
Else
    MsgBox "Save Failed"
End If

End Sub

Private Sub Command22_Click()
 
End Sub

Private Sub Command3_Click()
Me.CommonDialog1.ShowColor
clrtrancolor = CommonDialog1.Color
End Sub

Private Sub Form_Load()

cbomaxcolor.AddItem "16"
cbomaxcolor.AddItem "32"
cbomaxcolor.AddItem "64"
cbomaxcolor.AddItem "128"
cbomaxcolor.AddItem "256"
cbomaxcolor.ListIndex = 4

cbogifquantizer.AddItem "Basic"
cbogifquantizer.AddItem "Octree"
cbogifquantizer.AddItem "Mediancut"
cbogifquantizer.AddItem "NeuralNet"
cbogifquantizer.ListIndex = 1
End Sub

