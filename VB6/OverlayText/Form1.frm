VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "IMAGEV~1.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Overlay Text"
   ClientHeight    =   9585
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11775
   LinkTopic       =   "Form1"
   ScaleHeight     =   9585
   ScaleWidth      =   11775
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txttotalpage 
      Enabled         =   0   'False
      Height          =   375
      Left            =   1680
      TabIndex        =   47
      Text            =   "1"
      Top             =   9000
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save overlay text for page 2 only"
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
      TabIndex        =   45
      Top             =   9000
      Width           =   2535
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   7815
      Left            =   120
      TabIndex        =   44
      Top             =   240
      Width           =   6975
      _Version        =   65536
      _ExtentX        =   12303
      _ExtentY        =   13785
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.ComboBox cbofont 
      Height          =   315
      Left            =   8280
      Style           =   2  'Dropdown List
      TabIndex        =   43
      Top             =   960
      Width           =   1455
   End
   Begin VB.Frame Frame6 
      Caption         =   "Text"
      Height          =   8295
      Left            =   7200
      TabIndex        =   8
      Top             =   720
      Width           =   3615
      Begin VB.ComboBox cbofontsize 
         Height          =   315
         Left            =   1080
         Style           =   2  'Dropdown List
         TabIndex        =   26
         Top             =   720
         Width           =   1455
      End
      Begin VB.ComboBox cbofontstyle 
         Height          =   315
         Left            =   1080
         Style           =   2  'Dropdown List
         TabIndex        =   25
         Top             =   1200
         Width           =   1455
      End
      Begin VB.TextBox txtTextLeft 
         Height          =   285
         Left            =   840
         TabIndex        =   24
         Text            =   "0"
         Top             =   1680
         Width           =   495
      End
      Begin VB.TextBox txtTextTop 
         Height          =   285
         Left            =   1920
         TabIndex        =   23
         Text            =   "0"
         Top             =   1680
         Width           =   495
      End
      Begin VB.TextBox txttext1 
         Height          =   285
         Left            =   840
         TabIndex        =   22
         Text            =   "Viscom Software"
         Top             =   2040
         Width           =   2655
      End
      Begin VB.TextBox txttext2 
         Height          =   285
         Left            =   840
         TabIndex        =   21
         Text            =   "www.viscomsoft.com"
         Top             =   2520
         Width           =   2655
      End
      Begin VB.ComboBox cbotextstyle 
         Height          =   315
         Left            =   1320
         Style           =   2  'Dropdown List
         TabIndex        =   20
         Top             =   3480
         Width           =   1575
      End
      Begin VB.CommandButton cmdtextcolor 
         Caption         =   "Change"
         Height          =   255
         Left            =   1800
         TabIndex        =   19
         Top             =   3960
         Width           =   1095
      End
      Begin VB.CommandButton cmdoutlineborder 
         Caption         =   "Change"
         Height          =   255
         Left            =   1800
         TabIndex        =   18
         Top             =   4440
         Width           =   1095
      End
      Begin VB.CommandButton cmdoutlineback 
         Caption         =   "Change"
         Height          =   255
         Left            =   1800
         TabIndex        =   17
         Top             =   4920
         Width           =   1095
      End
      Begin VB.TextBox txttextureimage 
         Enabled         =   0   'False
         Height          =   285
         Left            =   120
         TabIndex        =   16
         Top             =   6840
         Width           =   2775
      End
      Begin VB.CommandButton cmdtextureimage 
         Caption         =   "Select Image"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   7200
         Width           =   1215
      End
      Begin VB.ComboBox cbohashbrushstyle 
         Height          =   315
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   14
         Top             =   5400
         Width           =   2055
      End
      Begin VB.CommandButton cmdhashforecolor 
         Caption         =   "Change"
         Height          =   255
         Left            =   1800
         TabIndex        =   13
         Top             =   5760
         Width           =   1095
      End
      Begin VB.CommandButton cmdhashbackcolor 
         Caption         =   "Change"
         Height          =   255
         Left            =   1800
         TabIndex        =   12
         Top             =   6120
         Width           =   1095
      End
      Begin VB.CheckBox chkshowtext 
         Caption         =   "Show Text"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   7680
         Value           =   1  'Checked
         Width           =   1215
      End
      Begin VB.CommandButton Command32 
         Caption         =   "Update the Text"
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
         Left            =   1680
         TabIndex        =   9
         Top             =   7560
         Width           =   1815
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   3120
         Width           =   2655
         _ExtentX        =   4683
         _ExtentY        =   450
         _Version        =   393216
         Max             =   255
         SelStart        =   255
         TickFrequency   =   10
         Value           =   255
      End
      Begin VB.Label Label11 
         Caption         =   "Font Name"
         Height          =   255
         Left            =   120
         TabIndex        =   42
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label12 
         Caption         =   "Font Size"
         Height          =   375
         Left            =   120
         TabIndex        =   41
         Top             =   720
         Width           =   855
      End
      Begin VB.Label Label13 
         Caption         =   "Font Style"
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label14 
         Caption         =   "Left"
         Height          =   255
         Left            =   120
         TabIndex        =   39
         Top             =   1680
         Width           =   615
      End
      Begin VB.Label Label15 
         Caption         =   "Top"
         Height          =   375
         Left            =   1560
         TabIndex        =   38
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Label16 
         Caption         =   "Text 1"
         Height          =   255
         Left            =   120
         TabIndex        =   37
         Top             =   2040
         Width           =   615
      End
      Begin VB.Label Label17 
         Caption         =   "Text 2"
         Height          =   255
         Left            =   120
         TabIndex        =   36
         Top             =   2520
         Width           =   615
      End
      Begin VB.Label Label18 
         Caption         =   "Text Style"
         Height          =   375
         Left            =   120
         TabIndex        =   35
         Top             =   3480
         Width           =   855
      End
      Begin VB.Label Label19 
         Caption         =   "Color"
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   3960
         Width           =   495
      End
      Begin VB.Label Label20 
         Caption         =   "Outline Border Color"
         Height          =   255
         Left            =   120
         TabIndex        =   33
         Top             =   4440
         Width           =   1575
      End
      Begin VB.Label Label21 
         Caption         =   "Outline Back Color"
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   4920
         Width           =   1455
      End
      Begin VB.Label Label22 
         Caption         =   "Texture Brush Image"
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   6480
         Width           =   2415
      End
      Begin VB.Label Label23 
         Caption         =   "Hash Brush"
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   5160
         Width           =   1455
      End
      Begin VB.Label Label24 
         Caption         =   "Hash Fore Color"
         Height          =   255
         Left            =   120
         TabIndex        =   29
         Top             =   5760
         Width           =   1335
      End
      Begin VB.Label Label25 
         Caption         =   "Hash Back Color"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   6120
         Width           =   1335
      End
      Begin VB.Label Label29 
         Caption         =   "Alpha Value"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   2880
         Width           =   975
      End
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
      Left            =   10560
      TabIndex        =   7
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
      Left            =   8280
      TabIndex        =   5
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
      Left            =   2760
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   8280
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Save overlay text for all pages"
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
      Left            =   240
      TabIndex        =   0
      Top             =   8280
      Width           =   1215
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
      Height          =   255
      Left            =   360
      TabIndex        =   46
      Top             =   9000
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
      Left            =   9480
      TabIndex        =   6
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
      Left            =   7320
      TabIndex        =   4
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
      Left            =   1680
      TabIndex        =   3
      Top             =   8400
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public clrtrancolor

