VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "PDF, TIF to Docx"
   ClientHeight    =   2220
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7635
   LinkTopic       =   "Form1"
   ScaleHeight     =   2220
   ScaleWidth      =   7635
   StartUpPosition =   2  'CenterScreen
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   30
      Left            =   6000
      TabIndex        =   5
      Top             =   120
      Width           =   30
      _Version        =   65536
      _ExtentX        =   53
      _ExtentY        =   53
      _StockProps     =   0
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5160
      Top             =   1920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame3 
      Caption         =   "Convert PDF or TIF to Single/Multipage Docx file"
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
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   7215
      Begin VB.CheckBox chkuseadvpdf 
         Caption         =   "Use Advanced PDF Viewer"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   240
         Width           =   2775
      End
      Begin VB.CommandButton Command9 
         Caption         =   "Convert to Docx"
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
         TabIndex        =   4
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox txtimagefile 
         Enabled         =   0   'False
         Height          =   285
         Left            =   1560
         TabIndex        =   2
         Top             =   720
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
         TabIndex        =   1
         Top             =   720
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
         TabIndex        =   3
         Top             =   720
         Width           =   1215
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub chkuseadvpdf_Click()
If chkuseadvpdf.Value = 1 Then
    Me.ImageViewer1.PDFUseAdvancedViewer = True
Else
    Me.ImageViewer1.PDFUseAdvancedViewer = False
End If
End Sub

Private Sub Command8_Click()

CommonDialog1.Filter = "PDF (*.pdf)|*.pdf|TIF (*.tif)|*.tif"


CommonDialog1.ShowOpen


txtimagefile = Me.CommonDialog1.FileName

End Sub

Private Sub Command9_Click()

If Right(txtimagefile, 3) = "pdf" Then
        
        If Me.ImageViewer1.DocxPDF2Docx(txtimagefile, "c:\test1.docx") Then
            MsgBox "Save c:\test1.docx completed"
        End If
        
Else

        If Me.ImageViewer1.DocxTIFF2Docx(txtimagefile, "c:\test1.docx") Then
            MsgBox "Save c:\test1.docx completed"
        End If



End If



End Sub
