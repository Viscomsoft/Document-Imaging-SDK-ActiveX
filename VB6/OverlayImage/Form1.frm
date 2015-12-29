VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Overlay Image"
   ClientHeight    =   7380
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11775
   LinkTopic       =   "Form1"
   ScaleHeight     =   7380
   ScaleWidth      =   11775
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      Caption         =   "Save Overlay image for page 2 only"
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
      Left            =   4320
      TabIndex        =   24
      Top             =   6240
      Width           =   2655
   End
   Begin VB.TextBox txttotalpage 
      Height          =   375
      Left            =   1440
      TabIndex        =   23
      Text            =   "1"
      Top             =   6480
      Width           =   735
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   5175
      Left            =   240
      TabIndex        =   21
      Top             =   240
      Width           =   5895
      _Version        =   65536
      _ExtentX        =   10398
      _ExtentY        =   9128
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
      Left            =   9600
      TabIndex        =   20
      Text            =   "0"
      Top             =   240
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
      Left            =   7320
      TabIndex        =   18
      Text            =   "0"
      Top             =   240
      Width           =   975
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
      Left            =   2640
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   5760
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Save Overlay image for all pages"
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
      Left            =   4320
      TabIndex        =   14
      Top             =   5640
      Width           =   2655
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   7080
      Top             =   4560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "Overlay image"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3495
      Left            =   6360
      TabIndex        =   1
      Top             =   600
      Width           =   5055
      Begin VB.CommandButton Command4 
         Caption         =   "Update Image"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3240
         TabIndex        =   13
         Top             =   2880
         Width           =   1215
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Select Color"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   12
         Top             =   2520
         Width           =   975
      End
      Begin VB.CommandButton Command2 
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
         Height          =   255
         Left            =   720
         TabIndex        =   9
         Top             =   1320
         Width           =   1215
      End
      Begin VB.TextBox txtImage 
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
         Left            =   720
         TabIndex        =   8
         Top             =   840
         Width           =   4215
      End
      Begin VB.TextBox txtTop 
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
         Left            =   2160
         TabIndex        =   6
         Text            =   "0"
         Top             =   360
         Width           =   495
      End
      Begin VB.TextBox txtLeft 
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
         Left            =   600
         TabIndex        =   4
         Text            =   "0"
         Top             =   360
         Width           =   495
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   255
         Left            =   720
         TabIndex        =   2
         Top             =   1920
         Width           =   3495
         _ExtentX        =   6165
         _ExtentY        =   450
         _Version        =   393216
         Max             =   255
         SelStart        =   255
         TickFrequency   =   10
         Value           =   255
      End
      Begin VB.Label Label5 
         Caption         =   "Transparent Color"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   2520
         Width           =   1335
      End
      Begin VB.Label Label4 
         Caption         =   "Alpha"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1920
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "Image"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label2 
         Caption         =   "Top"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1440
         TabIndex        =   5
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Left"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   360
         Width           =   495
      End
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
      Left            =   240
      TabIndex        =   0
      Top             =   5640
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   7680
      Top             =   4560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label9 
      Caption         =   "Total Pages"
      Height          =   255
      Left            =   240
      TabIndex        =   22
      Top             =   6480
      Width           =   975
   End
   Begin VB.Label Label8 
      Caption         =   "File Height"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8520
      TabIndex        =   19
      Top             =   240
      Width           =   855
   End
   Begin VB.Label Label7 
      Caption         =   "File Width"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6360
      TabIndex        =   17
      Top             =   240
      Width           =   855
   End
   Begin VB.Label Label6 
      Caption         =   "Ouput Format"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      TabIndex        =   16
      Top             =   5760
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public clrtrancolor

Private Sub cbooutputtype_Click()
   Command5.Enabled = True
    Command6.Enabled = False


If txttotalpage > 1 Then

    If cbooutputtype.List(cbooutputtype.ListIndex) = "TIF" Or cbooutputtype.List(cbooutputtype.ListIndex) = "PDF" Then
        Command5.Enabled = True
        Command6.Enabled = True
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



ImageViewer1.SetFocus

Text1 = ImageViewer1.FileWidth
Text2 = ImageViewer1.FileHeight

Me.ImageViewer1.ShowImage = True

txtImage = App.Path + "\image.bmp"
Me.ImageViewer1.DrawImage txtLeft, txtTop, txtImage, clrtrancolor, Slider1.Value



End Sub

Private Sub Command2_Click()


Me.CommonDialog2.Filter = "All Files (*.*)|*.*|JPEG (*.jpg)|*.jpg|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|Gif (*.gif)|*.gif |PNG (*.png)|*.png|Icon (*.ico)|*.ico"
Me.CommonDialog2.ShowOpen
Me.ImageViewer1.ShowImage = True
txtImage = CommonDialog2.FileName
End Sub

Private Sub Command3_Click()
Me.CommonDialog2.ShowColor
clrtrancolor = CommonDialog2.Color

End Sub

Private Sub Command4_Click()
Me.ImageViewer1.ResetDefaultImage False
Me.ImageViewer1.DrawImage txtLeft, txtTop, txtImage, clrtrancolor, Slider1.Value

End Sub

Private Sub Command5_Click()

strFile = "c:\test"
 
strType = cbooutputtype.List(cbooutputtype.ListIndex)

'clear all drawpageonly call
Me.ImageViewer1.ClearDrawPageOnly

a = Me.ImageViewer1.Save(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If
End Sub

Private Sub Command6_Click()
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

Private Sub Form_Load()
clrtrancolor = RGB(0, 0, 0)

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


End Sub

