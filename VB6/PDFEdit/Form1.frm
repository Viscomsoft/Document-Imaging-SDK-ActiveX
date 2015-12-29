VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Begin VB.Form Form1 
   Caption         =   "Advanced PDF Edit"
   ClientHeight    =   11490
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   17820
   LinkTopic       =   "Form1"
   ScaleHeight     =   11490
   ScaleWidth      =   17820
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   495
      Left            =   9480
      TabIndex        =   8
      Top             =   3120
      Width           =   495
      _Version        =   65536
      _ExtentX        =   873
      _ExtentY        =   873
      _StockProps     =   0
   End
   Begin VB.Frame Frame5 
      Caption         =   "PDF Crop"
      Height          =   2655
      Left            =   9480
      TabIndex        =   33
      Top             =   120
      Width           =   7575
      Begin VB.CommandButton Command12 
         Caption         =   "Crop"
         Height          =   495
         Left            =   1080
         TabIndex        =   45
         Top             =   2040
         Width           =   1455
      End
      Begin VB.TextBox Text14 
         Height          =   375
         Left            =   6360
         TabIndex        =   44
         Text            =   "240"
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox Text13 
         Height          =   375
         Left            =   4440
         TabIndex        =   42
         Text            =   "320"
         Top             =   1560
         Width           =   855
      End
      Begin VB.TextBox Text12 
         Height          =   375
         Left            =   2760
         TabIndex        =   40
         Text            =   "0"
         Top             =   1560
         Width           =   735
      End
      Begin VB.TextBox Text11 
         Height          =   375
         Left            =   960
         TabIndex        =   38
         Text            =   "0"
         Top             =   1560
         Width           =   735
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Select"
         Height          =   375
         Left            =   5880
         TabIndex        =   36
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox Text10 
         Height          =   375
         Left            =   960
         TabIndex        =   35
         Top             =   360
         Width           =   6255
      End
      Begin VB.Label Label14 
         Caption         =   "Bottom"
         Height          =   375
         Left            =   5520
         TabIndex        =   43
         Top             =   1560
         Width           =   615
      End
      Begin VB.Label Label13 
         Caption         =   "Right"
         Height          =   375
         Left            =   3720
         TabIndex        =   41
         Top             =   1560
         Width           =   615
      End
      Begin VB.Label Label12 
         Caption         =   "Top"
         Height          =   375
         Left            =   2040
         TabIndex        =   39
         Top             =   1560
         Width           =   495
      End
      Begin VB.Label Label11 
         Caption         =   "Left"
         Height          =   375
         Left            =   120
         TabIndex        =   37
         Top             =   1560
         Width           =   735
      End
      Begin VB.Label Label10 
         Caption         =   "PDF File"
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   360
         Width           =   855
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   7800
      Top             =   10800
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame4 
      Caption         =   "PDF Split"
      Height          =   2415
      Left            =   120
      TabIndex        =   26
      Top             =   8160
      Width           =   9255
      Begin VB.CommandButton Command10 
         Caption         =   "Split one PDF to two PDF files"
         Height          =   495
         Left            =   3120
         TabIndex        =   32
         Top             =   1320
         Width           =   1815
      End
      Begin VB.TextBox Text9 
         Height          =   285
         Left            =   1920
         TabIndex        =   31
         Text            =   "1"
         Top             =   1440
         Width           =   735
      End
      Begin VB.CommandButton Command9 
         Caption         =   "Select File"
         Height          =   375
         Left            =   8040
         TabIndex        =   29
         Top             =   840
         Width           =   1095
      End
      Begin VB.TextBox Text8 
         Height          =   375
         Left            =   1440
         TabIndex        =   28
         Top             =   360
         Width           =   7695
      End
      Begin VB.Label Label9 
         Caption         =   "Split From Page No"
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   1440
         Width           =   1575
      End
      Begin VB.Label Label8 
         Caption         =   "PDF Source File"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   480
         Width           =   1215
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "PDF Add Page"
      Height          =   3015
      Left            =   120
      TabIndex        =   16
      Top             =   5040
      Width           =   9255
      Begin VB.CommandButton Command8 
         Caption         =   "Add Page"
         Height          =   495
         Left            =   2880
         TabIndex        =   25
         Top             =   2160
         Width           =   1695
      End
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   1560
         TabIndex        =   24
         Text            =   "1"
         Top             =   2280
         Width           =   975
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Select File"
         Height          =   375
         Left            =   7800
         TabIndex        =   22
         Top             =   1800
         Width           =   1215
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   1560
         TabIndex        =   21
         Top             =   1440
         Width           =   7455
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Select File"
         Height          =   375
         Left            =   7800
         TabIndex        =   19
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   1560
         TabIndex        =   18
         Top             =   480
         Width           =   7455
      End
      Begin VB.Label Label7 
         Caption         =   "Insert At Page No"
         Height          =   375
         Left            =   360
         TabIndex        =   23
         Top             =   2280
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "Append From PDF"
         Height          =   495
         Left            =   360
         TabIndex        =   20
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label5 
         Caption         =   "PDF Source File"
         Height          =   375
         Left            =   240
         TabIndex        =   17
         Top             =   480
         Width           =   1335
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "PDF Delete Page"
      Height          =   2055
      Left            =   120
      TabIndex        =   9
      Top             =   2880
      Width           =   9255
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1320
         TabIndex        =   14
         Text            =   "1"
         Top             =   1080
         Width           =   975
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Delete"
         Height          =   375
         Left            =   2400
         TabIndex        =   13
         Top             =   1080
         Width           =   1335
      End
      Begin VB.CommandButton Command4 
         Caption         =   "Select File"
         Height          =   375
         Left            =   7440
         TabIndex        =   12
         Top             =   960
         Width           =   1575
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1320
         TabIndex        =   11
         Top             =   480
         Width           =   7695
      End
      Begin VB.Label Label4 
         Caption         =   "Page No"
         Height          =   375
         Left            =   240
         TabIndex        =   15
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label3 
         Caption         =   "PDF File"
         Height          =   375
         Left            =   240
         TabIndex        =   10
         Top             =   480
         Width           =   735
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   8640
      Top             =   2640
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "PDF Merge"
      Height          =   2655
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   9135
      Begin VB.CommandButton Command3 
         Caption         =   "Merge"
         Height          =   375
         Left            =   1200
         TabIndex        =   7
         Top             =   2040
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Select File"
         Height          =   375
         Left            =   7320
         TabIndex        =   6
         Top             =   1680
         Width           =   1575
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1200
         TabIndex        =   5
         Top             =   1200
         Width           =   7695
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Select File"
         Height          =   375
         Left            =   7320
         TabIndex        =   3
         Top             =   720
         Width           =   1575
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1200
         TabIndex        =   1
         Top             =   360
         Width           =   7695
      End
      Begin VB.Label Label2 
         Caption         =   "PDF File 2"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   1320
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "PDF File 1"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   360
         Width           =   975
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text1 = Me.CommonDialog1.FileName
End Sub

