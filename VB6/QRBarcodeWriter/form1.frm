VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "IMAGEV~1.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "QR Barcode Writer"
   ClientHeight    =   7080
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   17085
   LinkTopic       =   "Form1"
   ScaleHeight     =   7080
   ScaleWidth      =   17085
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   2175
      Left            =   240
      TabIndex        =   14
      Top             =   3720
      Width           =   5055
      Begin VB.TextBox txtsourceimage 
         Enabled         =   0   'False
         Height          =   285
         Left            =   600
         TabIndex        =   18
         Top             =   1800
         Width           =   4095
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Select Image"
         Enabled         =   0   'False
         Height          =   255
         Left            =   3120
         TabIndex        =   17
         Top             =   1560
         Width           =   1695
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Draw Barcode on Image"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   16
         Top             =   960
         Width           =   2775
      End
      Begin VB.OptionButton Option1 
         Caption         =   " Barcode only"
         BeginProperty Font 
            Name            =   "Arial Narrow"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   15
         Top             =   480
         Value           =   -1  'True
         Width           =   2295
      End
      Begin VB.Label Label5 
         Caption         =   "Source image file"
         Height          =   375
         Left            =   480
         TabIndex        =   19
         Top             =   1440
         Width           =   1695
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   6480
      Top             =   5760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Foreground Color"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   13
      Top             =   2760
      Width           =   1935
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Background Color"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   2760
      Width           =   2055
   End
   Begin VB.TextBox txtscale 
      Height          =   360
      Left            =   1680
      TabIndex        =   11
      Text            =   "1.0"
      Top             =   2280
      Width           =   735
   End
   Begin VB.ComboBox cboerrlevel 
      Height          =   360
      Left            =   1680
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   1560
      Width           =   3135
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer2 
      Height          =   6375
      Left            =   10680
      TabIndex        =   7
      Top             =   360
      Visible         =   0   'False
      Width           =   6135
      _Version        =   65536
      _ExtentX        =   10821
      _ExtentY        =   11245
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9960
      Top             =   6120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.ComboBox cbooutputimage 
      Height          =   360
      Left            =   2400
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   3240
      Width           =   2775
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   4935
      Left            =   5520
      TabIndex        =   4
      Top             =   360
      Width           =   5055
      _Version        =   65536
      _ExtentX        =   8916
      _ExtentY        =   8705
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Generate barcode"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   6120
      Width           =   3255
   End
   Begin VB.ComboBox cboversion 
      Height          =   315
      Left            =   1680
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   840
      Width           =   3135
   End
   Begin VB.TextBox txtbarcodevalue 
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Text            =   "http://www.viscomsoft.com"
      Top             =   360
      Width           =   3135
   End
   Begin VB.Label Label6 
      Caption         =   "Save Format"
      Height          =   255
      Left            =   360
      TabIndex        =   20
      Top             =   3360
      Width           =   1695
   End
   Begin VB.Label Label4 
      Caption         =   "Scale (0.5 to 5)"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   2280
      Width           =   1455
   End
   Begin VB.Label Label3 
      Caption         =   "Err Level"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Version"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Barcode value"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim clrBgColor
Dim clrFgColor

Private Sub Check1_Click()

End Sub

Private Sub Check2_Click()

End Sub

Private Sub chkfitrect_Click()

If chkfitrect.Value = 1 Then
    txtleft.Enabled = False
    txttop.Enabled = False
    txtheight.Enabled = False
Else
    txtleft.Enabled = True
    txttop.Enabled = True
    txtheight.Enabled = True

    
End If


End Sub

Private Sub Command1_Click()

If txtbarcodevalue = "" Then
    MsgBox "Please enter the barcode value"
    Exit Sub
End If

 
ImageViewer1.FileName = ""

