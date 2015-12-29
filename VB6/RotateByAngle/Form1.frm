VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Rotate By Angle"
   ClientHeight    =   8610
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13755
   LinkTopic       =   "Form1"
   ScaleHeight     =   8610
   ScaleWidth      =   13755
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   6135
      Left            =   1800
      TabIndex        =   42
      Top             =   120
      Width           =   8055
      _Version        =   65536
      _ExtentX        =   14208
      _ExtentY        =   10821
      _StockProps     =   0
   End
   Begin VB.CommandButton Command3 
      Caption         =   "default"
      Height          =   255
      Left            =   8040
      TabIndex        =   57
      Top             =   7200
      Width           =   615
   End
   Begin VB.TextBox txtbgcolorB 
      Height          =   285
      Left            =   4920
      TabIndex        =   50
      Text            =   "0"
      Top             =   6600
      Width           =   615
   End
   Begin VB.TextBox txtbgcolorG 
      Height          =   285
      Left            =   4320
      TabIndex        =   49
      Text            =   "0"
      Top             =   6600
      Width           =   495
   End
   Begin VB.TextBox txtbgcolorR 
      Height          =   285
      Left            =   3600
      TabIndex        =   48
      Text            =   "0"
      Top             =   6600
      Width           =   495
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   2040
      Max             =   360
      Min             =   -360
      TabIndex        =   46
      Top             =   7200
      Width           =   5895
   End
   Begin VB.Frame Frame13 
      Caption         =   "Change bpp (It can affect the output file size)"
      Height          =   735
      Left            =   9840
      TabIndex        =   43
      Top             =   0
      Width           =   3615
      Begin VB.ComboBox cbopixelformat 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   45
         Top             =   240
         Width           =   2295
      End
      Begin VB.CommandButton Command41 
         Caption         =   "Change"
         Height          =   375
         Left            =   2520
         TabIndex        =   44
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame Frame12 
      Caption         =   "High Quality"
      Height          =   615
      Left            =   0
      TabIndex        =   39
      Top             =   7680
      Width           =   1575
      Begin VB.OptionButton Option4 
         Caption         =   "OFF"
         Height          =   315
         Left            =   840
         TabIndex        =   41
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton Option3 
         Caption         =   "ON"
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   240
         Value           =   -1  'True
         Width           =   615
      End
   End
   Begin VB.TextBox txtYDPI 
      Height          =   285
      Left            =   12960
      TabIndex        =   37
      Text            =   "96"
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox txtXDPI 
      Height          =   285
      Left            =   12120
      TabIndex        =   36
      Text            =   "96"
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Zoom to Height"
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
      Left            =   0
      TabIndex        =   34
      Top             =   5520
      Width           =   1575
   End
   Begin VB.CommandButton cmdzoomout 
      Caption         =   "Zoom Out"
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
      Left            =   840
      TabIndex        =   33
      Top             =   6000
      Width           =   855
   End
   Begin VB.CommandButton cmdzoomin 
      Caption         =   "Zoom In"
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
      Left            =   0
      TabIndex        =   32
      Top             =   6000
      Width           =   735
   End
   Begin VB.Frame Frame11 
      Height          =   495
      Left            =   9960
      TabIndex        =   29
      Top             =   1440
      Width           =   2175
      Begin VB.CommandButton Command34 
         Caption         =   "Save"
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
         Left            =   240
         TabIndex        =   30
         Top             =   120
         Width           =   975
      End
   End
   Begin VB.Frame Frame10 
      Height          =   975
      Left            =   9960
      TabIndex        =   22
      Top             =   2280
      Width           =   1935
      Begin VB.TextBox txt_Height 
         Alignment       =   1  'Right Justify
         Height          =   300
         Left            =   1320
         TabIndex        =   26
         Text            =   "240"
         Top             =   600
         Width           =   495
      End
      Begin VB.TextBox txt_Width 
         Alignment       =   1  'Right Justify
         Height          =   300
         Left            =   480
         TabIndex        =   25
         Text            =   "320"
         Top             =   600
         Width           =   495
      End
      Begin VB.CommandButton Command19 
         Caption         =   "SaveBySize"
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
         Left            =   120
         TabIndex        =   23
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "x"
         Height          =   375
         Left            =   1080
         TabIndex        =   27
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label4 
         Caption         =   "Size"
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   600
         Width           =   495
      End
   End
   Begin VB.ComboBox cbooutputimage 
      Height          =   315
      Left            =   9960
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   960
      Width           =   1455
   End
   Begin VB.CommandButton Command20 
      Caption         =   "Zoom to Width"
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
      Left            =   0
      TabIndex        =   13
      Top             =   5040
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Background Color"
      Height          =   375
      Left            =   0
      TabIndex        =   12
      Top             =   600
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   1920
      Top             =   7560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "Border"
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
      Index           =   0
      Left            =   0
      TabIndex        =   9
      Top             =   6960
      Width           =   1575
      Begin VB.OptionButton Option2 
         Caption         =   "OFF"
         Height          =   375
         Left            =   840
         TabIndex        =   11
         Top             =   195
         Width           =   615
      End
      Begin VB.OptionButton Option1 
         Caption         =   "ON"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   195
         Value           =   -1  'True
         Width           =   615
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Fit to Window    (aspect ratio)"
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
      Left            =   0
      TabIndex        =   8
      Top             =   4440
      Width           =   1575
   End
   Begin VB.CommandButton Command10 
      Caption         =   "200% of Original"
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
      Left            =   0
      TabIndex        =   7
      Top             =   3960
      Width           =   1575
   End
   Begin VB.CommandButton Command9 
      Caption         =   " 75% of Original"
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
      Left            =   0
      TabIndex        =   6
      Top             =   2520
      Width           =   1575
   End
   Begin VB.CommandButton Command8 
      Caption         =   " 50% of Original"
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
      Left            =   0
      TabIndex        =   5
      Top             =   2040
      Width           =   1575
   End
   Begin VB.CommandButton Command6 
      Caption         =   "150% of Original"
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
      Left            =   0
      TabIndex        =   4
      Top             =   3480
      Width           =   1575
   End
   Begin VB.CommandButton Command5 
      Caption         =   "100% of Original"
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
      Left            =   0
      TabIndex        =   3
      Top             =   3000
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   " 33% of Original"
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
      Left            =   0
      TabIndex        =   2
      Top             =   1560
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   " 25% of Original"
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
      Left            =   0
      TabIndex        =   1
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton cmd_SelectFile 
      Caption         =   "Open"
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
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   2640
      Top             =   7680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame9 
      Height          =   1575
      Left            =   9960
      TabIndex        =   16
      Top             =   3240
      Width           =   3615
      Begin VB.CommandButton Command12 
         Caption         =   "Back Color"
         Height          =   315
         Left            =   2160
         TabIndex        =   28
         Top             =   720
         Width           =   1095
      End
      Begin VB.TextBox txtThumbnailHeight 
         Height          =   375
         Left            =   1320
         TabIndex        =   21
         Text            =   "120"
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox txtThumbnailWidth 
         Height          =   375
         Left            =   480
         TabIndex        =   20
         Text            =   "160"
         Top             =   720
         Width           =   495
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Make Thumbnail"
         Height          =   375
         Left            =   120
         TabIndex        =   19
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label30 
         Caption         =   "x"
         Height          =   375
         Left            =   1080
         TabIndex        =   18
         Top             =   720
         Width           =   135
      End
      Begin VB.Label Label7 
         Caption         =   "Size"
         Height          =   375
         Left            =   120
         TabIndex        =   17
         Top             =   720
         Width           =   375
      End
   End
   Begin VB.Label Label9 
      Caption         =   "360"
      Height          =   255
      Left            =   7560
      TabIndex        =   56
      Top             =   6960
      Width           =   375
   End
   Begin VB.Label Label8 
      Caption         =   "-360"
      Height          =   255
      Left            =   2040
      TabIndex        =   55
      Top             =   6960
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   255
      Left            =   4920
      TabIndex        =   54
      Top             =   6960
      Width           =   255
   End
   Begin VB.Label Label14 
      Caption         =   "B"
      Height          =   255
      Left            =   4920
      TabIndex        =   53
      Top             =   6360
      Width           =   495
   End
   Begin VB.Label Label13 
      Caption         =   "G"
      Height          =   255
      Left            =   4320
      TabIndex        =   52
      Top             =   6360
      Width           =   375
   End
   Begin VB.Label Label12 
      Caption         =   "R"
      Height          =   255
      Left            =   3720
      TabIndex        =   51
      Top             =   6360
      Width           =   255
   End
   Begin VB.Label Label11 
      Caption         =   "Background Color"
      Height          =   255
      Left            =   2040
      TabIndex        =   47
      Top             =   6600
      Width           =   1335
   End
   Begin VB.Label Label32 
      Caption         =   "X"
      Height          =   255
      Left            =   12720
      TabIndex        =   38
      Top             =   1080
      Width           =   255
   End
   Begin VB.Label Label26 
      Caption         =   "DPI"
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
      Left            =   11640
      TabIndex        =   35
      Top             =   1080
      Width           =   375
   End
   Begin VB.Label Label31 
      Caption         =   "ico file should 16x16 or 32x32"
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
      Left            =   9960
      TabIndex        =   31
      Top             =   2040
      Width           =   2055
   End
   Begin VB.Label Label6 
      Caption         =   "Save as Image Format"
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
      Left            =   9960
      TabIndex        =   14
      Top             =   720
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iX As Integer
Dim iY As Integer
Dim clrHashForeColor
Dim clrHashBackColor
Dim clrBorderFrameColor
Dim clrThumbnailBackColor
Private Type PictDesc
    cbSizeofStruct As Long
    picType As Long
    hImage As Long
    xExt As Long
    yExt As Long
