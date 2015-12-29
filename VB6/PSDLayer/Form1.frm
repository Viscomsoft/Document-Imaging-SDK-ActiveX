VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "PSD layers"
   ClientHeight    =   9210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15840
   LinkTopic       =   "Form1"
   ScaleHeight     =   9210
   ScaleWidth      =   15840
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   7335
      Left            =   1800
      TabIndex        =   20
      Top             =   120
      Width           =   8055
      _Version        =   65536
      _ExtentX        =   14208
      _ExtentY        =   12938
      _StockProps     =   0
   End
   Begin VB.ComboBox cbooutputimage 
      Height          =   315
      Left            =   10320
      Style           =   2  'Dropdown List
      TabIndex        =   40
      Top             =   6360
      Width           =   1455
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Export current selected layer"
      Height          =   495
      Left            =   12240
      TabIndex        =   39
      Top             =   6120
      Width           =   2895
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Merge all layers and preview"
      Height          =   375
      Left            =   11880
      TabIndex        =   38
      Top             =   960
      Width           =   3135
   End
   Begin VB.Frame Frame6 
      Caption         =   "Layer Information"
      Height          =   1575
      Left            =   10200
      TabIndex        =   27
      Top             =   4200
      Width           =   5055
      Begin VB.TextBox txtopacity 
         Height          =   285
         Left            =   840
         TabIndex        =   37
         Text            =   "0"
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox txtheight 
         Height          =   285
         Left            =   3000
         TabIndex        =   35
         Text            =   "0"
         Top             =   600
         Width           =   975
      End
      Begin VB.TextBox txtwidth 
         Height          =   285
         Left            =   840
         TabIndex        =   33
         Text            =   "0"
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox txttop 
         Height          =   285
         Left            =   3000
         TabIndex        =   31
         Text            =   "0"
         Top             =   240
         Width           =   975
      End
      Begin VB.TextBox txtleft 
         Height          =   285
         Left            =   840
         TabIndex        =   29
         Text            =   "0"
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label11 
         Caption         =   "Opacity"
         Height          =   375
         Left            =   120
         TabIndex        =   36
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label8 
         Caption         =   "Height"
         Height          =   255
         Left            =   2160
         TabIndex        =   34
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label7 
         Caption         =   "Width"
         Height          =   375
         Left            =   120
         TabIndex        =   32
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label6 
         Caption         =   "Top"
         Height          =   255
         Left            =   2160
         TabIndex        =   30
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label5 
         Caption         =   "Left"
         Height          =   375
         Left            =   120
         TabIndex        =   28
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.ListBox List1 
      Height          =   2595
      Left            =   10200
      TabIndex        =   23
      Top             =   1440
      Width           =   4935
   End
   Begin VB.TextBox txttotalpage 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   178
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   11400
      TabIndex        =   22
      Text            =   "1"
      Top             =   240
      Width           =   735
   End
   Begin VB.CommandButton Command40 
      Caption         =   "Center Image"
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
      TabIndex        =   21
      Top             =   6000
      Width           =   1575
   End
   Begin VB.Frame Frame12 
      Caption         =   "High Quality"
      Height          =   615
      Left            =   0
      TabIndex        =   17
      Top             =   8040
      Width           =   1575
      Begin VB.OptionButton Option4 
         Caption         =   "OFF"
         Height          =   315
         Left            =   840
         TabIndex        =   19
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton Option3 
         Caption         =   "ON"
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   240
         Value           =   -1  'True
         Width           =   615
      End
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
      TabIndex        =   16
      Top             =   5040
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
      TabIndex        =   15
      Top             =   5520
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
      TabIndex        =   14
      Top             =   5520
      Width           =   735
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
      Top             =   4560
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Background Color"
      Height          =   375
      Left            =   0
      TabIndex        =   12
      Top             =   8760
      Width           =   1695
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   2040
      Top             =   7920
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
      Top             =   7320
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
      Top             =   3960
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
      Top             =   3480
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
      Top             =   2040
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
      Top             =   1560
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
      Top             =   3000
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
      Top             =   2520
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
      Top             =   1080
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
      Top             =   600
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
      Left            =   2040
      Top             =   8280
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame2 
      Height          =   855
      Left            =   10200
      TabIndex        =   25
      Top             =   0
      Width           =   4935
      Begin VB.Label Label1 
         Caption         =   "Total Layer"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   178
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   26
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame3 
      Height          =   855
      Left            =   10200
      TabIndex        =   41
      Top             =   5880
      Width           =   5055
      Begin VB.Label Label2 
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
         Left            =   120
         TabIndex        =   42
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Label Label4 
      Caption         =   "Layers"
      Height          =   255
      Left            =   10200
      TabIndex        =   24
      Top             =   1080
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iX As Integer
Dim iY As Integer

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
End Sub