Private Sub Command10_Click()
If Text8 = "" Then
    MsgBox "Please select PDF Source File"
    Exit Sub
    
End If


CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowSave

CommonDialog2.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog2.ShowSave


Me.ImageViewer1.PDFEditSplit Text8, Text9, CommonDialog1.FileName, CommonDialog2.FileName
End Sub

Private Sub Command11_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text10 = Me.CommonDialog1.FileName
End Sub

Private Sub Command12_Click()
If Text10 = "" Then
    MsgBox "Please select PDF file"
    Exit Sub
    
End If

CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowSave

Me.ImageViewer1.PDFEditCrop Text10, Text11, Text12, Text13, Text14, CommonDialog1.FileName

  
  MsgBox "Crop completed"
  
End Sub

Private Sub Command13_Click()

End Sub

Private Sub Command2_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text2 = Me.CommonDialog1.FileName
End Sub

Private Sub Command3_Click()


If Text1 = "" Then
    MsgBox "Please select PDF 1 file"
    Exit Sub
    
End If

If Text2 = "" Then
    MsgBox "Please select PDF 2 file"
    Exit Sub
    
End If

CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowSave

  ImageViewer1.PDFEditMerge Text1, Text2, CommonDialog1.FileName
  
  MsgBox "Merge completed"
End Sub

Private Sub Command4_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text3 = Me.CommonDialog1.FileName
End Sub

Private Sub Command5_Click()

If Text3 = "" Then
    MsgBox "Please select PDF file"
    Exit Sub
    
End If



ImageViewer1.PDFEditDeletePage Text3, Text4

  MsgBox "Delete Page completed"

End Sub

Private Sub Command6_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text5 = Me.CommonDialog1.FileName
End Sub

Private Sub Command7_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text6 = Me.CommonDialog1.FileName

End Sub

Private Sub Command8_Click()

If Text5 = "" Then
    MsgBox "Please select PDF Source File"
    Exit Sub
    
End If

If Text6 = "" Then
    MsgBox "Please select Append From PDF"
    Exit Sub
    
End If

CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowSave

  
  
  
Me.ImageViewer1.PDFEditAddPage Text5, Text7, Text6, CommonDialog1.FileName

MsgBox "Add Page completed"

End Sub

Private Sub Command9_Click()
CommonDialog1.Filter = "PDF (*.pdf)|*.pdf||"

CommonDialog1.ShowOpen

Text8 = Me.CommonDialog1.FileName

End Sub