End Type

Private Type Guid
    Data1 As Long
    Data2 As Integer
    Data3 As Integer
    Data4(0 To 7) As Byte
End Type

Private Declare Function OleCreatePictureIndirect Lib "olepro32.dll" ( _
      lpPictDesc As PictDesc, _
      riid As Guid, _
      ByVal fPictureOwnsHandle As Long, _
      ipic As IPicture _
    ) As Long


Private Sub cbofont_Click()
Me.ImageViewer1.TextFontName = cbofont.List(cbofont.ListIndex)
End Sub

Private Sub cbofontsize_Click()
 ImageViewer1.TextFontSize = Val(cbofontsize.List(cbofontsize.ListIndex))
End Sub

Private Sub cbofontstyle_Click()

ImageViewer1.TextFontStyle = cbofontstyle.ListIndex
End Sub

Private Sub cbohashbrushstyle_Click()


ImageViewer1.SetHashBrushValue cbohashbrushstyle.ListIndex, clrHashForeColor, clrHashBackColor


End Sub

Private Sub cbotextstyle_Click()

Select Case cbotextstyle.ListIndex

 Case 0
    cmdtextcolor.Enabled = True
    cmdoutlineborder.Enabled = False
    cmdoutlineback.Enabled = False
    cbohashbrushstyle.Enabled = False
    cmdhashforecolor.Enabled = False
    cmdhashbackcolor.Enabled = False
    cmdtextureimage.Enabled = False
    Slider1.Enabled = True
 Case 1
    cmdtextcolor.Enabled = False
    cmdoutlineborder.Enabled = True
    cmdoutlineback.Enabled = False
    cbohashbrushstyle.Enabled = False
    cmdhashforecolor.Enabled = False
    cmdhashbackcolor.Enabled = False
    cmdtextureimage.Enabled = False
    Slider1.Enabled = True
 Case 2
     cmdtextcolor.Enabled = False
     cmdoutlineborder.Enabled = True
     cmdoutlineback.Enabled = True
     cbohashbrushstyle.Enabled = False
     cmdhashforecolor.Enabled = False
     cmdhashbackcolor.Enabled = False
     cmdtextureimage.Enabled = False
    Slider1.Enabled = True
 Case 3
     cmdtextcolor.Enabled = False
     cmdoutlineborder.Enabled = False
     cmdoutlineback.Enabled = False
     cbohashbrushstyle.Enabled = True
     cmdhashforecolor.Enabled = True
     cmdhashbackcolor.Enabled = True
     cmdtextureimage.Enabled = False
    Slider1.Enabled = True
 Case 4
 
     cmdtextcolor.Enabled = False
     cmdoutlineborder.Enabled = False
     cmdoutlineback.Enabled = False
     cbohashbrushstyle.Enabled = False
     cmdhashforecolor.Enabled = False
     cmdhashbackcolor.Enabled = False
     cmdtextureimage.Enabled = True
     
    If txttextureimage = "" Then
        MsgBox "Please select texture brush"
        Exit Sub
    End If
    
    Me.ImageViewer1.SetTextureBrushImage txttextureimage
    Slider1.Enabled = False
 
 End Select
 
 
   Me.ImageViewer1.TextStyle = cbotextstyle.ListIndex
    
