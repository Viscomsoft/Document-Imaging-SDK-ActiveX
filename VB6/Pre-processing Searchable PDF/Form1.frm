VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   Caption         =   "Pre-processing Searchable PDF - OCR to searchable Text File, let you have chance change the text before output searchable PDF"
   ClientHeight    =   10395
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   17415
   LinkTopic       =   "Form1"
   ScaleHeight     =   10395
   ScaleWidth      =   17415
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog3 
      Left            =   13680
      Top             =   7920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command2 
      Caption         =   "2. Convert to Searchable PDF File"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7080
      TabIndex        =   46
      Top             =   9240
      Width           =   4935
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   12600
      Top             =   5760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CheckBox chkuseadvpdf 
      Caption         =   "Use Advanced PDF Viewer"
      Height          =   255
      Left            =   6600
      TabIndex        =   43
      Top             =   120
      Width           =   4575
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   375
      Left            =   7080
      TabIndex        =   42
      Top             =   6000
      Width           =   5655
      _ExtentX        =   9975
      _ExtentY        =   661
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Frame Frame6 
      Caption         =   "Mode"
      Height          =   615
      Left            =   6960
      TabIndex        =   39
      Top             =   5160
      Width           =   5655
      Begin VB.OptionButton Option2 
         Caption         =   "Blocking"
         Height          =   255
         Left            =   2280
         TabIndex        =   41
         Top             =   240
         Width           =   3135
      End
      Begin VB.OptionButton OptAsync 
         Caption         =   "Asynchronous"
         Height          =   255
         Left            =   240
         TabIndex        =   40
         Top             =   240
         Value           =   -1  'True
         Width           =   1575
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Character Filter"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   10920
      TabIndex        =   34
      Top             =   1920
      Width           =   3975
      Begin VB.OptionButton optfilter4 
         Caption         =   "Recognize lowercase only"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   38
         Top             =   960
         Width           =   3255
      End
      Begin VB.OptionButton optfilter3 
         Caption         =   "Recognize uppercase only"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   37
         Top             =   720
         Width           =   3255
      End
      Begin VB.OptionButton optfilter1 
         Caption         =   "No Filter"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   36
         Top             =   240
         Value           =   -1  'True
         Width           =   3015
      End
      Begin VB.OptionButton optfilter2 
         Caption         =   "Recognize numeric only  "
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   480
         Width           =   3375
      End
   End
   Begin VB.TextBox txtPageNo 
      Height          =   375
      Left            =   9600
      TabIndex        =   33
      Text            =   "1"
      Top             =   1440
      Width           =   735
   End
   Begin VB.TextBox txtfilename 
      Enabled         =   0   'False
      Height          =   285
      Left            =   6480
      TabIndex        =   31
      Top             =   960
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
      Left            =   10440
      TabIndex        =   30
      Top             =   480
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
      Left            =   9360
      TabIndex        =   29
      Top             =   480
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
      Left            =   7440
      TabIndex        =   28
      Text            =   "1"
      Top             =   1440
      Width           =   735
   End
   Begin VB.Frame Frame4 
      Caption         =   "Language"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   6480
      TabIndex        =   17
      Top             =   3360
      Width           =   3975
      Begin VB.OptionButton optlang7 
         Caption         =   "Spanish"
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
         Left            =   1800
         TabIndex        =   24
         Top             =   840
         Width           =   1335
      End
      Begin VB.OptionButton optlang6 
         Caption         =   "Portuguese"
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
         Left            =   1800
         TabIndex        =   23
         Top             =   600
         Width           =   1455
      End
      Begin VB.OptionButton optlang5 
         Caption         =   "Dutch"
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
         Left            =   1800
         TabIndex        =   22
         Top             =   240
         Width           =   1215
      End
      Begin VB.OptionButton optlang4 
         Caption         =   "Italian"
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
         Left            =   120
         TabIndex        =   21
         Top             =   1200
         Width           =   1215
      End
      Begin VB.OptionButton optlang3 
         Caption         =   "Fraktur"
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
         Left            =   120
         TabIndex        =   20
         Top             =   840
         Width           =   1215
      End
      Begin VB.OptionButton optlang2 
         Caption         =   "German"
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
         Left            =   120
         TabIndex        =   19
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton optlang1 
         Caption         =   "English"
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
         Left            =   120
         TabIndex        =   18
         Top             =   240
         Value           =   -1  'True
         Width           =   975
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   10800
      Top             =   1320
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
      Height          =   1575
      Left            =   10920
      TabIndex        =   7
      Top             =   3360
      Width           =   5655
      Begin VB.TextBox txtfileheight 
         Height          =   285
         Left            =   4800
         TabIndex        =   16
         Text            =   "0"
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox txtfilewidth 
         Height          =   285
         Left            =   3360
         TabIndex        =   14
         Text            =   "0"
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox txttop 
         Height          =   285
         Left            =   1920
         TabIndex        =   12
         Text            =   "0"
         Top             =   720
         Width           =   615
      End
      Begin VB.TextBox txtleft 
         Height          =   285
         Left            =   720
         TabIndex        =   10
         Text            =   "0"
         Top             =   720
         Width           =   495
      End
      Begin VB.CheckBox chkfullpage 
         Caption         =   "Full Page"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   240
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
         TabIndex        =   26
         Top             =   240
         Width           =   3975
      End
      Begin VB.Label Label5 
         Caption         =   "You may draw the selection rectangle on image and click Start Convert to Searchable PDF/A Button"
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
         TabIndex        =   25
         Top             =   1080
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
         TabIndex        =   15
         Top             =   720
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
         TabIndex        =   13
         Top             =   720
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
         TabIndex        =   11
         Top             =   720
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
         TabIndex        =   9
         Top             =   720
         Width           =   375
      End
   End
   Begin VB.CommandButton cmdscan 
      Caption         =   "1. Convert to Searchable Text File"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7080
      TabIndex        =   6
      Top             =   6480
      Width           =   4935
   End
   Begin VB.Frame Frame1 
      Caption         =   "Recognize Mode"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   6480
      TabIndex        =   2
      Top             =   1920
      Width           =   3975
      Begin VB.OptionButton optmode3 
         Caption         =   "Excellent"
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
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   2175
      End
      Begin VB.OptionButton optmode2 
         Caption         =   "Normal"
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
         Left            =   120
         TabIndex        =   4
         Top             =   600
         Value           =   -1  'True
         Width           =   1575
      End
      Begin VB.OptionButton optmode1 
         Caption         =   "Fast"
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
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   2295
      End
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   8415
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6375
      _Version        =   65536
      _ExtentX        =   11245
      _ExtentY        =   14843
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Select Image"
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
      Left            =   6360
      TabIndex        =   0
      Top             =   480
      Width           =   2775
   End
   Begin VB.Label Label4 
      Caption         =   $"Form1.frx":0000
      Height          =   615
      Left            =   6480
      TabIndex        =   47
      Top             =   8640
      Width           =   6855
   End
   Begin VB.Label Label10 
      Caption         =   "The output text file will record each  recognized  characters and left, top, right , bottom position. "
      Height          =   255
      Left            =   6480
      TabIndex        =   45
      Top             =   8160
      Width           =   7095
   End
   Begin VB.Label Label9 
      Caption         =   "If your output text file name output.txt, the first page of text file will named output0001.txt. Next page named output0002.txt..."
      Height          =   495
      Left            =   6600
      TabIndex        =   44
      Top             =   7560
      Width           =   6375
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
      Left            =   8520
      TabIndex        =   32
      Top             =   1440
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
      Left            =   6360
      TabIndex        =   27
      Top             =   1440
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check1_Click()

