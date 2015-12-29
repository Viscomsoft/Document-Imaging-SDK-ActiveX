VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Draw Multiple Text"
   ClientHeight    =   9705
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11775
   LinkTopic       =   "Form1"
   ScaleHeight     =   9705
   ScaleWidth      =   11775
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txttotalpage 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1320
      TabIndex        =   11
      Text            =   "1"
      Top             =   9240
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save texts for page 2 only"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      TabIndex        =   9
      Top             =   9000
      Width           =   2535
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   7815
      Left            =   120
      TabIndex        =   8
      Top             =   240
      Width           =   11415
      _Version        =   65536
      _ExtentX        =   20135
      _ExtentY        =   13785
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   3480
      TabIndex        =   7
      Text            =   "0"
      Top             =   8880
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   1320
      TabIndex        =   5
      Text            =   "0"
      Top             =   8880
      Width           =   735
   End
   Begin VB.ComboBox cbooutputtype 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   300
      Left            =   2880
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   8280
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Save texts for all pages"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4560
      TabIndex        =   1
      Top             =   8280
      Width           =   2535
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7920
      Top             =   9000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Select Image"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   8280
      Width           =   1335
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   9600
      Top             =   9120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "Total Pages"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   9240
      Width           =   975
   End
   Begin VB.Label Label8 
      Caption         =   "File Height"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   6
      Top             =   8880
      Width           =   975
   End
   Begin VB.Label Label7 
      Caption         =   "File Width"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   8880
      Width           =   855
   End
   Begin VB.Label Label6 
      Caption         =   "Ouput Format"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1680
      TabIndex        =   3
      Top             =   8400
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public clrtrancolor
Public iOldLeft
Public iOldTop
Public iOldWidth
Public iOldHeight


Private Sub cbooutputtype_Click()

    Command5.Enabled = True
    Command2.Enabled = False


If txttotalpage > 1 Then

    If cbooutputtype.List(cbooutputtype.ListIndex) = "TIF" Or cbooutputtype.List(cbooutputtype.ListIndex) = "PDF" Then
        Command5.Enabled = True
        Command2.Enabled = True
    End If

End If

End Sub




Private Sub Command1_Click()

Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"

Me.CommonDialog1.ShowOpen

strFile = Me.CommonDialog1.FileName

If Right(strFile, 3) = "pdf" Or Right(strFile, 3) = "tif" Or Right(strFile, 4) = "tiff" Then
        
        Me.ImageViewer1.LoadMultiPage strFile, 0
        
       txttotalpage = Me.ImageViewer1.GetTotalPage
   
        

Else

    Me.ImageViewer1.FileName = strFile
End If




Drawshapes



ImageViewer1.SetFocus

Text1 = ImageViewer1.FileWidth
Text2 = ImageViewer1.FileHeight

Me.ImageViewer1.ShowText = True




End Sub

Private Sub Command2_Click()

strFile = "c:\test"
 
strType = cbooutputtype.List(cbooutputtype.ListIndex)

Me.ImageViewer1.DrawPageOnly 2

a = Me.ImageViewer1.Save(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If



End Sub

Sub Drawshapes()

ImageViewer1.ClearDrawText


ImageViewer1.TextStyle = 0
ImageViewer1.TextFontSize = 20
ImageViewer1.TextAlphaValue = 255
ImageViewer1.TextFontName = "Arial Black"
ImageViewer1.TextColor = RGB(255, 0, 0)

ImageViewer1.DrawText 100, 50, "This is text1 01234567890", True

ImageViewer1.TextStyle = 0
ImageViewer1.TextFontSize = 30
ImageViewer1.TextFontName = "Arial"
ImageViewer1.TextColor = RGB(0, 255, 0)
ImageViewer1.TextAlphaValue = 255
ImageViewer1.DrawText 100, 150, "This is text2 01234567890", True


ImageViewer1.TextStyle = 0
ImageViewer1.TextFontSize = 30
ImageViewer1.TextFontName = "Arial"
ImageViewer1.TextColor = RGB(0, 0, 255)
ImageViewer1.TextFontStyle = 2
ImageViewer1.TextAlphaValue = 128
ImageViewer1.DrawText 100, 250, "This is text3 01234567890", True

ImageViewer1.TextStyle = 1
ImageViewer1.SetOutlineTextBorderColor RGB(0, 0, 0)
ImageViewer1.TextFontSize = 30
ImageViewer1.TextFontName = "Arial"
ImageViewer1.TextFontStyle = 4
ImageViewer1.TextAlphaValue = 255
ImageViewer1.DrawText 100, 350, "This is text4 01234567890", True

ImageViewer1.TextStyle = 2
ImageViewer1.SetOutlineTextBorderColor RGB(0, 0, 255)
ImageViewer1.SetOutlineTextBackColor RGB(255, 0, 0)
ImageViewer1.TextFontSize = 40
ImageViewer1.TextFontName = "Arial"
ImageViewer1.TextFontStyle = 1
ImageViewer1.TextAlphaValue = 255
ImageViewer1.DrawText 100, 400, "This is text5 01234567890", True




End Sub

Private Sub Command4_Click()

End Sub

Private Sub Command32_Click()
Me.ImageViewer1.ResetDefaultImage False
Me.ImageViewer1.DrawText txtTextLeft, txtTextTop, txttext1 + Chr(13) + Chr(10) + txttext2

End Sub



Private Sub Command3_Click()

End Sub

Private Sub Command5_Click()

strFile = "c:\test"
 
strType = cbooutputtype.List(cbooutputtype.ListIndex)

Me.ImageViewer1.ClearDrawPageOnly

a = Me.ImageViewer1.Save(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If
End Sub

Private Sub Command6_Click()

End Sub

Private Sub Form_Load()
cbooutputtype.AddItem "Bmp"
cbooutputtype.AddItem "JPG"
cbooutputtype.AddItem "TIF"
cbooutputtype.AddItem "PDF"
cbooutputtype.AddItem "WBMP"
cbooutputtype.AddItem "GIF"
cbooutputtype.AddItem "PCX"
cbooutputtype.AddItem "TGA"
cbooutputtype.AddItem "ICO"
cbooutputtype.AddItem "JP2"
cbooutputtype.AddItem "JPC"
cbooutputtype.AddItem "RAS"
cbooutputtype.AddItem "PGX"
cbooutputtype.AddItem "PNM"
cbooutputtype.AddItem "PNG"
cbooutputtype.ListIndex = 0




ImageViewer1.MouseTrackMode = SelectionRectMode

End Sub

Private Sub ImageViewer1_SelectionRectDrawn(ByVal iLeft As Long, ByVal iTop As Long, ByVal iWidth As Long, ByVal iHeight As Long)


 iOldLeft = iLeft
iOldTop = iTop
iOldWidth = iWidth
iOldHeight = iHeight
End Sub