End Sub

Private Sub cbozoomselection_Click()

Select Case cbozoomselection.ListIndex
Case 0
    ImageViewer2.View = 1
Case 1
    ImageViewer2.View = 2
Case 2
    ImageViewer2.View = 3
Case 3
    ImageViewer2.View = 4
Case 4
    ImageViewer2.View = 5
Case 5
    ImageViewer2.View = 6
Case 6
    ImageViewer2.View = 7
Case 7
    ImageViewer2.View = 8
    ImageViewer2.ViewSize = 3
End Select



End Sub

Private Sub chkshowrect_Click()

If chkshowrect.Value = 1 Then
    ImageViewer1.ShowSelectionRect = True
Else
    ImageViewer1.ShowSelectionRect = False
End If


End Sub

Private Sub chkshowtext_Click()

If chkshowtext.Value = 1 Then
    Me.ImageViewer1.ShowText = True
Else
    Me.ImageViewer1.ShowText = False
End If


End Sub

Private Sub cmd_Rotate_Click()
Me.ImageViewer1.Rotate90
ImageViewer1.SetFocus
End Sub

Private Sub cmd_SelectFile_Click()



Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|Mng (*.mng *.jng)|*.mng;*.jng|Raw Image format(*.cr2 *.nef *.crw *.mrw *.raf *.erf *.3fr *.dcr *.raw *.dng *.pef *.x3f *.arw *.sr2 *.mef *.prf)|*.cr2;*.nef;*.crw;*.mrw;*.raf;*.erf;*.3fr;*.dcr;*.raw;*.dng;*.pef;*.x3f;*.arw;*.sr2;*.mef;*.prf|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen


