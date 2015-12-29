VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8085
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7635
   LinkTopic       =   "Form1"
   ScaleHeight     =   8085
   ScaleWidth      =   7635
   StartUpPosition =   2  'CenterScreen
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   735
      Left            =   6240
      TabIndex        =   26
      Top             =   480
      Visible         =   0   'False
      Width           =   975
      _Version        =   65536
      _ExtentX        =   1720
      _ExtentY        =   1296
      _StockProps     =   0
   End
   Begin VB.Frame Frame3 
      Caption         =   "Convert Image to Single/Multipage PDF file"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   240
      TabIndex        =   21
      Top             =   6240
      Width           =   7215
      Begin VB.CommandButton Command9 
         Caption         =   "Convert to PDF"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1560
         TabIndex        =   25
         Top             =   840
         Width           =   1575
      End
      Begin VB.TextBox txtimagefile 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1560
         TabIndex        =   23
         Top             =   360
         Width           =   3975
      End
      Begin VB.CommandButton Command8 
         Caption         =   "Select File"
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
         Left            =   5760
         TabIndex        =   22
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label7 
         Caption         =   "Image File"
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
         TabIndex        =   24
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Export Page"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   240
      TabIndex        =   12
      Top             =   3960
      Width           =   7215
      Begin VB.ComboBox cbobpp 
         Height          =   315
         Left            =   4800
         Style           =   2  'Dropdown List
         TabIndex        =   27
         Top             =   840
         Width           =   1575
      End
      Begin VB.ComboBox cboExportType 
         Height          =   315
         Left            =   1560
         Style           =   2  'Dropdown List
         TabIndex        =   20
         Top             =   840
         Width           =   1935
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Export"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2520
         TabIndex        =   18
         Top             =   1320
         Width           =   1575
      End
      Begin VB.TextBox txtPageNo 
         Height          =   285
         Left            =   1560
         TabIndex        =   17
         Text            =   "1"
         Top             =   1320
         Width           =   615
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Select File"
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
         Left            =   5760
         TabIndex        =   15
         Top             =   360
         Width           =   1215
      End
      Begin VB.TextBox txtSourceFile 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1560
         TabIndex        =   14
         Top             =   360
         Width           =   3975
      End
      Begin VB.Label Label5 
         Caption         =   "bpp"
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
         Left            =   3840
         TabIndex        =   28
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label4 
         Caption         =   "Export Type"
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
         TabIndex        =   19
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Page No"
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
         TabIndex        =   16
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "TIF File Name"
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
         TabIndex        =   13
         Top             =   360
         Width           =   1215
      End
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Delete All"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   11
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "TIF Compression "
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   240
      TabIndex        =   9
      Top             =   240
      Width           =   5535
      Begin VB.OptionButton OptCITT3 
         Caption         =   "CITT3"
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
         Left            =   1080
         TabIndex        =   1
         Top             =   360
         Width           =   855
      End
      Begin VB.OptionButton OptNone 
         Caption         =   "None"
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
         Left            =   4320
         TabIndex        =   4
         Top             =   360
         Width           =   975
      End
      Begin VB.OptionButton OptLZW 
         Caption         =   "LZW"
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
         Left            =   240
         TabIndex        =   0
         Top             =   360
         Value           =   -1  'True
         Width           =   735
      End
      Begin VB.OptionButton OptCITT4 
         Caption         =   "CITT4"
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
         Left            =   2160
         TabIndex        =   2
         Top             =   360
         Width           =   855
      End
      Begin VB.OptionButton OptRLE 
         Caption         =   "Packbits"
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
         Left            =   3120
         TabIndex        =   3
         Top             =   360
         Width           =   975
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   6480
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Create TIF"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   8
      Top             =   2760
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Delete file"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   7
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add file"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   6
      Top             =   1560
      Width           =   1095
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2040
      Left            =   240
      TabIndex        =   5
      Top             =   1560
      Width           =   4335
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   6480
      Top             =   2280
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "The following files will create multi page TIF"
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
      Left            =   240
      TabIndex        =   10
      Top             =   1320
      Width           =   4095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()


