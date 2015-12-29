VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Rotate Multipage TIFF/PDF files"
   ClientHeight    =   8475
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14370
   LinkTopic       =   "Form1"
   ScaleHeight     =   8475
   ScaleWidth      =   14370
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Rotate page 1 and page 3  to 90 degree only and save the image"
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
      Left            =   8880
      TabIndex        =   8
      Top             =   3480
      Width           =   4335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Rotate first page to 90 degree only and save the image"
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
      Left            =   8880
      TabIndex        =   7
      Top             =   2760
      Width           =   4335
   End
   Begin VB.TextBox txttotalpage 
      Height          =   375
      Left            =   13320
      TabIndex        =   6
      Text            =   "1"
      Top             =   600
      Width           =   735
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   8055
      Left            =   240
      TabIndex        =   4
      Top             =   240
      Width           =   7695
      _Version        =   65536
      _ExtentX        =   13573
      _ExtentY        =   14208
      _StockProps     =   0
      Border          =   0   'False
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
      Left            =   9960
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Rotate all pages to 90 degree and save the image"
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
      Left            =   8880
      TabIndex        =   1
      Top             =   2160
      Width           =   4335
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9480
      Top             =   4680
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
      Left            =   8880
      TabIndex        =   0
      Top             =   480
      Width           =   3015
   End
   Begin VB.Label Label9 
      Caption         =   "Total Pages"
      Height          =   255
      Left            =   12120
      TabIndex        =   5
      Top             =   600
      Width           =   975
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
      Left            =   8880
      TabIndex        =   3
      Top             =   1320
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public clrtrancolor

Private Sub Command1_Click()

Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|TIF (*.tif)|*.tif"

Me.CommonDialog1.ShowOpen

strFile = Me.CommonDialog1.FileName

If Right(strFile, 3) = "pdf" Or Right(strFile, 3) = "tif" Or Right(strFile, 4) = "tiff" Then
        
        Me.ImageViewer1.LoadMultiPage strFile, 0
        
       txttotalpage = Me.ImageViewer1.GetTotalPage
        
        If txttotalpage < 2 Then
            MsgBox "For testing rotate multipage feature, You should select multipage TIFF or PDF file"
            Exit Sub
        End If
        

Else

    MsgBox "Please select multipage TIFF or PDF file"
    Exit Sub
End If


ImageViewer1.HighQuality = True
ImageViewer1.SetFocus
ImageViewer1.View = 9
ImageViewer1.MouseTrackMode = NoSelectionRectMode

End Sub

Private Sub Command2_Click()

strFile = "c:\test"
 
strType = cbooutputtype.List(cbooutputtype.ListIndex)


Me.ImageViewer1.ClearRotateMultiPageOnly
Me.ImageViewer1.RotateMultiPageOnly 0, MRotate90FlipNone


a = Me.ImageViewer1.Save(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail, please select image first"
End If

End Sub

Private Sub Command3_Click()
strFile = "c:\test"
 
strType = cbooutputtype.List(cbooutputtype.ListIndex)


Me.ImageViewer1.ClearRotateMultiPageOnly
Me.ImageViewer1.RotateMultiPageOnly 0, MRotate90FlipNone
Me.ImageViewer1.RotateMultiPageOnly 2, MRotate90FlipNone



a = Me.ImageViewer1.Save(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail, please select image first"
End If

End Sub



Private Sub Command5_Click()

strFile = "c:\test"
 
strType = cbooutputtype.List(cbooutputtype.ListIndex)


Me.ImageViewer1.ClearRotateMultiPageOnly
Me.ImageViewer1.RotateMultiPage MRotate90FlipNone


a = Me.ImageViewer1.Save(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail, please select image first"
End If

End Sub

Private Sub Command6_Click()


End Sub

Private Sub Form_Load()


cbooutputtype.AddItem "tif"
cbooutputtype.AddItem "pdf"

cbooutputtype.ListIndex = 0


End Sub

