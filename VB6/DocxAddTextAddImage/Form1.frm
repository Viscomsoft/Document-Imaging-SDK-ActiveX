VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Add Texts, Add Images to Docx"
   ClientHeight    =   6465
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7635
   LinkTopic       =   "Form1"
   ScaleHeight     =   6465
   ScaleWidth      =   7635
   StartUpPosition =   2  'CenterScreen
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   30
      Left            =   6000
      TabIndex        =   2
      Top             =   120
      Width           =   30
      _Version        =   65536
      _ExtentX        =   53
      _ExtentY        =   53
      _StockProps     =   0
   End
   Begin VB.TextBox txtimagefile2 
      Enabled         =   0   'False
      Height          =   285
      Left            =   960
      TabIndex        =   16
      Top             =   5280
      Width           =   4095
   End
   Begin VB.CommandButton Command6 
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
      Left            =   5160
      TabIndex        =   15
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      Height          =   1455
      Left            =   0
      TabIndex        =   10
      Top             =   4680
      Width           =   6615
      Begin VB.CommandButton Command5 
         Caption         =   "Add image to page 1 and page 2 and add text"
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
         Left            =   960
         TabIndex        =   13
         Top             =   1080
         Width           =   3615
      End
      Begin VB.TextBox txtimagefile1 
         Enabled         =   0   'False
         Height          =   285
         Left            =   960
         TabIndex        =   12
         Top             =   240
         Width           =   4095
      End
      Begin VB.CommandButton Command4 
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
         Left            =   5160
         TabIndex        =   11
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "Image 2"
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
         Left            =   0
         TabIndex        =   18
         Top             =   600
         Width           =   855
      End
      Begin VB.Label Label1 
         Caption         =   "Image 1"
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
         Left            =   0
         TabIndex        =   14
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame2 
      Height          =   1455
      Left            =   0
      TabIndex        =   5
      Top             =   3000
      Width           =   6615
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
         Left            =   5160
         TabIndex        =   9
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox txtimagefile 
         Enabled         =   0   'False
         Height          =   285
         Left            =   960
         TabIndex        =   7
         Top             =   240
         Width           =   4095
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Add image and text"
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
         Left            =   960
         TabIndex        =   6
         Top             =   600
         Width           =   3615
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
         Left            =   0
         TabIndex        =   8
         Top             =   240
         Width           =   855
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1095
      Left            =   0
      TabIndex        =   3
      Top             =   1680
      Width           =   6615
      Begin VB.CommandButton Command1 
         Caption         =   "Add text at Page 1 and Page 2"
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
         Left            =   960
         TabIndex        =   4
         Top             =   480
         Width           =   3615
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   6960
      Top             =   4680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame3 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   360
      Width           =   6615
      Begin VB.CommandButton Command9 
         Caption         =   "Add text"
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
         Left            =   960
         TabIndex        =   1
         Top             =   360
         Width           =   3615
      End
   End
   Begin VB.Label Label2 
      Caption         =   "Image 1"
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
      Left            =   0
      TabIndex        =   17
      Top             =   5280
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()

Me.ImageViewer1.DocxAddChar 0, "T", 0, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "h", 1, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 2, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 3, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 4, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 5, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 6, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 7, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 8, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "e", 9, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "x", 10, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 11, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "1", 12, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False


Me.ImageViewer1.DocxAddChar 1, "T", 0, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "h", 1, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "i", 2, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "s", 3, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, " ", 4, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "i", 5, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "s", 6, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, " ", 7, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "t", 8, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "e", 9, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "x", 10, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "t", 11, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 1, "2", 12, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False


If ImageViewer1.DocxCreateFile("c:\test2.docx") Then
    MsgBox "save c:\test2.docx completed"

End If


End Sub

Private Sub Command2_Click()



Me.ImageViewer1.DocxAddImage txtimagefile

