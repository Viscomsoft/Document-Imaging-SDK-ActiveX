VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "imageviewer2.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "1D and 2D Barcode Reader"
   ClientHeight    =   9270
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15885
   LinkTopic       =   "Form1"
   ScaleHeight     =   9270
   ScaleWidth      =   15885
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command8 
      Caption         =   "Read barcode from PDF "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   13200
      TabIndex        =   27
      Top             =   840
      Width           =   2415
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Read barcode at any orientation"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   10680
      TabIndex        =   26
      Top             =   840
      Width           =   2295
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Read DataMatrix Demo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   8280
      TabIndex        =   25
      Top             =   840
      Width           =   2175
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Read Multiple Barcode Demo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   13080
      TabIndex        =   24
      Top             =   120
      Width           =   2535
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Read 1D Barcode Demo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   10680
      TabIndex        =   23
      Top             =   120
      Width           =   2175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Read QR Code Demo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   8280
      TabIndex        =   22
      Top             =   120
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Detect BarCode"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   8400
      TabIndex        =   21
      Top             =   5880
      Width           =   2055
   End
   Begin VB.TextBox txtPageNo 
      Height          =   375
      Left            =   11400
      TabIndex        =   20
      Text            =   "1"
      Top             =   3240
      Width           =   735
   End
   Begin VB.TextBox txtfilename 
      Enabled         =   0   'False
      Height          =   285
      Left            =   8160
      TabIndex        =   18
      Top             =   2760
      Width           =   5655
   End
   Begin VB.CommandButton cmdnextpage 
      Caption         =   ">>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   12240
      TabIndex        =   17
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton cmdprevpage 
      Caption         =   "<<"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   11160
      TabIndex        =   16
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox txttotpage 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9240
      TabIndex        =   15
      Text            =   "1"
      Top             =   3240
      Width           =   735
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   12600
      Top             =   3120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame2 
      Caption         =   "Zone"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   8160
      TabIndex        =   2
      Top             =   3720
      Width           =   5655
      Begin VB.TextBox txtfileheight 
         Height          =   285
         Left            =   4800
         TabIndex        =   11
         Text            =   "0"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txtfilewidth 
         Height          =   285
         Left            =   3360
         TabIndex        =   9
         Text            =   "0"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txttop 
         Height          =   285
         Left            =   1920
         TabIndex        =   7
         Text            =   "0"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txtleft 
         Height          =   285
         Left            =   720
         TabIndex        =   5
         Text            =   "0"
         Top             =   960
         Width           =   495
      End
      Begin VB.CheckBox chkfullpage 
         Caption         =   "Full Page"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Value           =   1  'Checked
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "uncheck this button recognize for specific zone"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   1320
         TabIndex        =   13
         Top             =   360
         Width           =   3975
      End
      Begin VB.Label Label5 
         Caption         =   "You may draw the selection rectangle on image and click Detect BarCode button"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   495
         Left            =   120
         TabIndex        =   12
         Top             =   1320
         Width           =   5415
      End
      Begin VB.Label lblheight 
         Caption         =   "Height"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4080
         TabIndex        =   10
         Top             =   960
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Width"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2760
         TabIndex        =   8
         Top             =   960
         Width           =   495
      End
      Begin VB.Label Label2 
         Caption         =   "Top"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1320
         TabIndex        =   6
         Top             =   960
         Width           =   375
      End
      Begin VB.Label Label1 
         Caption         =   "Left"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   960
         Width           =   375
      End
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   8655
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   8055
      _Version        =   65536
      _ExtentX        =   14208
      _ExtentY        =   15266
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Select your Image"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8160
      TabIndex        =   0
      Top             =   2280
      Width           =   2775
   End
   Begin VB.Label Label8 
      Caption         =   "Page No."
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10320
      TabIndex        =   19
      Top             =   3240
      Width           =   855
   End
   Begin VB.Label Label7 
      Caption         =   "Total Page"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8160
      TabIndex        =   14
      Top             =   3240
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim strApp As String
Private Sub Check1_Click()

End Sub

Private Sub chkfullpage_Click()

If chkfullpage.Value = 1 Then

    ImageViewer1.MouseTrackMode = 2
Else
    ImageViewer1.MouseTrackMode = 1
End If



End Sub

Private Sub cmdnextpage_Click()
   
If txtPageNo < ImageViewer1.GetTotalPage Then
    txtPageNo = txtPageNo + 1
Else
   txtPageNo = ImageViewer1.GetTotalPage