Private Sub cmd_SelectFile_Click()



Me.CommonDialog1.Filter = "PhotoShop Images (*.psd)|*.psd"


Me.CommonDialog1.ShowOpen


Me.ImageViewer1.FileName = CommonDialog1.FileName


List1.Clear

iCount = Me.ImageViewer1.PSDGetLayerCount



For i = 0 To iCount - 1
   List1.AddItem Me.ImageViewer1.PSDGetLayerName(i)

Next





ImageViewer1.SetFocus







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
strFile = "c:\test"
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))



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

Private Sub Command13_Click()

Me.ImageViewer1.View = 11
ImageViewer1.SetFocus

End Sub

Private Sub Command14_Click()

End Sub

Private Sub Command15_Click()


End Sub

Private Sub Command12_Click()


End Sub

Private Sub Command16_Click()
End Sub

Private Sub Command17_Click()


End Sub

Private Sub Command18_Click()

End Sub


Private Sub Command19_Click()

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
End Sub

Private Sub Command24_Click()


End Sub

Private Sub Command25_Click()

End Sub

Private Sub Command26_Click()


End Sub

Private Sub Command27_Click()
End Sub

Private Sub Command28_Click()
End Sub

Private Sub Command29_Click()
End Sub

Private Sub Command3_Click()
If Me.ImageViewer1.PSDShowLayerImage(-1) Then
    List1.ListIndex = -1
End If

End Sub

Private Sub Command30_Click()
ImageViewer1.Rotate 7
End Sub

Private Sub Command31_Click()
ImageViewer1.Rotate 3
End Sub

Private Sub Command32_Click()



End Sub

Private Sub Command35_Click()

End Sub

Private Sub Command36_Click()

End Sub

Private Sub Command37_Click()

End Sub

Private Sub Command33_Click()

End Sub

Sub PdfSecureSetting()


End Sub
Private Sub Command34_Click()
End Sub



Private Sub Command38_Click()
End Sub

Private Sub Command39_Click()

End Sub

Private Sub Command4_Click()
ImageViewer1.View = 2
ImageViewer1.SetFocus

End Sub

Private Sub Command40_Click()
ImageViewer1.View = 12

ImageViewer1.SetFocus



End Sub

Private Sub Command41_Click()


End Sub

Private Sub Command42_Click()

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
cbooutputimage.ListIndex = 14

End Sub

Private Sub ImageViewer1_DICOMPlaying(ByVal iFrameIndex As Integer)
txtcurpage = iFrameIndex
End Sub

Private Sub List1_Click()


If ImageViewer1.PSDShowLayerImage(Me.List1.ListIndex) Then

txtleft.Text = Me.ImageViewer1.PSDGetLayerLeft(Me.List1.ListIndex)
txttop.Text = Me.ImageViewer1.PSDGetLayerTop(Me.List1.ListIndex)
txtwidth.Text = Me.ImageViewer1.PSDGetLayerWidth(Me.List1.ListIndex)
txtheight.Text = Me.ImageViewer1.PSDGetLayerHeight(Me.List1.ListIndex)
txtopacity.Text = Me.ImageViewer1.PSDGetLayerOpacity(Me.List1.ListIndex)

End If


End Sub

Private Sub List2_Click()

Me.List3.Clear
Me.List3.AddItem Me.ImageViewer1.DICOMGetTagsSubItemValue(List1.ListIndex, List2.ListIndex)

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

Private Sub Option11_Click()
ImageViewer1.MouseTrackMode = 1
End Sub

Private Sub Option12_Click()
ImageViewer1.MouseTrackMode = 2
End Sub

Private Sub Option13_Click()
ImageViewer1.MouseTrackMode = 3
End Sub

Private Sub Option14_Click()
ImageViewer1.MouseTrackMode = 4
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






