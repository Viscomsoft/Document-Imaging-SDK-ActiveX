VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "EXIF Tags"
   ClientHeight    =   8565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12510
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   8565
   ScaleWidth      =   12510
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   4935
      Left            =   120
      TabIndex        =   16
      Top             =   240
      Width           =   5895
      _Version        =   65536
      _ExtentX        =   10398
      _ExtentY        =   8705
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Include EXIF Tag when save "
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
      Left            =   3240
      TabIndex        =   13
      Top             =   5760
      Value           =   1  'Checked
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1800
      TabIndex        =   12
      Top             =   5640
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Edit EXIF Tags (You can change any string type of EXIF Tag)"
      Height          =   3135
      Left            =   6120
      TabIndex        =   3
      Top             =   5160
      Width           =   5775
      Begin VB.TextBox Text5 
         Enabled         =   0   'False
         Height          =   375
         Left            =   1560
         TabIndex        =   15
         Top             =   2520
         Width           =   3735
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1560
         TabIndex        =   11
         Top             =   1920
         Width           =   3735
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1560
         TabIndex        =   9
         Top             =   1440
         Width           =   3735
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1560
         TabIndex        =   7
         Top             =   960
         Width           =   3735
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1560
         TabIndex        =   5
         Top             =   360
         Width           =   3735
      End
      Begin VB.Label Label4 
         Caption         =   "Date Time"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   2520
         Width           =   1215
      End
      Begin VB.Label Label6 
         Caption         =   "Copyright"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   1920
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "Artist"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1440
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Image Description"
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   960
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Image Title"
         Height          =   375
         Left            =   120
         TabIndex        =   4
         Top             =   360
         Width           =   975
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9240
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Select Image"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   5640
      Width           =   1335
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4545
      Left            =   6120
      TabIndex        =   0
      Top             =   480
      Width           =   5775
   End
   Begin VB.Label Label1 
      Caption         =   "EXIF Tags"
      Height          =   255
      Left            =   6240
      TabIndex        =   2
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen


Me.ImageViewer1.FileName = Me.CommonDialog1.FileName

Me.ImageViewer1.View = 10
List1.Clear
Text5.Enabled = False

iCount = Me.ImageViewer1.GetExifTagsCount - 1
For i = 0 To iCount
        strTagName = ImageViewer1.GetExifTagsName(i)
        strTagValue = ImageViewer1.GetExifTagsValue(i)
        List1.AddItem (strTagName + ": " + strTagValue)

       If strTagName = "Date/Time" Then
            Text5.Enabled = True
            Text5 = strTagValue
       End If
       
Next



End Sub

Private Sub Command2_Click()

If Check1.Value = 1 Then
    ImageViewer1.IsUseExif = True
Else
    ImageViewer1.IsUseExif = False
End If



If Text1 <> "" Then
    ImageViewer1.SetExifStringValue "ImageTitle", Text1
End If

If Text2 <> "" Then
    ImageViewer1.SetExifStringValue "ImageDescription", Text2
End If

If Text3 <> "" Then
    ImageViewer1.SetExifStringValue "Artist", Text3
End If

If Text4 <> "" Then
    ImageViewer1.SetExifStringValue "Copyright", Text4
End If


' you can select any string type of EXIF Tag

If Text5 <> "" Then
    ImageViewer1.SetExifStringValue "Date/Time", Text5
End If








a = Me.ImageViewer1.Save("c:\test", "jpg")

If a = 1 Then
    MsgBox "Save c:\test.jpg completed"
Else
    MsgBox "Save fail"
End If

End Sub