Me.ImageViewer1.FileName = Me.CommonDialog1.FileName



ImageViewer1.SetFocus


txtXDPI = ImageViewer1.Xdpi
txtYDPI = ImageViewer1.Ydpi

Me.txt_Height = Me.ImageViewer1.FileHeight
Me.txt_Width = Me.ImageViewer1.FileWidth




If ImageViewer1.PDFIsEncrypted And Me.ImageViewer1.FileHeight = 0 Then

    MsgBox "The PDF Encrypted with password, you need set the PDFPassword property"
End If


End Sub

Private Sub cmdhashbackcolor_Click()
CommonDialog2.ShowColor
clrHashBackColor = CommonDialog2.Color
ImageViewer1.SetHashBrushValue cbohashbrushstyle.ListIndex, clrHashForeColor, clrHashBackColor
End Sub

Private Sub cmdhashforecolor_Click()
CommonDialog2.ShowColor
clrHashForeColor = CommonDialog2.Color
ImageViewer1.SetHashBrushValue cbohashbrushstyle.ListIndex, clrHashForeColor, clrHashBackColor
End Sub

Private Sub cmdoutlineback_Click()
CommonDialog2.ShowColor
ImageViewer1.SetOutlineTextBackColor (CommonDialog2.Color)
End Sub

Private Sub cmdoutlineborder_Click()
CommonDialog2.ShowColor

ImageViewer1.SetOutlineTextBorderColor (CommonDialog2.Color)

End Sub

Private Sub cmdtextcolor_Click()
CommonDialog2.ShowColor
Me.ImageViewer1.TextColor = CommonDialog2.Color
End Sub

Private Sub cmdtextureimage_Click()
CommonDialog1.Filter = "All Files (*.*)|*.*|JPEG (*.jpg)|*.jpg|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|Gif (*.gif)|*.gif |PNG (*.png)|*.png|Icon (*.ico)|*.ico"
CommonDialog1.ShowOpen
txttextureimage = CommonDialog1.FileName