Me.ImageViewer1.DocxAddChar 0, "T", 0, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "h", 1, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 2, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 3, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 4, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 5, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 6, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 7, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 8, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "e", 9, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "x", 10, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 11, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "1", 12, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False




If ImageViewer1.DocxCreateFile("c:\test3.docx") Then
    MsgBox "save c:\test3.docx completed"

End If


End Sub

Private Sub Command4_Click()
CommonDialog1.Filter = "JPEG (*.jpg)|*.jpg|TIF (*.tif)|*.tif|PNG (*.png)|*.png"


CommonDialog1.ShowOpen


txtimagefile1 = Me.CommonDialog1.FileName


End Sub

Private Sub Command5_Click()


If txtimagefile1 = "" Then
    MsgBox "Please select image 1"
   Exit Sub
End If

If txtimagefile2 = "" Then
    MsgBox "Please select image 2"
    Exit Sub
End If


Me.ImageViewer1.DocxAddImage txtimagefile1 'add to page 1
Me.ImageViewer1.DocxAddImage txtimagefile2 ' add to page 2


Me.ImageViewer1.DocxAddChar 0, "T", 0, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "h", 1, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 2, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 3, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 4, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 5, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 6, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 7, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 8, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "e", 9, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "x", 10, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 11, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "1", 12, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False


Me.ImageViewer1.DocxAddChar 1, "T", 0, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "h", 1, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "i", 2, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "s", 3, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, " ", 4, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "i", 5, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "s", 6, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, " ", 7, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "t", 8, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "e", 9, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "x", 10, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "t", 11, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 1, "2", 12, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False


If ImageViewer1.DocxCreateFile("c:\test4.docx") Then
    MsgBox "save c:\test4.docx completed"

End If



End Sub

Private Sub Command6_Click()
CommonDialog1.Filter = "JPEG (*.jpg)|*.jpg|TIF (*.tif)|*.tif|PNG (*.png)|*.png"


CommonDialog1.ShowOpen


txtimagefile2 = Me.CommonDialog1.FileName
End Sub

Private Sub Command8_Click()

CommonDialog1.Filter = "JPEG (*.jpg)|*.jpg|TIF (*.tif)|*.tif|PNG (*.png)|*.png"


CommonDialog1.ShowOpen


txtimagefile = Me.CommonDialog1.FileName



End Sub

Private Sub Command9_Click()



Me.ImageViewer1.DocxAddChar 0, "T", 0, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "h", 1, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 2, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 3, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 4, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 5, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 6, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 7, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 8, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "e", 9, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "x", 10, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 11, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False
Me.ImageViewer1.DocxAddChar 0, "1", 12, 0, "Arial", 10, 255, 255, 255, 255, 0, 0, False, False, False


Me.ImageViewer1.DocxAddChar 0, "T", 0, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "h", 1, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 2, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 3, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 4, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 5, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 6, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 7, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 8, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "e", 9, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "x", 10, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 11, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "2", 12, 1, "Arial", 10, 255, 255, 255, 255, 0, 0, True, False, False

Me.ImageViewer1.DocxAddChar 0, "T", 0, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "h", 1, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 2, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 3, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 4, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "i", 5, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "s", 6, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, " ", 7, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 8, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "e", 9, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "x", 10, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "t", 11, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False
Me.ImageViewer1.DocxAddChar 0, "3", 12, 2, "Arial", 20, 0, 255, 255, 255, 0, 0, True, False, False

Me.ImageViewer1.DocxAddChar 0, "T", 0, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "h", 1, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "i", 2, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "s", 3, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, " ", 4, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "i", 5, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "s", 6, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, " ", 7, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "t", 8, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "e", 9, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "x", 10, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "t", 11, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True
Me.ImageViewer1.DocxAddChar 0, "4", 12, 3, "Arial", 20, 0, 255, 255, 255, 255, 0, True, True, True




If ImageViewer1.DocxCreateFile("c:\test1.docx") Then
    MsgBox "save c:\test1.docx completed"

End If






End Sub

Private Sub Text2_Change()

End Sub
