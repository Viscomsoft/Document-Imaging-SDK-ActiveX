VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "read/write image from database"
   ClientHeight    =   8205
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8790
   LinkTopic       =   "Form1"
   ScaleHeight     =   8205
   ScaleWidth      =   8790
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   5775
      Left            =   120
      TabIndex        =   20
      Top             =   240
      Width           =   6375
      _Version        =   65536
      _ExtentX        =   11245
      _ExtentY        =   10186
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CommandButton cmd_Rotate 
      Caption         =   "Rotate"
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
      Left            =   6840
      TabIndex        =   19
      Top             =   1560
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
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
      Left            =   6840
      TabIndex        =   18
      Top             =   2040
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
      Left            =   6840
      TabIndex        =   17
      Top             =   2520
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
      Left            =   6840
      TabIndex        =   16
      Top             =   3960
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
      Left            =   6840
      TabIndex        =   15
      Top             =   4440
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
      Left            =   6840
      TabIndex        =   14
      Top             =   3000
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
      Left            =   6840
      TabIndex        =   13
      Top             =   3480
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
      Left            =   6840
      TabIndex        =   12
      Top             =   4920
      Width           =   1575
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
      Left            =   6840
      TabIndex        =   11
      Top             =   5400
      Width           =   1575
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
      Left            =   6840
      TabIndex        =   10
      Top             =   6000
      Width           =   1575
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
      Left            =   6840
      TabIndex        =   9
      Top             =   6960
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
      Left            =   6840
      TabIndex        =   8
      Top             =   7440
      Width           =   1575
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
      Left            =   6840
      TabIndex        =   7
      Top             =   6480
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Change Image"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   177
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6840
      TabIndex        =   5
      Top             =   1080
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5880
      Top             =   7320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdupdate 
      Caption         =   "Save Image to database"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   480
      TabIndex        =   4
      Top             =   6720
      Width           =   1695
   End
   Begin VB.CommandButton cmdprev 
      Caption         =   "Prev Record"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2400
      TabIndex        =   3
      Top             =   6720
      Width           =   1215
   End
   Begin VB.CommandButton cmdnext 
      Caption         =   "Next Record"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3840
      TabIndex        =   2
      Top             =   6720
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   6240
      Width           =   3135
   End
   Begin VB.Label Label2 
      Caption         =   "After press change image button , you need press save image to database buton"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   855
      Left            =   6720
      TabIndex        =   6
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label Label1 
      Caption         =   "Description"
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   6240
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim WithEvents rs As ADODB.Recordset
Attribute rs.VB_VarHelpID = -1

Private Sub cmd_Rotate_Click()
ImageViewer1.Rotate90
End Sub

Private Sub cmdnext_Click()

 
 
If rs.EOF Then
    MsgBox "end of record"
    rs.MoveLast
    
Else
    rs.MoveNext
        
    If rs.EOF Then
        rs.MoveLast
    End If
    
End If
    ImageViewer1.ReadBinary rs.Fields("pic")

End Sub

Private Sub cmdprev_Click()
If rs.BOF Then
    MsgBox "top of record"
    rs.MoveFirst
    
Else
    rs.MovePrevious
    
     If rs.BOF Then
        rs.MoveFirst
    End If
     
   
End If
 ImageViewer1.ReadBinary rs.Fields("pic")
 
End Sub

Private Sub cmdupdate_Click()
ImageViewer1.WriteBinary rs.Fields("pic")
End Sub

Private Sub cmdzoomin_Click()
Me.ImageViewer1.ZoomIn
ImageViewer1.SetFocus
End Sub

Private Sub cmdzoomout_Click()
Me.ImageViewer1.ZoomOut
ImageViewer1.SetFocus
End Sub

Private Sub Command1_Click()
Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG (*.jpg)|*.jpg|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|Gif (*.gif)|*.gif |PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen


Me.ImageViewer1.FileName = Me.CommonDialog1.FileName
End Sub

Private Sub Command10_Click()
ImageViewer1.View = 7
ImageViewer1.SetFocus
End Sub

Private Sub Command11_Click()
Dim strFile As String
Dim strType As String
Dim a As Integer

strFile = "c:\test"
strType = "jpg"

a = Me.ImageViewer1.Save(strFile, strType)

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

Private Sub Command2_Click()
Me.ImageViewer1.View = 9
ImageViewer1.SetFocus
End Sub

Private Sub Command20_Click()
Me.ImageViewer1.View = 10
ImageViewer1.SetFocus
End Sub

Private Sub Command3_Click()
ImageViewer1.View = 1
ImageViewer1.SetFocus
End Sub

Private Sub Command4_Click()
ImageViewer1.View = 2
ImageViewer1.SetFocus

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
Set rs = New ADODB.Recordset
  '  Open the db
   rs.Open "table1", "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\db1.mdb;Persist Security Info=False", adOpenKeyset, adLockOptimistic
 
    Text1.DataField = "desc"
    Set Text1.DataSource = rs

    rs.MoveFirst
    
   
    ImageViewer1.ReadBinary rs.Fields("pic")
    ImageViewer1.View = 5
        
End Sub

Private Sub Text2_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then
    ImageViewer1.View = 8
    ImageViewer1.ViewSize = Val(Text2 / 100)
End If
End Sub