End If

   
Me.ImageViewer1.LoadMultiPage txtfilename, txtPageNo
       
        
End Sub

Private Sub cmdprevpage_Click()
If txtPageNo > 1 Then
    txtPageNo = txtPageNo - 1
Else
   txtPageNo = 1
End If

Me.ImageViewer1.LoadMultiPage txtfilename, txtPageNo
End Sub



Private Sub cmdstop_Click()





End Sub

Private Sub Command1_Click()
Dim strFile As String

Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen


strFile = Me.CommonDialog1.FileName

txtfilename.Text = strFile

If Right(strFile, 3) = "pdf" Or Right(strFile, 3) = "tif" Or Right(strFile, 4) = "tiff" Then
        Me.ImageViewer1.LoadMultiPage strFile, 0
        
        txttotpage = Me.ImageViewer1.GetTotalPage
        
        txtPageNo = 1
        
        cmdnextpage.Enabled = True
        cmdprevpage.Enabled = True
        
        

Else

    Me.ImageViewer1.FileName = strFile
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
       
End If

ImageViewer1.SetFocus



ImageViewer1.HighQuality = True
ImageViewer1.View = 5


txtleft = 0
txttop = 0
txtfilewidth = Me.ImageViewer1.FileWidth

txtfileheight = Me.ImageViewer1.FileHeight

chkfullpage.Value = 1


End Sub

Private Sub Command2_Click()


If chkfullpage.Value Then
   
    ibarcodeCount = Me.ImageViewer1.BarCodeReadFullPage
Else
    ibarcodeCount = Me.ImageViewer1.BarCodeReadByZone(txtleft, txttop, txtfilewidth, txtfileheight)
End If


If ibarcodeCount < 1 Then

    MsgBox "No barcode found"
    Exit Sub
End If


str1 = "Total " + Str(ibarcodeCount) + " BarCode detected" + Chr(13) + Chr(10)

For i = 0 To ibarcodeCount - 1
            
       strTmp = Me.ImageViewer1.BarCodeGetType(i) + " score:" + Str(Me.ImageViewer1.BarCodeGetScore(i)) + " value:" + Me.ImageViewer1.BarCodeGetValue(i)

       str1 = str1 + Chr(13) + Chr(10) + strTmp
Next

MsgBox str1
End Sub



Private Sub Command3_Click()

    
    Me.ImageViewer1.FileName = strApp + "\barcodetest1.jpg"
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
    txtfilename = ""
    

End Sub

Private Sub Command4_Click()
    
    Me.ImageViewer1.FileName = strApp + "\barcodetest2.jpg"
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
    txtfilename = ""
End Sub

Private Sub Command5_Click()
  Me.ImageViewer1.FileName = strApp + "\barcodetest3.jpg"
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
    txtfilename = ""
End Sub

Private Sub Command6_Click()
  Me.ImageViewer1.FileName = strApp + "\barcodetest4.png"
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
    txtfilename = ""
End Sub

Private Sub Command7_Click()
  Me.ImageViewer1.FileName = strApp + "\barcodetest5.jpg"
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
    txtfilename = ""
End Sub

Private Sub Command8_Click()
  Me.ImageViewer1.FileName = strApp + "\barcodetest6.pdf"
    txttotpage = 1
    txtPageNo = 1
    cmdnextpage.Enabled = False
    cmdprevpage.Enabled = False
    txtfilename = ""
End Sub

Private Sub Form_Load()

strApp = App.Path

iFindIndex = InStr(1, strApp, "Examples")

    If iFindIndex > 0 Then
        strApp = Mid(strApp, 1, iFindIndex - 1)
        
     Else
       
            MsgBox "cannot found barcode image"
       
    End If
    



strApp = strApp + "barcodeimage"

'MsgBox strApp
'ImageViewer1.FileName = strApp + "\barcodedemo.bmp"
'txtfilename.Text = App.Path + "\barcodedemo.bmp"
 ' txttotpage = 1
  '  txtPageNo = 1
   ' cmdnextpage.Enabled = False
   ' cmdprevpage.Enabled = False
    
ImageViewer1.MouseTrackMode = 2
End Sub

Private Sub ImageViewer1_SelectionRectDrawn(ByVal iLeft As Long, ByVal iTop As Long, ByVal iWidth As Long, ByVal iHeight As Long)
If chkfullpage.Value = 0 Then

txtleft = iLeft
txttop = iTop
txtfilewidth = iWidth
txtfileheight = iHeight
End If





End Sub