End Sub

Private Sub chkfullpage_Click()

If chkfullpage.Value = 1 Then

    ImageViewer1.MouseTrackMode = 2
Else
    ImageViewer1.MouseTrackMode = 1
End If



End Sub

Private Sub chkpdfausejpeg_Click()

If chkpdfausejpeg.Value = 1 Then
    txtpdfajpegquality.Enabled = True
Else
    txtpdfajpegquality.Enabled = False

End If

End Sub

Private Sub chkuseadvpdf_Click()
If chkuseadvpdf.Value = 1 Then
    Me.ImageViewer1.PDFUseAdvancedViewer = True
Else
    Me.ImageViewer1.PDFUseAdvancedViewer = False
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

Private Sub cmdscan_Click()


ProgressBar1.Value = 0

 If OptAsync.Value = True Then
 
    Me.ImageViewer1.OCRScanTextAsync True
 Else
    Me.ImageViewer1.OCRScanTextAsync False
 End If
 
iLangIndex = 0

If optlang1.Value Then
    iLangIndex = 0
End If

If optlang2.Value Then
    iLangIndex = 1
End If

If optlang3.Value Then
    iLangIndex = 2
End If

If optlang4.Value Then
    iLangIndex = 3
End If

If optlang5.Value Then
    iLangIndex = 4