If Option1.Value = True Then


    strType = cbooutputimage.List(cbooutputimage.ListIndex)

    strFilter = "Image File (*." + Trim(strType) + ")|*." + Trim(strType)
 
    ImageViewer1.QRWriterSave strFile, strType, txtbarcodevalue.Text, cboerrlevel.ListIndex, cboversion.ListIndex, 1, clrFgColor, clrBgColor, txtscale.Text
    
  
    ImageViewer1.FileName = strFile + "." + strType
    
    
    CommonDialog2.Filter = strFilter
    CommonDialog2.ShowSave
    
    strFile = CommonDialog2.FileName
    strFileNamenoExt = Left(strFile, Len(strFile) - 4)
    
    
    ImageViewer1.Save strFileNamenoExt, strType
    
    MsgBox "save to " + CommonDialog2.FileName
  
End If



If Option2.Value = True Then
    
   strType = cbooutputimage.List(cbooutputimage.ListIndex)
    
    strFilter = "Image File (*." + Trim(strType) + ")|*." + Trim(strType)
    
   
    If txtsourceimage = "" Then
         MsgBox "Please input the source image"
         Exit Sub
    
    End If
    
    ImageViewer2.MouseTrackMode = NoSelectionRectMode
    ImageViewer2.FileName = txtsourceimage.Text
    
    ImageViewer2.ShowImage = True ' must set showimage if call DrawImageHBITMAP
    
    bitmaphandle = ImageViewer1.QRWriterSaveHBITMAP(txtbarcodevalue.Text, cboerrlevel.ListIndex, cboversion.ListIndex, 1, clrFgColor, clrBgColor, txtscale.Text)
    
    ImageViewer2.DrawImageHBITMAP 0, 0, bitmaphandle, RGB(128, 128, 128), 255
        
    CommonDialog2.Filter = strFilter
    CommonDialog2.ShowSave
        
    strFile = CommonDialog2.FileName
      
    strFileNamenoExt = Left(strFile, Len(strFile) - 4)
    
    ImageViewer2.Save strFileNamenoExt, strType
    
    MsgBox "save to " + CommonDialog2.FileName
    
    ImageViewer1.DeleteBitmapHandle bitmaphandle
    
    
End If

    


End Sub


Private Sub Command2_Click()
Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"

Me.CommonDialog1.ShowOpen

txtsourceimage = Me.CommonDialog1.FileName

End Sub

Private Sub Command3_Click()

Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"

Me.CommonDialog1.ShowOpen

txtsourceimage = Me.CommonDialog1.FileName


End Sub

Private Sub Command5_Click()
 Me.CommonDialog1.ShowColor
clrBgColor = Me.CommonDialog1.Color

End Sub

Private Sub Command6_Click()
 Me.CommonDialog1.ShowColor
clrFgColor = Me.CommonDialog1.Color
End Sub

Private Sub Form_Load()

clrBgColor = RGB(255, 255, 255)
clrFgColor = RGB(0, 0, 0)

For i = 1 To 40
    cboversion.AddItem "Version " + Trim(Str(i))
Next
cboversion.ListIndex = 0

cboerrlevel.AddItem "Level 1"
cboerrlevel.AddItem "Level 2"
cboerrlevel.AddItem "Level 3"
cboerrlevel.AddItem "Level 4"
cboerrlevel.ListIndex = 0


cbooutputimage.AddItem "Bmp"
cbooutputimage.AddItem "JPG"
cbooutputimage.AddItem "TIF"
cbooutputimage.AddItem "GIF"
cbooutputimage.AddItem "PCX"
cbooutputimage.AddItem "JP2"
cbooutputimage.AddItem "JPC"
cbooutputimage.AddItem "RAS"
cbooutputimage.AddItem "PGX"
cbooutputimage.AddItem "PNM"
cbooutputimage.AddItem "PNG"
cbooutputimage.ListIndex = 0

End Sub

Private Sub Option1_Click()

ImageViewer1.Visible = True

txtsourceimage.Enabled = False
Command3.Enabled = False
End Sub

Private Sub Option2_Click()

txtsourceimage.Enabled = True
Command3.Enabled = True
ImageViewer2.Visible = True

End Sub