Me.CommonDialog1.Filter = "All Files (*.*)|*.*|JPEG (*.jpg)|*.jpg|Bitmap (*.bmp)|*.bmp|Gif (*.gif)|*.gif|TIF (*.tif)|*.tif|Icon (*.ico)|*.ico||"

Me.CommonDialog1.ShowOpen


Me.List1.AddItem CommonDialog1.FileName


End Sub

Private Sub Command2_Click()

If List1.ListIndex <> -1 Then
    List1.RemoveItem List1.ListIndex
End If

End Sub

Private Sub Command3_Click()


Me.ImageViewer1.RemoveAllTIF

For i = 0 To List1.ListCount - 1
    ImageViewer1.AddTIF (List1.List(i))
Next

result = ImageViewer1.SaveTIF("c:\test.tif")

If result Then
    MsgBox "Save c:\test.tif completed"
End If


End Sub

Private Sub Command4_Click()

List1.Clear
ImageViewer1.RemoveAllTIF

End Sub

Private Sub Command5_Click()

CommonDialog2.Filter = "TIF (*.tif)|*.tif||"

CommonDialog2.ShowOpen


txtSourceFile = Me.CommonDialog2.FileName

End Sub

Private Sub Command6_Click()

If Len(txtSourceFile) = 0 Then
    MsgBox "Please input TIF File Name"
    Exit Sub
End If


Me.ImageViewer1.PDFAuthor = "Viscom Software"
Me.ImageViewer1.PDFCreator = "Viscom Software"
Me.ImageViewer1.PDFKeyword = "image viewer cp pro activex"
Me.ImageViewer1.PDFProducer = "Viscom Software"
Me.ImageViewer1.PDFSubject = "image viewer cp pro activex"
Me.ImageViewer1.PDFTitle = "Demo"






strtype = cboExportType.List(cboExportType.ListIndex)


result = ImageViewer1.ExportTIF(txtSourceFile, "c:\test", strtype, txtPageNo, Val(cbobpp.List(cbobpp.ListIndex)))


If result = 1 Then
    MsgBox ("export c:\test." + LCase(strtype) + " completed")
Else
    MsgBox "failed"
End If

End Sub

Private Sub Command7_Click()

End Sub

Private Sub Command8_Click()

CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


CommonDialog1.ShowOpen


txtimagefile = Me.CommonDialog1.FileName

End Sub

Private Sub Command9_Click()


If Len(txtimagefile) = 0 Then
    MsgBox "Please input Image File Name"
    Exit Sub
End If


Me.ImageViewer1.PDFAuthor = "Viscom Software"
Me.ImageViewer1.PDFCreator = "Viscom Software"
Me.ImageViewer1.PDFKeyword = "image viewer cp pro activex"
Me.ImageViewer1.PDFProducer = "Viscom Software"
Me.ImageViewer1.PDFSubject = "image viewer cp pro activex"
Me.ImageViewer1.PDFTitle = "Demo"


result = ImageViewer1.Image2PDF(txtimagefile, "c:\test.pdf")


If result = 1 Then

    MsgBox "Save c:\test.pdf completed"
End If


End Sub

Private Sub Form_Load()

cboExportType.AddItem "BMP"
cboExportType.AddItem "JPG"
cboExportType.AddItem "TIF"
cboExportType.AddItem "GIF"
cboExportType.AddItem "PNG"
cboExportType.AddItem "EMF"
cboExportType.AddItem "PDF"
cboExportType.ListIndex = 0


cbobpp.AddItem "1"
cbobpp.AddItem "4"
cbobpp.AddItem "8"
cbobpp.AddItem "24"
cbobpp.ListIndex = 0



End Sub

Private Sub OptCITT3_Click()
ImageViewer1.TIFCompression = CompressionCCITT3
End Sub

Private Sub OptCITT4_Click()
ImageViewer1.TIFCompression = CompressionCCITT4
End Sub

Private Sub OptLZW_Click()
ImageViewer1.TIFCompression = CompressionLZW
End Sub

Private Sub OptNone_Click()
ImageViewer1.TIFCompression = CompressionNone
End Sub

Private Sub OptRLE_Click()
ImageViewer1.TIFCompression = CompressionRle
End Sub
