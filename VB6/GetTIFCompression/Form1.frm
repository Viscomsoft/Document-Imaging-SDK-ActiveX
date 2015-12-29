VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Get TIFF Compression"
   ClientHeight    =   7380
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10050
   LinkTopic       =   "Form1"
   ScaleHeight     =   7380
   ScaleWidth      =   10050
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txttotalpage 
      Height          =   375
      Left            =   1440
      TabIndex        =   7
      Text            =   "1"
      Top             =   6480
      Width           =   735
   End
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   5175
      Left            =   240
      TabIndex        =   5
      Top             =   240
      Width           =   9615
      _Version        =   65536
      _ExtentX        =   16960
      _ExtentY        =   9128
      _StockProps     =   0
      Border          =   0   'False
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
      Left            =   5160
      TabIndex        =   4
      Text            =   "0"
      Top             =   5640
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
      Left            =   2880
      TabIndex        =   2
      Text            =   "0"
      Top             =   5640
      Width           =   975
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5520
      Top             =   6360
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
      Top             =   5640
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   7080
      Top             =   6360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label9 
      Caption         =   "Total Pages"
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   6480
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
      Left            =   4080
      TabIndex        =   3
      Top             =   5640
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
      Left            =   1920
      TabIndex        =   1
      Top             =   5640
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public clrtrancolor

Private Sub cbooutputtype_Click()
  
End Sub

Private Sub Command1_Click()

Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif;*.tiff"

Me.CommonDialog1.ShowOpen

strFile = LCase(Me.CommonDialog1.FileName)

If Right(strFile, 3) = "tif" Or Right(strFile, 4) = "tiff" Then


        iCompIndex = ImageViewer1.TIFGetCompressionInfo(strFile)

        ImageViewer1.FileName = strFile

        Select Case iCompIndex
         Case -1
         MsgBox "Unknown"
         
         Case 0
         MsgBox "No compression"
         
        Case 1
         MsgBox "RLE compression"
        
        Case 2
         MsgBox "CompressionCCITT3 compression"
        Case 3
         MsgBox "Fax compression"
        Case 4
         MsgBox "LZW compression"
        Case 5
         MsgBox "Packbits compression"
        Case 6
         MsgBox "JPEG compression"
         
         
         End Select
 
Else

        MsgBox "Please select tiff file"
End If
 
 
 
 
 


ImageViewer1.SetFocus

Text1 = ImageViewer1.FileWidth
Text2 = ImageViewer1.FileHeight



End Sub

Private Sub Command2_Click()
End Sub

Private Sub Command3_Click()

End Sub

Private Sub Command4_Click()

End Sub

Private Sub Command5_Click()

End Sub

Private Sub Command6_Click()

End Sub