Me.ImageViewer1.SetTextureBrushImage txttextureimage
End Sub

Private Sub cmdzoomin_Click()
ImageViewer1.ZoomIn

End Sub

Private Sub cmdzoomout_Click()
ImageViewer1.ZoomOut

End Sub

Private Sub Command1_Click()


ImageViewer1.View = 1

ImageViewer1.SetFocus
End Sub

Private Sub Command10_Click()

ImageViewer1.View = 7
ImageViewer1.SetFocus


End Sub

Private Sub Command11_Click()
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))

ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI



bresult = ImageViewer1.CreateThumbnail("c:\test1", strType, txtThumbnailWidth, txtThumbnailHeight, clrThumbnailBackColor)


If bresult Then
  MsgBox "Save " + "c:\test" + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If


End Sub

Private Sub Command13_Click()

Me.ImageViewer1.View = 11
ImageViewer1.SetFocus

End Sub

Private Sub Command14_Click()
End Sub

Private Sub Command15_Click()
End Sub

Private Sub Command12_Click()

CommonDialog2.ShowColor
clrThumbnailBackColor = CommonDialog2.Color
End Sub

Private Sub Command16_Click()
End Sub

Private Sub Command17_Click()
End Sub

Private Sub Command18_Click()
  
End Sub


Private Sub Command19_Click()

strFile = "c:\test"
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))


ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI


a = Me.ImageViewer1.SaveBySize(strFile, strType, Val(txt_Width), Val(txt_Height))

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If

End Sub

Private Sub Command2_Click()
ImageViewer1.View = 9
ImageViewer1.SetFocus

End Sub


Private Sub Command20_Click()
Me.ImageViewer1.View = 10
ImageViewer1.SetFocus
End Sub

Private Sub Command21_Click()
End Sub

Private Sub Command22_Click()

End Sub

Private Sub Command23_Click()
If Text2.Text > 1 Then
    Text2.Text = Text2.Text - 1
Else
    Text2.Text = 1
End If
Command22_Click
End Sub

Private Sub Command24_Click()

End Sub

Private Sub Command25_Click()
End Sub

Private Sub Command26_Click()

End Sub

Private Sub Command27_Click()
If Text2.Text < ImageViewer1.GetTotalPage Then
    Text2.Text = Text2.Text + 1
Else
    Text2.Text = ImageViewer1.GetTotalPage
End If
Command22_Click
End Sub

Private Sub Command28_Click()
Text2.Text = ImageViewer1.GetTotalPage
Command22_Click
End Sub

Private Sub Command29_Click()

End Sub

Private Sub Command3_Click()

HScroll1.Value = 0






End Sub
Private Sub Command34_Click()
strFile = "c:\test"
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))


ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI




If cbooutputimage.List(cbooutputimage.ListIndex) = "ICO" Then

     a = Me.ImageViewer1.SaveBySize(strFile, "ico", 32, 32)
  
Else
    a = Me.ImageViewer1.Save(strFile, strType)

End If




If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If
ImageViewer1.SetFocus
End Sub



Private Sub Command38_Click()
End Sub

Private Sub Command39_Click()
ImageViewer1.LoadImageFromURL txturl, 0
End Sub

Private Sub Command4_Click()
ImageViewer1.View = 2
ImageViewer1.SetFocus

End Sub

Private Sub Command40_Click()


End Sub

Private Sub Command41_Click()
Select Case cbopixelformat.ListIndex

Case 0
    Me.ImageViewer1.ConvertTo1bpp
Case 1
    Me.ImageViewer1.ConvertTo4bpp
Case 2
    Me.ImageViewer1.ConvertTo8bpp
Case 3
    Me.ImageViewer1.ConvertTo8bppGrayScale
Case 4
    Me.ImageViewer1.ConvertTo16bppRGB555
Case 5
    Me.ImageViewer1.ConvertTo16bppRGB565
Case 6
    Me.ImageViewer1.ConvertTo24bpp
Case 7
    Me.ImageViewer1.ConvertTo32bpp
Case 8
    Me.ImageViewer1.ConvertTo32bppARGB
End Select


End Sub

Private Sub Command5_Click()

ImageViewer1.View = 5
ImageViewer1.SetFocus

End Sub

