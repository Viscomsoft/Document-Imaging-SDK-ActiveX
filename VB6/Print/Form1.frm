VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Printing"
   ClientHeight    =   7065
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12615
   LinkTopic       =   "Form1"
   ScaleHeight     =   7065
   ScaleWidth      =   12615
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   5655
      Left            =   120
      TabIndex        =   32
      Top             =   360
      Width           =   6255
      _Version        =   65536
      _ExtentX        =   11033
      _ExtentY        =   9975
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   5280
      Top             =   6600
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
      Height          =   375
      Left            =   240
      TabIndex        =   24
      Top             =   6240
      Width           =   1335
   End
   Begin VB.CheckBox chkstretch 
      Caption         =   "Stretch Image "
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
      Left            =   6720
      TabIndex        =   3
      Top             =   1800
      Width           =   2415
   End
   Begin VB.CheckBox chkoutline 
      Caption         =   "Show Outline Box"
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
      Left            =   6720
      TabIndex        =   2
      Top             =   1320
      Width           =   2415
   End
   Begin VB.Frame Frame1 
      Caption         =   "Print Setting"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5535
      Left            =   6480
      TabIndex        =   0
      Top             =   480
      Width           =   5895
      Begin VB.CommandButton cmdprint 
         Caption         =   "Print"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   25
         Top             =   5040
         Width           =   1095
      End
      Begin VB.ComboBox cbohoralign 
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
         Left            =   4320
         Style           =   2  'Dropdown List
         TabIndex        =   23
         Top             =   1440
         Width           =   975
      End
      Begin VB.ComboBox cbovertalign 
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
         Left            =   4320
         Style           =   2  'Dropdown List
         TabIndex        =   21
         Top             =   1080
         Width           =   975
      End
      Begin VB.TextBox txtMarginy 
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
         Left            =   4320
         TabIndex        =   19
         Text            =   "10"
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox txtMarginx 
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
         Left            =   4320
         TabIndex        =   17
         Text            =   "10"
         Top             =   360
         Width           =   855
      End
      Begin VB.Frame Frame2 
         Caption         =   "Mulit Page Printing Setting"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2655
         Left            =   120
         TabIndex        =   4
         Top             =   2040
         Width           =   5535
         Begin VB.TextBox txtspacex 
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
            Left            =   1560
            TabIndex        =   29
            Text            =   "10"
            Top             =   1920
            Width           =   855
         End
         Begin VB.TextBox spacey 
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
            Left            =   1560
            TabIndex        =   28
            Text            =   "10"
            Top             =   2280
            Width           =   855
         End
         Begin VB.Frame Frame3 
            Caption         =   "Print All Pages"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   6.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   1575
            Left            =   2400
            TabIndex        =   9
            Top             =   240
            Width           =   3015
            Begin VB.TextBox txtStartPage 
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
               Left            =   1320
               TabIndex        =   15
               Text            =   "1"
               Top             =   840
               Width           =   615
            End
            Begin VB.TextBox txtEndPage 
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
               Left            =   1320
               TabIndex        =   14
               Text            =   "1"
               Top             =   1200
               Width           =   615
            End
            Begin VB.OptionButton Option2 
               Caption         =   "No"
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
               Left            =   1320
               TabIndex        =   11
               Top             =   360
               Width           =   735
            End
            Begin VB.OptionButton optprintall 
               Caption         =   "Yes"
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
               Left            =   240
               TabIndex        =   10
               Top             =   360
               Value           =   -1  'True
               Width           =   735
            End
            Begin VB.Label Label4 
               Caption         =   "End Page"
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
               Left            =   240
               TabIndex        =   13
               Top             =   1200
               Width           =   855
            End
            Begin VB.Label Label3 
               Caption         =   "Start Page"
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
               Left            =   240
               TabIndex        =   12
               Top             =   840
               Width           =   735
            End
         End
         Begin VB.TextBox txtrow 
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
            Left            =   240
            TabIndex        =   8
            Text            =   "1"
            Top             =   1560
            Width           =   615
         End
         Begin VB.TextBox txtcol 
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
            Left            =   240
            TabIndex        =   6
            Text            =   "1"
            Top             =   960
            Width           =   615
         End
         Begin VB.Label Label7 
            Caption         =   "Space X (mm)"
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
            Left            =   240
            TabIndex        =   31
            Top             =   1920
            Width           =   1215
         End
         Begin VB.Label Label8 
            Caption         =   "Space Y (mm)"
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
            Left            =   240
            TabIndex        =   30
            Top             =   2280
            Width           =   1215
         End
         Begin VB.Label lbltotalpage 
            Caption         =   "0"
            BeginProperty Font 
               Name            =   "Arial"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1320
            TabIndex        =   27
            Top             =   360
            Width           =   735
         End
         Begin VB.Label Label11 
            Caption         =   "Total Page"
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
            Left            =   240
            TabIndex        =   26
            Top             =   360
            Width           =   855
         End
         Begin VB.Label Label2 
            Caption         =   "Number of row image in Page"
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
            Left            =   240
            TabIndex        =   7
            Top             =   1320
            Width           =   1935
         End
         Begin VB.Label Label1 
            Caption         =   "Number of colum image in Page"
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
            Left            =   240
            TabIndex        =   5
            Top             =   720
            Width           =   2055
         End
      End
      Begin VB.CheckBox chkshowprintdialog 
         Caption         =   "Show Printer Dialog Box"
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
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Value           =   1  'Checked
         Width           =   2055
      End
      Begin VB.Label Label10 
         Caption         =   "Horizontal Align"
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
         Left            =   3000
         TabIndex        =   22
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label Label9 
         Caption         =   "Vertical Align"
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
         Left            =   3000
         TabIndex        =   20
         Top             =   1080
         Width           =   1095
      End
      Begin VB.Label Label6 
         Caption         =   "Margin Y (mm)"
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
         Left            =   3000
         TabIndex        =   18
         Top             =   720
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "Margin X (mm)"
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
         Left            =   3000
         TabIndex        =   16
         Top             =   360
         Width           =   1215
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdprint_Click()
ImageViewer1.PrintOutline = chkoutline.Value
ImageViewer1.PrintStretch = chkstretch.Value
ImageViewer1.PrintMarginX = txtMarginx
ImageViewer1.PrintMarginY = txtMarginy
ImageViewer1.PrintSpaceX = txtspacex
ImageViewer1.PrintSpaceY = txtspacey

