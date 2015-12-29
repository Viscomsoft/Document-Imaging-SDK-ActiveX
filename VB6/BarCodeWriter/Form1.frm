VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "IMAGEV~1.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Barcode Writer"
   ClientHeight    =   7020
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   17085
   LinkTopic       =   "Form1"
   ScaleHeight     =   7020
   ScaleWidth      =   17085
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer2 
      Height          =   6375
      Left            =   10680
      TabIndex        =   34
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
   Begin VB.CommandButton Command2 
      Caption         =   "Select Image"
      Enabled         =   0   'False
      Height          =   255
      Left            =   9360
      TabIndex        =   33
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox txtsourceimage 
      Enabled         =   0   'False
      Height          =   285
      Left            =   6480
      TabIndex        =   32
      Top             =   4560
      Width           =   4095
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Draw barcode on image"
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
      Left            =   5040
      TabIndex        =   30
      Top             =   4080
      Width           =   2295
   End
   Begin VB.ComboBox cbooutputimage 
      Height          =   315
      Left            =   7320
      Style           =   2  'Dropdown List
      TabIndex        =   29
      Top             =   3480
      Width           =   2775
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Save as Image Format"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5040
      TabIndex        =   28
      Top             =   3480
      Width           =   2175
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   2895
      Left            =   5040
      TabIndex        =   13
      Top             =   360
      Width           =   5535
      _Version        =   65536
      _ExtentX        =   9763
      _ExtentY        =   5106
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.ComboBox cbofontsize 
      Height          =   315
      Left            =   3360
      Style           =   2  'Dropdown List
      TabIndex        =   16
      Top             =   3240
      Width           =   1455
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
      Left            =   5160
      TabIndex        =   14
      Top             =   5160
      Width           =   3255
   End
   Begin VB.Frame Frame2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   120
      TabIndex        =   12
      Top             =   5040
      Width           =   4815
      Begin VB.TextBox txtheight 
         Enabled         =   0   'False
         Height          =   285
         Left            =   960
         TabIndex        =   22
         Text            =   "100"
         Top             =   1440
         Width           =   735
      End
      Begin VB.TextBox txttop 
         Enabled         =   0   'False
         Height          =   375
         Left            =   960
         TabIndex        =   20
         Text            =   "0"
         Top             =   840
         Width           =   735
      End
      Begin VB.TextBox txtleft 
         Enabled         =   0   'False
         Height          =   285
         Left            =   960
         TabIndex        =   18
         Text            =   "0"
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label11 
         Caption         =   "pixel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   25
         Top             =   1440
         Width           =   495
      End
      Begin VB.Label Label10 
         Caption         =   "pixel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   24
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label9 
         Caption         =   "pixel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   23
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label8 
         Caption         =   "Height"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   1440
         Width           =   615
      End
      Begin VB.Label Label7 
         Caption         =   "Top"
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
         TabIndex        =   19
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label6 
         Caption         =   "Left"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   17
         Top             =   360
         Width           =   375
      End
   End
   Begin VB.CheckBox chkfitrect 
      Caption         =   "Fit to Rectangle"
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
      Left            =   240
      TabIndex        =   11
      Top             =   4560
      Value           =   1  'Checked
      Width           =   1575
   End
   Begin VB.CheckBox chkshowcheckdigit 
      Caption         =   "Show Check Digit"
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
      Left            =   240
      TabIndex        =   10
      Top             =   3840
      Value           =   1  'Checked
      Width           =   2175
   End
   Begin VB.CheckBox chkshowtext 
      Caption         =   "Show Text"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   9
      Top             =   3240
      Value           =   1  'Checked
      Width           =   1815
   End
   Begin VB.Frame Frame1 
      Caption         =   "Output Image Area"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   240
      TabIndex        =   4
      Top             =   1440
      Width           =   4575
      Begin VB.TextBox txtbarcodeheight 
         Height          =   375
         Left            =   1440
         TabIndex        =   8
         Text            =   "100"
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox txtbarcodewidth 
         Height          =   375
         Left            =   1440
         TabIndex        =   6
         Text            =   "200"
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label13 
         Caption         =   "pixel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2760
         TabIndex        =   27
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label12 
         Caption         =   "pixel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2760
         TabIndex        =   26
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label4 
         Caption         =   "Height"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "Width"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   615
      End
   End
   Begin VB.ComboBox cbobarcodestand 
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
      Top             =   360
      Width           =   3135
   End
   Begin VB.Label Label14 
      Caption         =   "Source image file"
      Height          =   375
      Left            =   5040
      TabIndex        =   31
      Top             =   4560
      Width           =   1335
   End
   Begin VB.Label Label5 
      Caption         =   "Font Size"
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
      Left            =   2400
      TabIndex        =   15
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "Barcode Standard"
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
      Left            =   240
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


