VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "OCR to text file"
   ClientHeight    =   9975
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12180
   LinkTopic       =   "Form1"
   ScaleHeight     =   9975
   ScaleWidth      =   12180
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox chkuseadvpdf 
      Caption         =   "Use Advanced PDF Viewer"
      Height          =   375
      Left            =   6600
      TabIndex        =   48
      Top             =   0
      Width           =   2775
   End
   Begin VB.Frame Frame6 
      Height          =   735
      Left            =   480
      TabIndex        =   45
      Top             =   8040
      Width           =   4815
      Begin VB.OptionButton Option2 
         Caption         =   "Blocking Mode"
         Height          =   255
         Left            =   3000
         TabIndex        =   47
         Top             =   240
         Width           =   1695
      End
      Begin VB.OptionButton OptMode 
         Caption         =   "Asynchronous Mode"
         Height          =   255
         Left            =   240
         TabIndex        =   46
         Top             =   240
         Value           =   -1  'True
         Width           =   1935
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
      Left            =   6480
      TabIndex        =   40
      Top             =   3120
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
         TabIndex        =   44
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
         TabIndex        =   43
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
         TabIndex        =   42
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
         TabIndex        =   41
         Top             =   480
         Width           =   3375
      End
   End
   Begin VB.TextBox txtPageNo 
      Height          =   375
      Left            =   9720
      TabIndex        =   39
      Text            =   "1"
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox txtfilename 
      Enabled         =   0   'False
      Height          =   285
      Left            =   6480
      TabIndex        =   37
      Top             =   840
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
      Left            =   10560
      TabIndex        =   36
      Top             =   360
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
      Left            =   9480
      TabIndex        =   35
      Top             =   360
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
      Left            =   7560
      TabIndex        =   34
      Text            =   "1"
      Top             =   1320
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      Height          =   375
      Left            =   3000
      TabIndex        =   30
      Text            =   "0"
      Top             =   7320
      Width           =   1575
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
      TabIndex        =   21
      Top             =   4560
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
         TabIndex        =   28
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
         TabIndex        =   27
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
         TabIndex        =   26
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
         TabIndex        =   25
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
         TabIndex        =   24
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
         TabIndex        =   23
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
         TabIndex        =   22
         Top             =   240
         Value           =   -1  'True
         Width           =   975
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Output"
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
      Left            =   6480
      TabIndex        =   18
      Top             =   8280
      Width           =   5655
      Begin VB.OptionButton optoutput2 
         Caption         =   "Write the recognized text to text file"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   240
         TabIndex        =   20
         Top             =   720
         Width           =   4695
      End
      Begin VB.OptionButton optoutput1 
         Caption         =   "Display the recognized text"
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
         Left            =   240
         TabIndex        =   19
         Top             =   360
         Value           =   -1  'True
         Width           =   3855
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   11160
      Top             =   2760
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdstop 
      Caption         =   "Stop"
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
      Left            =   3480
      TabIndex        =   17
      Top             =   8880
      Width           =   2295
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
      Left            =   6480
      TabIndex        =   7
      Top             =   6240
      Width           =   5655
      Begin VB.TextBox txtfileheight 
         Height          =   285
         Left            =   4800
         TabIndex        =   16
         Text            =   "0"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txtfilewidth 
         Height          =   285
         Left            =   3360
         TabIndex        =   14
         Text            =   "0"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txttop 
         Height          =   285
         Left            =   1920
         TabIndex        =   12
         Text            =   "0"
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox txtleft 
         Height          =   285
         Left            =   720
         TabIndex        =   10
         Text            =   "0"
         Top             =   960
         Width           =   495
      End
      Begin VB.CheckBox chkfullpage 
         Caption         =   "Full Page"
         Height          =   255
         Left            =   120
         TabIndex        =   8
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
         TabIndex        =   32
         Top             =   360
         Width           =   3975
      End
      Begin VB.Label Label5 
         Caption         =   "You may draw the selection rectangle on image and click Start Regcognize button"
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
         TabIndex        =   29
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
         TabIndex        =   15
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
         TabIndex        =   13
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
         TabIndex        =   11
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
         TabIndex        =   9
         Top             =   960
         Width           =   375
      End
   End
   Begin VB.CommandButton cmdscan 
      Caption         =   "Start Recognize"
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
      Left            =   480
      TabIndex        =   6
      Top             =   8880
      Width           =   2535
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
      Height          =   1335
      Left            =   6480
      TabIndex        =   2
      Top             =   1800
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
      Height          =   7095
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6375
      _Version        =   65536
      _ExtentX        =   11245
      _ExtentY        =   12515
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
      Left            =   6480
      TabIndex        =   0
      Top             =   360
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
      Left            =   8640
      TabIndex        =   38
      Top             =   1320
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
      Left            =   6480
      TabIndex        =   33
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label4 
      Caption         =   "Total Recognized Character"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   31
      Top             =   7320
      Width           =   2775
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


If OptMode.Value = True Then
        Me.ImageViewer1.OCRScanTextAsync True
Else
       Me.ImageViewer1.OCRScanTextAsync False
End If


iresult = Me.ImageViewer1.OCRStartScan(iLangIndex, "dictfiles")



If iresult = -3 Then
    MsgBox "Please select image first"
    Exit Sub
Else
    If iresult <> 1 Then
       MsgBox "Start OCR Failed"
       Exit Sub
    End If
    
    If OptMode.Value = False Then
            Text1 = ImageViewer1.OCRGetRecognizedCharCount
            
            If optoutput1.Value Then
    
                MsgBox ImageViewer1.OCRGetRecognizedText
            End If
    
            If optoutput2.Value Then
                 Me.CommonDialog1.Filter = "Text Files (*.txt)|*.txt"
                CommonDialog1.ShowSave
                bresult = ImageViewer1.OCRSaveRecognizedText(CommonDialog1.FileName)
        
                If bresult Then
                    MsgBox "Save completed"
                Else
                    MsgBox "Save failed"
                End If
            End If
    
 
    
    End If
    
    
    
End If


If OptMode.Value = True Then
    cmdscan.Enabled = False
    cmdstop.Enabled = True

End If

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



ImageViewer1.HighQuality = True
ImageViewer1.View = 5


txtleft = 0
txttop = 0
txtfilewidth = Me.ImageViewer1.FileWidth

txtfileheight = Me.ImageViewer1.FileHeight

chkfullpage.Value = 1
ImageViewer1.MouseTrackMode = 2

End Sub

Private Sub ImageViewer1_OCRRecognized(ByVal bSuccess As Boolean)


If bSuccess Then
        
Text1 = ImageViewer1.OCRGetRecognizedCharCount
        
    
       
  If optoutput1.Value Then
    
        MsgBox ImageViewer1.OCRGetRecognizedText
    
  End If
    
  If optoutput2.Value Then
        Me.CommonDialog1.Filter = "Text Files (*.txt)|*.txt"

    
        CommonDialog1.ShowSave
        
        bresult = ImageViewer1.OCRSaveRecognizedText(CommonDialog1.FileName)
        
        If bresult Then
            MsgBox "Save completed"
        Else
            MsgBox "Save failed"
        End If
        
        
    
  End If
    
 

End If

   
  cmdscan.Enabled = True
  cmdstop.Enabled = False
  

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