ImageViewer1.PrintVertAlign = Me.cbovertalign.ListIndex
ImageViewer1.PrintHorzAlign = Me.cbohoralign.ListIndex

ImageViewer1.PrintColCount = txtcol
ImageViewer1.PrintRowCount = txtrow

If optprintall.Value = True Then
    ImageViewer1.PrintStartPage = -1
    ImageViewer1.PrintEndPage = -1
Else
    ImageViewer1.PrintStartPage = txtStartPage
    ImageViewer1.PrintEndPage = txtEndPage
End If


Result = ImageViewer1.PrintImage(chkshowprintdialog.Value)

If Result = 0 Then
    MsgBox "Print failed"
End If


End Sub

Private Sub Command1_Click()
Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"

Me.CommonDialog1.ShowOpen


If Right(CommonDialog1.FileName, 3) = "tif" Or Right(CommonDialog1.FileName, 3) = "TIF" Or Right(CommonDialog1.FileName, 3) = "pdf" Or Right(CommonDialog1.FileName, 3) = "PDF" Then
    Me.ImageViewer1.LoadMultiPage CommonDialog1.FileName, 1
    txtEndPage = ImageViewer1.GetTotalPage

Else
    ImageViewer1.FileName = CommonDialog1.FileName
    txtEndPage = 1

End If

lbltotalpage.Caption = txtEndPage

Me.ImageViewer1.View = 10
End Sub

Private Sub Form_Load()
cbovertalign.AddItem "Top"
cbovertalign.AddItem "Center"
cbovertalign.AddItem "Bottom"

cbohoralign.AddItem "Left"
cbohoralign.AddItem "Center"
cbohoralign.AddItem "Right"

cbovertalign.ListIndex = 1
cbohoralign.ListIndex = 1


End Sub

Private Sub Option2_Click()
    txtStartPage.Enabled = True
    txtEndPage.Enabled = True
End Sub

Private Sub optprintall_Click()
    txtStartPage.Enabled = False
    txtEndPage.Enabled = False

End Sub