End If

If optlang6.Value Then
    iLangIndex = 5
End If

If optlang7.Value Then
    iLangIndex = 6
End If

iMode = 0

If optmode1.Value Then
    iMode = 0
End If

If optmode2.Value Then
    iMode = 1
End If

If optmode3.Value Then
    iMode = 2
End If





If optfilter1.Value Then
    Me.ImageViewer1.OCRCharFilter = ""
End If

If optfilter2.Value Then
    Me.ImageViewer1.OCRCharFilter = "0123456789"
End If

If optfilter3.Value Then
    Me.ImageViewer1.OCRCharFilter = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
End If

If optfilter4.Value Then
    Me.ImageViewer1.OCRCharFilter = "abcdefghijklmnopqrstuvwxyz"
End If





Me.ImageViewer1.OCRRecognizeMode = iMode


If chkfullpage.Value Then
   
    Me.ImageViewer1.OCRSetRect 0, 0, 0, 0
Else
    Me.ImageViewer1.OCRSetRect txtleft, txttop, txtfilewidth, txtfileheight

End If

strFilter = "Text File(*.txt)|*.txt||"



    CommonDialog2.Filter = strFilter
    CommonDialog2.ShowSave
    If Err.Number = 0 Then
 
     iresult = Me.ImageViewer1.OCR2SearchableTextFile(CommonDialog2.FileName, iLangIndex, "dictfiles")
 
    End If




'If OptAsync.Value = True Then
 '   MsgBox "The text file save completed, you may open these text files and editing the text, let the text of Searchable PDF file more accuracy "
  '  Exit Sub
'Else


    If OptAsync.Value = False Then
         If iresult = 1 Then
             MsgBox "The text file save completed, you may open these text file and editing the text,let the text of Searchable PDF file more accuracy"
               Command2.Enabled = True
               
          Else
             MsgBox "Failed"
    
        End If
     Else
        cmdscan.Enabled = False
    End If
    
'End If




End Sub

Private Sub cmdstop_Click()
Me.ImageViewer1.OCRStopScan


cmdscan.Enabled = True
cmdstop.Enabled = False
Text1 = 0
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

chkfullpage.Value = 1


ImageViewer1.HighQuality = True
ImageViewer1.View = 5


txtleft = 0
txttop = 0
txtfilewidth = Me.ImageViewer1.FileWidth

txtfileheight = Me.ImageViewer1.FileHeight

chkfullpage.Value = 1
ImageViewer1.MouseTrackMode = 2

End Sub







Private Sub Command2_Click()
strFilter = "PDF File(*.pdf)|*.pdf||"




If chkfullpage.Value <> 1 Then
    Me.ImageViewer1.DrawSelectionRect txtleft, txttop, txtfilewidth, txtfileheight
    Me.ImageViewer1.Crop
   
End If



    CommonDialog3.Filter = strFilter
    CommonDialog3.ShowSave
    If Err.Number = 0 Then
 
        result = Me.ImageViewer1.OCRTextFile2SearchablePDF(CommonDialog2.FileName, CommonDialog3.FileName)
        
        If result = 1 Then
        
            MsgBox "Save " + CommonDialog3.FileName + " Completed"
        End If
        
        If result = -1 Then
        
            MsgBox "Save " + CommonDialog3.FileName + " Completed,  but some page cannot matched the text files"
        End If
        
    End If



End Sub

Private Sub Command3_Click()
End Sub

Private Sub ImageViewer1_OCRPDFATextFile(ByVal iProgress As Integer)
ProgressBar1.Value = iProgress

If iProgress = 100 Then
     MsgBox "The text file save completed, you may open these text files and editing the text, let the text of Searchable PDF file more accuracy "
     cmdscan.Enabled = True
     Command2.Enabled = True
               
End If

End Sub

Private Sub ImageViewer1_SelectionRectDrawn(ByVal iLeft As Long, ByVal iTop As Long, ByVal iWidth As Long, ByVal iHeight As Long)
If chkfullpage.Value = 0 Then

txtleft = iLeft
txttop = iTop
txtfilewidth = iWidth
txtfileheight = iHeight
End If





End Sub

Private Sub optmode1_Click()
Me.ImageViewer1.OCRRecognizeMode = 0

End Sub

Private Sub optmode2_Click()
Me.ImageViewer1.OCRRecognizeMode = 1

End Sub

Private Sub optmode3_Click()
Me.ImageViewer1.OCRRecognizeMode = 2

End Sub