Private Sub Check2_Click()
If Check2.Value = 1 Then
    ImageViewer2.Visible = True
    Command2.Enabled = True
Else
    ImageViewer2.Visible = False
    Command2.Enabled = False
End If


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

strFile = "c:\test1"

ImageViewer1.BarCodeWriterSetValue txtbarcodevalue.Text
ImageViewer1.BarCodeWriterSetStandard cbobarcodestand.ListIndex
ImageViewer1.BarCodeWriterSetOutputArea txtbarcodewidth, txtbarcodeheight
ImageViewer1.BarCodeWriterShowCheckDigit chkshowcheckdigit.Value
ImageViewer1.BarCodeWriterShowText chkshowtext.Value
ImageViewer1.BarCodeWriterFitToRect chkfitrect.Value

ImageViewer1.BarCodeWriterSetFontSize Val(cbofontsize.List(cbofontsize.ListIndex))
ImageViewer1.BarCodeWriterLeftTopPos txtleft, txttop
ImageViewer1.BarCodeWriterSetHeight txtheight



ImageViewer1.BarCodeWriterPreview

strError = ImageViewer1.BarCodeWriterGetErrorMessage

If strError <> "" Then
    MsgBox strError
    Exit Sub
End If

 
 
If Check1.Value = 1 Then

strType = cbooutputimage.List(cbooutputimage.ListIndex)

iresult = ImageViewer1.BarCodeWriterSave(strFile, strType)

If iresult = 0 Then

    MsgBox ImageViewer1.BarCodeWriterGetErrorMessage
   
Else
    MsgBox "Save " + strFile + "." + strType + " Complete"
    
End If

End If


If Check2.Value = 1 Then
    
    If txtsourceimage = "" Then
         MsgBox "Please input the source image"
         Exit Sub
    
    End If
    
    ImageViewer2.MouseTrackMode = NoSelectionRectMode
    ImageViewer2.FileName = txtsourceimage.Text
    
    ImageViewer2.ShowImage = True ' must set showimage if call DrawImageHBITMAP
    
    bitmaphandle = ImageViewer1.BarCodeWriterSaveHBITMAP
    
    ImageViewer2.DrawImageHBITMAP 0, 0, bitmaphandle, RGB(255, 0, 0), 255
    
    
    ImageViewer1.DeleteBitmapHandle bitmaphandle
        
        
        
    
End If

    


End Sub


Private Sub Command2_Click()
Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"

Me.CommonDialog1.ShowOpen

txtsourceimage = Me.CommonDialog1.FileName

End Sub

Private Sub Form_Load()

For i = 8 To 60
    cbofontsize.AddItem Trim(Str(i))
Next
cbofontsize.ListIndex = 10

cbobarcodestand.AddItem "Codabar"
cbobarcodestand.AddItem "Code11"
cbobarcodestand.AddItem "Code128A"
cbobarcodestand.AddItem "Code128B"
cbobarcodestand.AddItem "Code128C"
cbobarcodestand.AddItem "Code39"
cbobarcodestand.AddItem "EAN8"
cbobarcodestand.AddItem "EAN13"
cbobarcodestand.AddItem "Industrial25"
cbobarcodestand.AddItem "Interleaved25"
cbobarcodestand.AddItem "Matrix25"
cbobarcodestand.AddItem "Plessey"
cbobarcodestand.AddItem "UPCA"
cbobarcodestand.AddItem "UPCE"
cbobarcodestand.ListIndex = 0


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