Private Sub cbofont_Click()
Me.ImageViewer1.TextFontName = cbofont.List(cbofont.ListIndex)
End Sub

Private Sub cbofontsize_Click()
ImageViewer1.TextFontSize = Val(cbofontsize.List(cbofontsize.ListIndex))
End Sub

Private Sub cbofontstyle_Click()
ImageViewer1.TextFontStyle = cbofontstyle.ListIndex
End Sub

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

Private Sub chkshowtext_Click()

If chkshowtext.Value = 1 Then
    Me.ImageViewer1.ShowText = True
Else
    Me.ImageViewer1.ShowText = False
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

Private Sub Command3_Click()
Me.CommonDialog2.ShowColor
clrtrancolor = CommonDialog2.Color

End Sub

Private Sub Command4_Click()
Me.ImageViewer1.ResetDefaultImage False
Me.ImageViewer1.DrawImage txtLeft, txtTop, txtImage, clrtrancolor, Slider1.Value

End Sub

Private Sub Command32_Click()
Me.ImageViewer1.ResetDefaultImage False
Me.ImageViewer1.DrawText txtTextLeft, txtTextTop, txttext1 + Chr(13) + Chr(10) + txttext2, True

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

Private Sub Form_Load()

clrBorderFrameColor = RGB(255, 255, 255)
clrHashForeColor = RGB(0, 0, 0)
clrHashBackColor = RGB(255, 255, 255)