Private Sub Command6_Click()
ImageViewer1.View = 6
ImageViewer1.SetFocus

End Sub

Private Sub Command7_Click()
CommonDialog2.ShowColor

Me.ImageViewer1.SetBackgroundColor (CommonDialog2.Color)

End Sub

Private Sub Command8_Click()
ImageViewer1.View = 3
ImageViewer1.SetFocus

End Sub

Private Sub Command9_Click()
ImageViewer1.View = 4
ImageViewer1.SetFocus
End Sub

Private Sub Form_Load()
ImageViewer1.FileName = App.Path + "\demo.bmp"
txt_Width = Me.ImageViewer1.FileWidth
txt_Height = Me.ImageViewer1.FileHeight

clrBorderFrameColor = RGB(255, 255, 255)

cbopixelformat.AddItem "Convert to 1bpp"
cbopixelformat.AddItem "Convert to 4bpp"
cbopixelformat.AddItem "Convert to 8bpp"
cbopixelformat.AddItem "Convert to 8bpp Grayscale"
cbopixelformat.AddItem "Convert to 16bpp RGB555"
cbopixelformat.AddItem "Convert to 16bpp RGB565"
cbopixelformat.AddItem "Convert to 24bpp"
cbopixelformat.AddItem "Convert to 32bpp"
cbopixelformat.AddItem "Convert to 32bpp ARGB"

cbopixelformat.ListIndex = 4

cbooutputimage.AddItem "Bmp"
cbooutputimage.AddItem "JPG"
cbooutputimage.AddItem "TIF"
cbooutputimage.AddItem "PDF"
cbooutputimage.AddItem "WBMP"
cbooutputimage.AddItem "GIF"
cbooutputimage.AddItem "PCX"
cbooutputimage.AddItem "TGA"
cbooutputimage.AddItem "ICO"
cbooutputimage.AddItem "JP2"
cbooutputimage.AddItem "JPC"
cbooutputimage.AddItem "RAS"
cbooutputimage.AddItem "PGX"
cbooutputimage.AddItem "PNM"
cbooutputimage.AddItem "PNG"
cbooutputimage.ListIndex = 0










End Sub

Private Sub HScroll1_Change()

ImageViewer1.ResetDefaultImage False
ImageViewer1.RotateAt HScroll1.Value, txtbgcolorR.Text, txtbgcolorG.Text, txtbgcolorB.Text

End Sub

Private Sub Option1_Click()
If Me.Option1.Value = True Then
    ImageViewer1.Border = True
Else
    ImageViewer1.Border = False
End If
End Sub

Private Sub Option10_Click()
ImageViewer1.MouseTrackMode = 0

End Sub


Private Sub Option2_Click()
If Me.Option1.Value = True Then
    ImageViewer1.Border = True
Else
    ImageViewer1.Border = False
End If
End Sub

Private Sub Option3_Click()
If Me.Option3.Value = True Then
   ImageViewer1.HighQuality = True
End If
End Sub

Private Sub Option4_Click()
If Me.Option4.Value = True Then
   ImageViewer1.HighQuality = False
End If
End Sub

Public Function BitmapToPicture(ByVal hBmp As Long) As IPicture

   If (hBmp = 0) Then Exit Function

   Dim NewPic As Picture, tPicConv As PictDesc, IGuid As Guid

   
   With tPicConv
      .cbSizeofStruct = Len(tPicConv)
      .picType = vbPicTypeBitmap
      .hImage = hBmp
   End With

   ' Fill in IDispatch Interface ID
   With IGuid
      .Data1 = &H20400
      .Data4(0) = &HC0
      .Data4(7) = &H46
   End With

   ' Create a picture object:
   OleCreatePictureIndirect tPicConv, IGuid, True, NewPic
   
   ' Return it:
   Set BitmapToPicture = NewPic

End Function

Private Sub Slider1_Scroll()
    ImageViewer1.TextAlphaValue = Slider1.Value
End Sub

Private Sub Text1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    ImageViewer1.View = 8
    ImageViewer1.ViewSize = Val(Text1 / 100)
End If
End Sub

Private Sub Text1_LostFocus()
ImageViewer1.View = 8
ImageViewer1.ViewSize = Val(Text1 / 100)
End Sub