cbofont.AddItem "Arial"
cbofont.AddItem "Arial Black"
cbofont.AddItem "Comic Sans MS"
cbofont.AddItem "Times New Roman"
cbofont.ListIndex = 0


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

For I = 8 To 60 Step 2
    cbofontsize.AddItem Trim(Str(I))
Next
cbofontsize.ListIndex = 2




cbotextstyle.AddItem "Normal"
cbotextstyle.AddItem "Outline"
cbotextstyle.AddItem "Filled Outline"
cbotextstyle.AddItem "Hash Brush"
cbotextstyle.AddItem "Texture Brush"
cbotextstyle.ListIndex = 0


cbohashbrushstyle.AddItem "HatchStyleHorizontal "
cbohashbrushstyle.AddItem "HatchStyleVertical "
cbohashbrushstyle.AddItem "HatchStyleForwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleBackwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleCross "
cbohashbrushstyle.AddItem "HatchStyleDiagonalCross "
cbohashbrushstyle.AddItem "HatchStyle05Percent "
cbohashbrushstyle.AddItem "HatchStyle10Percent "
cbohashbrushstyle.AddItem "HatchStyle20Percent "
cbohashbrushstyle.AddItem "HatchStyle25Percent "
cbohashbrushstyle.AddItem "HatchStyle30Percent "
cbohashbrushstyle.AddItem "HatchStyle40Percent "
cbohashbrushstyle.AddItem "HatchStyle50Percent "
cbohashbrushstyle.AddItem "HatchStyle60Percent "
cbohashbrushstyle.AddItem "HatchStyle70Percent "
cbohashbrushstyle.AddItem "HatchStyle75Percent "
cbohashbrushstyle.AddItem "HatchStyle80Percent "
cbohashbrushstyle.AddItem "HatchStyle90Percent "
cbohashbrushstyle.AddItem "HatchStyleLightDownwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleLightUpwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleDarkDownwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleDarkUpwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleWideDownwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleWideUpwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleLightVertical "
cbohashbrushstyle.AddItem "HatchStyleLightHorizontal "
cbohashbrushstyle.AddItem "HatchStyleNarrowVertical "
cbohashbrushstyle.AddItem "HatchStyleNarrowHorizontal "
cbohashbrushstyle.AddItem "HatchStyleDarkVertical "
cbohashbrushstyle.AddItem "HatchStyleDarkHorizontal "
cbohashbrushstyle.AddItem "HatchStyleDashedDownwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleDashedUpwardDiagonal "
cbohashbrushstyle.AddItem "HatchStyleDashedHorizontal "
cbohashbrushstyle.AddItem "HatchStyleDashedVertical "
cbohashbrushstyle.AddItem "HatchStyleSmallConfetti "
cbohashbrushstyle.AddItem "HatchStyleLargeConfetti "
cbohashbrushstyle.AddItem "HatchStyleZigZag "
cbohashbrushstyle.AddItem "HatchStyleWave "
cbohashbrushstyle.AddItem "HatchStyleDiagonalBrick "
cbohashbrushstyle.AddItem "HatchStyleHorizontalBrick "
cbohashbrushstyle.AddItem "HatchStyleWeave "
cbohashbrushstyle.AddItem "HatchStylePlaid "
cbohashbrushstyle.AddItem "HatchStyleDivot "
cbohashbrushstyle.AddItem "HatchStyleDottedGrid "
cbohashbrushstyle.AddItem "HatchStyleDottedDiamond "
cbohashbrushstyle.AddItem "HatchStyleShingle "
cbohashbrushstyle.AddItem "HatchStyleTrellis "
cbohashbrushstyle.AddItem "HatchStyleSphere "
cbohashbrushstyle.AddItem "HatchStyleSmallGrid "
cbohashbrushstyle.AddItem "HatchStyleSmallCheckerBoard "
cbohashbrushstyle.AddItem "HatchStyleLargeCheckerBoard "
cbohashbrushstyle.AddItem "HatchStyleOutlinedDiamond "
cbohashbrushstyle.AddItem "HatchStyleSolidDiamond "
cbohashbrushstyle.ListIndex = 0


Me.cbofontstyle.AddItem "Regular"
Me.cbofontstyle.AddItem "Bold"
Me.cbofontstyle.AddItem "Italic"
Me.cbofontstyle.AddItem "BoldItalic"
Me.cbofontstyle.AddItem "Underline"
Me.cbofontstyle.ListIndex = 0

ImageViewer1.MouseTrackMode = SelectionRectMode

End Sub

Private Sub Slider1_Scroll()
    ImageViewer1.TextAlphaValue = Slider1.Value
End Sub
