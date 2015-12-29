VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "IMAGEV~1.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "ImageViewer CP Pro"
   ClientHeight    =   10095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   14325
   LinkTopic       =   "Form1"
   ScaleHeight     =   10095
   ScaleWidth      =   14325
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   6135
      Left            =   1800
      TabIndex        =   102
      Top             =   120
      Width           =   8055
      _Version        =   65536
      _ExtentX        =   14208
      _ExtentY        =   10821
      _StockProps     =   0
   End
   Begin VB.CheckBox chkuseadvpdf 
      Caption         =   "Use Advanced PDF Viewer"
      Height          =   495
      Left            =   120
      TabIndex        =   108
      Top             =   0
      Width           =   1455
   End
   Begin VB.Frame Frame14 
      Caption         =   "Change bpp (It can affect the output file size)"
      Height          =   735
      Left            =   9960
      TabIndex        =   105
      Top             =   0
      Width           =   4095
      Begin VB.CommandButton Command40 
         Caption         =   "Change"
         Height          =   255
         Left            =   2760
         TabIndex        =   107
         Top             =   360
         Width           =   1215
      End
      Begin VB.ComboBox cbopixelformat 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   106
         Top             =   360
         Width           =   2295
      End
   End
   Begin VB.CommandButton Command41 
      Caption         =   "Center the image"
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
      TabIndex        =   104
      Top             =   5400
      Width           =   1575
   End
   Begin VB.Frame Frame12 
      Caption         =   "High Quality"
      Height          =   615
      Left            =   0
      TabIndex        =   99
      Top             =   8040
      Width           =   1575
      Begin VB.OptionButton Option4 
         Caption         =   "OFF"
         Height          =   315
         Left            =   840
         TabIndex        =   101
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton Option3 
         Caption         =   "ON"
         Height          =   255
         Left            =   120
         TabIndex        =   100
         Top             =   240
         Value           =   -1  'True
         Width           =   615
      End
   End
   Begin VB.TextBox txturl 
      Height          =   285
      Left            =   10080
      TabIndex        =   89
      Text            =   "http://www.viscomsoft.com/images/imageviewerpro1.gif"
      Top             =   9000
      Width           =   4215
   End
   Begin VB.CommandButton Command39 
      Caption         =   "Load from url"
      Height          =   375
      Left            =   10200
      TabIndex        =   88
      Top             =   9360
      Width           =   1095
   End
   Begin VB.TextBox txtYDPI 
      Height          =   285
      Left            =   11280
      TabIndex        =   83
      Text            =   "96"
      Top             =   1440
      Width           =   495
   End
   Begin VB.TextBox txtXDPI 
      Height          =   285
      Left            =   10440
      TabIndex        =   82
      Text            =   "96"
      Top             =   1440
      Width           =   495
   End
   Begin VB.Frame Frame2 
      Height          =   1695
      Left            =   9960
      TabIndex        =   79
      Top             =   5160
      Width           =   1935
      Begin VB.CommandButton Command32 
         Caption         =   "Crop to HBITMAP"
         Height          =   375
         Left            =   120
         TabIndex        =   87
         Top             =   1200
         Width           =   1695
      End
      Begin VB.CommandButton Command15 
         Caption         =   "Crop to Clipboard"
         Height          =   375
         Left            =   120
         TabIndex        =   86
         Top             =   720
         Width           =   1695
      End
      Begin VB.CommandButton Command14 
         Caption         =   "Crop to Image File"
         Height          =   375
         Left            =   120
         TabIndex        =   80
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.CommandButton Command35 
      Caption         =   "Clear Selection "
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
      Left            =   7560
      TabIndex        =   78
      Top             =   7920
      Width           =   1455
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
      TabIndex        =   75
      Top             =   6360
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
      TabIndex        =   74
      Top             =   6840
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
      TabIndex        =   73
      Top             =   6840
      Width           =   735
   End
   Begin VB.Frame Frame11 
      Height          =   495
      Left            =   9960
      TabIndex        =   66
      Top             =   1680
      Width           =   1935
      Begin VB.CommandButton Command34 
         Caption         =   "Save"
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
         Left            =   240
         TabIndex        =   67
         Top             =   120
         Width           =   975
      End
   End
   Begin VB.Frame Frame10 
      Height          =   975
      Left            =   9960
      TabIndex        =   59
      Top             =   2640
      Width           =   1935
      Begin VB.TextBox txt_Height 
         Alignment       =   1  'Right Justify
         Height          =   300
         Left            =   1320
         TabIndex        =   63
         Text            =   "240"
         Top             =   600
         Width           =   495
      End
      Begin VB.TextBox txt_Width 
         Alignment       =   1  'Right Justify
         Height          =   300
         Left            =   480
         TabIndex        =   62
         Text            =   "320"
         Top             =   600
         Width           =   495
      End
      Begin VB.CommandButton Command19 
         Caption         =   "SaveBySize"
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
         Left            =   120
         TabIndex        =   60
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "x"
         Height          =   375
         Left            =   1080
         TabIndex        =   64
         Top             =   600
         Width           =   135
      End
      Begin VB.Label Label4 
         Caption         =   "Size"
         Height          =   255
         Left            =   120
         TabIndex        =   61
         Top             =   600
         Width           =   495
      End
   End
   Begin VB.ComboBox cbooutputimage 
      Height          =   315
      Left            =   9960
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   52
      Top             =   960
      Width           =   1455
   End
   Begin VB.Frame Frame8 
      Caption         =   "Mouse Mode"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1935
      Left            =   4680
      TabIndex        =   47
      Top             =   6960
      Width           =   4695
      Begin VB.OptionButton Option14 
         Caption         =   "(Left mouse Panning Only)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   103
         Top             =   1560
         Width           =   2415
      End
      Begin VB.OptionButton Option13 
         Caption         =   "Nothing"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   71
         Top             =   1250
         Width           =   1575
      End
      Begin VB.OptionButton Option12 
         Caption         =   "(Right mouse Panning Only)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   50
         Top             =   960
         Width           =   3615
      End
      Begin VB.OptionButton Option11 
         Caption         =   "(Selection Rectangle + Panning) "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   240
         TabIndex        =   49
         Top             =   600
         Width           =   4335
      End
      Begin VB.OptionButton Option10 
         Caption         =   "Default (Include Selection Rectangle + Panning + Auto Zoom)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   6.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   48
         Top             =   240
         Value           =   -1  'True
         Width           =   4335
      End
   End
   Begin VB.Frame Frame7 
      Caption         =   "Photo border"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   1800
      TabIndex        =   41
      Top             =   7320
      Width           =   2415
      Begin VB.ComboBox cboborderwidth 
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
         Left            =   720
         Style           =   2  'Dropdown List
         TabIndex        =   46
         Top             =   600
         Width           =   735
      End
      Begin VB.CommandButton Command38 
         Caption         =   "Change"
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
         Left            =   720
         TabIndex        =   44
         Top             =   240
         Width           =   615
      End
      Begin VB.CommandButton Command37 
         Caption         =   "add"
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
         Left            =   1560
         TabIndex        =   42
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label28 
         Caption         =   "Width"
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
         TabIndex        =   45
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label27 
         Caption         =   "Color"
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
         TabIndex        =   43
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.CommandButton Command36 
      Caption         =   "Import From PictureBox"
      Height          =   495
      Left            =   12120
      TabIndex        =   40
      Top             =   3600
      Width           =   1695
   End
   Begin VB.CommandButton Command33 
      Caption         =   "Paste From Clipboard  "
      Height          =   375
      Left            =   12120
      TabIndex        =   39
      Top             =   3120
      Width           =   1695
   End
   Begin VB.CommandButton Command31 
      Caption         =   "Flip Horizontal"
      Height          =   375
      Left            =   12000
      TabIndex        =   37
      Top             =   8160
      Width           =   1575
   End
   Begin VB.CommandButton Command30 
      Caption         =   "Flip Vertical     "
      Height          =   375
      Left            =   10200
      TabIndex        =   36
      Top             =   8160
      Width           =   1575
   End
   Begin VB.CommandButton Command28 
      Caption         =   "->|"
      Height          =   495
      Left            =   4710
      TabIndex        =   35
      Top             =   9510
      Width           =   480
   End
   Begin VB.CommandButton Command27 
      Caption         =   "->"
      Height          =   495
      Left            =   4230
      TabIndex        =   34
      Top             =   9510
      Width           =   480
   End
   Begin VB.CommandButton Command23 
      Caption         =   "<-"
      Height          =   495
      Left            =   3750
      TabIndex        =   33
      Top             =   9510
      Width           =   480
   End
   Begin VB.CommandButton Command16 
      Caption         =   "|<-"
      Height          =   495
      Left            =   3270
      TabIndex        =   32
      Top             =   9510
      Width           =   480
   End
   Begin VB.CommandButton Command26 
      Caption         =   "Save to HBITMAP"
      Height          =   375
      Left            =   12120
      TabIndex        =   31
      Top             =   4200
      Width           =   1695
   End
   Begin VB.PictureBox Picture1 
      Height          =   975
      Left            =   12000
      ScaleHeight     =   915
      ScaleWidth      =   2235
      TabIndex        =   29
      Top             =   6000
      Width           =   2295
   End
   Begin VB.CommandButton Command25 
      Caption         =   "Save to Picturebox"
      Height          =   375
      Left            =   12120
      TabIndex        =   28
      Top             =   4680
      Width           =   1695
   End
   Begin VB.CommandButton Command24 
      Caption         =   "Save to Clipboard  "
      Height          =   375
      Left            =   12120
      TabIndex        =   27
      Top             =   2640
      Width           =   1695
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
      TabIndex        =   26
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Frame Frame3 
      Caption         =   "Multi Page Demo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1215
      Left            =   3120
      TabIndex        =   19
      Top             =   8880
      Width           =   5415
      Begin VB.OptionButton opttif 
         Caption         =   "TIF"
         Height          =   375
         Left            =   960
         TabIndex        =   70
         Top             =   240
         Width           =   615
      End
      Begin VB.OptionButton optpdf 
         Caption         =   "PDF"
         Height          =   375
         Left            =   120
         TabIndex        =   69
         Top             =   240
         Value           =   -1  'True
         Width           =   855
      End
      Begin VB.CommandButton Command22 
         Caption         =   "Go"
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
         Left            =   3360
         TabIndex        =   22
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox Text2 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   2970
         TabIndex        =   21
         Text            =   "1"
         Top             =   720
         Width           =   375
      End
      Begin VB.CommandButton Command21 
         Caption         =   "LoadMulti Page "
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
         Left            =   2280
         TabIndex        =   20
         Top             =   240
         Width           =   3000
      End
      Begin VB.Label Label3 
         Caption         =   "Total Page"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3960
         TabIndex        =   24
         Top             =   840
         Width           =   975
      End
      Begin VB.Label lbl_total 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   4530
         TabIndex        =   25
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "Page No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2130
         TabIndex        =   23
         Top             =   840
         Width           =   855
      End
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Background Color"
      Height          =   375
      Left            =   12120
      TabIndex        =   18
      Top             =   1680
      Width           =   1695
   End
   Begin MSComDlg.CommonDialog CommonDialog2 
      Left            =   2355
      Top             =   9345
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Print Image"
      Height          =   375
      Left            =   12120
      TabIndex        =   17
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Index           =   1
      Left            =   0
      TabIndex        =   13
      Top             =   8640
      Width           =   3015
      Begin VB.CommandButton Command18 
         Caption         =   "Restore Position"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1560
         TabIndex        =   15
         Top             =   120
         Width           =   1455
      End
      Begin VB.CommandButton Command17 
         Caption         =   "Save Position"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   45
         TabIndex        =   14
         Top             =   120
         Width           =   1455
      End
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
      TabIndex        =   10
      Top             =   7320
      Width           =   1575
      Begin VB.OptionButton Option2 
         Caption         =   "OFF"
         Height          =   375
         Left            =   840
         TabIndex        =   12
         Top             =   195
         Width           =   615
      End
      Begin VB.OptionButton Option1 
         Caption         =   "ON"
         Height          =   375
         Left            =   120
         TabIndex        =   11
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
      TabIndex        =   9
      Top             =   4800
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
      TabIndex        =   8
      Top             =   4320
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
      TabIndex        =   7
      Top             =   2880
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
      TabIndex        =   6
      Top             =   2400
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
      TabIndex        =   5
      Top             =   3840
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
      TabIndex        =   4
      Top             =   3360
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
      TabIndex        =   3
      Top             =   1920
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
      TabIndex        =   2
      Top             =   1440
      Width           =   1575
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
      Left            =   0
      TabIndex        =   1
      Top             =   1030
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
      Top             =   600
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1800
      Top             =   9480
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame4 
      Caption         =   "Advance Rotate"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1800
      Left            =   10080
      TabIndex        =   38
      Top             =   7080
      Width           =   3975
      Begin VB.OptionButton Option5 
         Caption         =   "Rotate Right"
         Height          =   330
         Left            =   120
         TabIndex        =   98
         Top             =   300
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Option6 
         Caption         =   "Rotate Left"
         Height          =   195
         Left            =   120
         TabIndex        =   97
         Top             =   720
         Width           =   1215
      End
      Begin VB.Frame Frame5 
         BorderStyle     =   0  'None
         Height          =   735
         Left            =   1335
         TabIndex        =   93
         Top             =   240
         Width           =   1260
         Begin VB.OptionButton Option7 
            Caption         =   "90"
            Height          =   330
            Left            =   120
            TabIndex        =   96
            Top             =   -60
            Value           =   -1  'True
            Width           =   1035
         End
         Begin VB.OptionButton Option8 
            Caption         =   "180"
            Height          =   195
            Left            =   120
            TabIndex        =   95
            Top             =   270
            Width           =   855
         End
         Begin VB.OptionButton Option9 
            Caption         =   "270"
            Height          =   195
            Left            =   120
            TabIndex        =   94
            Top             =   540
            Width           =   1095
         End
      End
      Begin VB.CommandButton Command29 
         Caption         =   "OK"
         Height          =   375
         Left            =   3000
         TabIndex        =   92
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame Frame9 
      Height          =   1575
      Left            =   9960
      TabIndex        =   53
      Top             =   3600
      Width           =   1935
      Begin VB.CommandButton Command12 
         Caption         =   "Back Color"
         Height          =   315
         Left            =   120
         TabIndex        =   65
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox txtThumbnailHeight 
         Height          =   375
         Left            =   1320
         TabIndex        =   58
         Text            =   "120"
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox txtThumbnailWidth 
         Height          =   375
         Left            =   480
         TabIndex        =   57
         Text            =   "160"
         Top             =   720
         Width           =   495
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Make Thumbnail"
         Height          =   375
         Left            =   120
         TabIndex        =   56
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label30 
         Caption         =   "x"
         Height          =   375
         Left            =   1080
         TabIndex        =   55
         Top             =   720
         Width           =   135
      End
      Begin VB.Label Label7 
         Caption         =   "Size"
         Height          =   375
         Left            =   120
         TabIndex        =   54
         Top             =   720
         Width           =   375
      End
   End
   Begin VB.Frame Frame6 
      Height          =   3855
      Left            =   12000
      TabIndex        =   91
      Top             =   1560
      Width           =   2295
   End
   Begin VB.Label Label11 
      Caption         =   "URL"
      Height          =   255
      Left            =   9480
      TabIndex        =   90
      Top             =   9000
      Width           =   495
   End
   Begin VB.Label Label33 
      Caption         =   "After Drawn selection Rectangle, you may pressing shfit key and draging the selection rectangle."
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
      Left            =   4680
      TabIndex        =   85
      Top             =   6480
      Width           =   5055
   End
   Begin VB.Label Label32 
      Caption         =   "X"
      Height          =   255
      Left            =   11040
      TabIndex        =   84
      Top             =   1440
      Width           =   255
   End
   Begin VB.Label Label26 
      Caption         =   "DPI"
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
      Left            =   9960
      TabIndex        =   81
      Top             =   1440
      Width           =   375
   End
   Begin VB.Label lblwidthheight 
      Caption         =   "0,0 0x0"
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
      Left            =   1800
      TabIndex        =   77
      Top             =   6840
      Width           =   2295
   End
   Begin VB.Label Label10 
      Caption         =   "Selection Rectangle Position"
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
      Left            =   1800
      TabIndex        =   76
      Top             =   6480
      Width           =   2655
   End
   Begin VB.Label Label9 
      Caption         =   "Hold down right mouse button for panning"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   4800
      TabIndex        =   72
      Top             =   6240
      Width           =   3735
   End
   Begin VB.Label Label31 
      Caption         =   "ico file should 16x16 or 32x32"
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
      Left            =   9960
      TabIndex        =   68
      Top             =   2280
      Width           =   2055
   End
   Begin VB.Label Label6 
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
      Left            =   9960
      TabIndex        =   51
      Top             =   720
      Width           =   1815
   End
   Begin VB.Label Label8 
      Caption         =   "Picture Box"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   12000
      TabIndex        =   30
      Top             =   5520
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "When the image is larger than display area  ,you can save the scroll position and restore the position."
      Height          =   810
      Left            =   0
      TabIndex        =   16
      Top             =   9240
      Width           =   3045
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iX As Integer
Dim iY As Integer
Dim clrHashForeColor
Dim clrHashBackColor
Dim clrBorderFrameColor
Dim clrThumbnailBackColor
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

Private Declare Function OleCreatePictureIndirect Lib "olepro32.dll" ( _
      lpPictDesc As PictDesc, _
      riid As Guid, _
      ByVal fPictureOwnsHandle As Long, _
      ipic As IPicture _
    ) As Long


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

Private Sub Check1_Click()


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

Private Sub chkuseadvpdf_Click()


If chkuseadvpdf.Value = 1 Then
    Me.ImageViewer1.PDFUseAdvancedViewer = True
Else
    Me.ImageViewer1.PDFUseAdvancedViewer = False
End If


End Sub

Private Sub cmd_Rotate_Click()
Me.ImageViewer1.Rotate90
ImageViewer1.SetFocus
End Sub

Private Sub cmd_SelectFile_Click()

Me.CommonDialog1.Filter = "All Files (*.*)|*.*|PDF (*.pdf)|*.pdf|PhotoShop (*.psd)|*.psd|Mng (*.mng *.jng)|*.mng;*.jng|Raw Image format(*.cr2 *.nef *.crw *.mrw *.raf *.erf *.3fr *.dcr *.raw *.dng *.pef *.x3f *.arw *.sr2 *.mef *.prf)|*.cr2;*.nef;*.crw;*.mrw;*.raf;*.erf;*.3fr;*.dcr;*.raw;*.dng;*.pef;*.x3f;*.arw;*.sr2;*.mef;*.prf|JPEG 2000 (*.j2k)|*.j2k;*.j2c|JPEG (*.jpg)|*.jpg|PCX (*.pcx)|*.pcx|WMF (*.wmf)|*.wmf|Wireless Bitmap (*.wbmp)|*.wbmp|Bitmap (*.bmp)|*.bmp|TIF (*.tif)|*.tif|TGA (*.tga)|*.tga|Gif (*.gif)|*.gif |PGX (*.pgx)|*.pgx|RAS (*.ras)|*.ras|PNM (*.pnm)|*.pnm|PNG (*.png)|*.png|Icon (*.ico)|*.ico"


Me.CommonDialog1.ShowOpen

Me.ImageViewer1.FileName = Me.CommonDialog1.FileName


ImageViewer1.SetFocus


txtXDPI = ImageViewer1.Xdpi
txtYDPI = ImageViewer1.Ydpi

Me.txt_Height = Me.ImageViewer1.FileHeight
Me.txt_Width = Me.ImageViewer1.FileWidth




If ImageViewer1.PDFIsEncrypted And Me.ImageViewer1.FileHeight = 0 Then

    MsgBox "The PDF Encrypted with password, you need set the PDFUserPassword property"
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
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))

ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI

bresult = ImageViewer1.CreateThumbnail("c:\test1", strType, txtThumbnailWidth, txtThumbnailHeight, clrThumbnailBackColor)


If bresult Then
  MsgBox "Save " + "c:\test" + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If


End Sub

Private Sub Command13_Click()

Me.ImageViewer1.View = 11
ImageViewer1.SetFocus

End Sub

Private Sub Command14_Click()
strFile = "c:\test"
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))


ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI
   
   
a = Me.ImageViewer1.Crop2ImageFile(strFile, strType)

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If
ImageViewer1.SetFocus

End Sub

Private Sub Command15_Click()
ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI
   
   
a = ImageViewer1.Crop2Clipboard()

If a = True Then
    MsgBox "Save Complete"
Else
    MsgBox "Save fail"
End If



End Sub

Private Sub Command12_Click()

CommonDialog2.ShowColor
clrThumbnailBackColor = CommonDialog2.Color
End Sub

Private Sub Command16_Click()
Text2.Text = 1
Command22_Click
End Sub

Private Sub Command17_Click()
iX = Me.ImageViewer1.GetHorzScrollBarPos
iY = Me.ImageViewer1.GetVertScrollBarPos

Me.ImageViewer1.SetFocus

End Sub

Private Sub Command18_Click()
     Me.ImageViewer1.SetScrollBarPos iX, iY
    
    
    Me.ImageViewer1.SetFocus

End Sub


Private Sub Command19_Click()

strFile = "c:\test"
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))


ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI


a = Me.ImageViewer1.SaveBySize(strFile, strType, Val(txt_Width), Val(txt_Height))

If a = 1 Then
    MsgBox "Save " + strFile + "." + strType + " Complete"
Else
    MsgBox "Save fail"
End If

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
If optpdf.Value = True Then
    Me.ImageViewer1.LoadMultiPage App.Path + "\multipdfdemo.pdf", 1
Else
    Me.ImageViewer1.LoadMultiPage App.Path + "\multpage.tif", 1
End If

Me.lbl_total = Str(Me.ImageViewer1.GetTotalPage)

End Sub

Private Sub Command22_Click()



If optpdf.Value = True Then
    Me.ImageViewer1.LoadMultiPage App.Path + "\multipdfdemo.pdf", Str(Text2)
Else
    Me.ImageViewer1.LoadMultiPage App.Path + "\multpage.tif", Str(Text2)
End If

Me.lbl_total = Str(Me.ImageViewer1.GetTotalPage)

End Sub

Private Sub Command23_Click()
If Text2.Text > 1 Then
    Text2.Text = Text2.Text - 1
Else
    Text2.Text = 1
End If
Command22_Click
End Sub

Private Sub Command24_Click()
ImageViewer1.Copy2Clipboard

End Sub

Private Sub Command25_Click()
Picture1.Picture = ImageViewer1.Copy2PictureBox
End Sub

Private Sub Command26_Click()
Picture1.Picture = BitmapToPicture(ImageViewer1.Copy2HBITMAP)

End Sub

Private Sub Command27_Click()
If Text2.Text < ImageViewer1.GetTotalPage Then
    Text2.Text = Text2.Text + 1
Else
    Text2.Text = ImageViewer1.GetTotalPage
End If
Command22_Click
End Sub

Private Sub Command28_Click()
Text2.Text = ImageViewer1.GetTotalPage
Command22_Click
End Sub

Private Sub Command29_Click()
'*******************************************************************
'***  Remark
'*******************************************************************
'*  0 = 90-degree rotation without flipping
'*  1 = 180-degree rotation without flipping
'*  2 = 270-degree rotation without flipping
'*  3 = no rotation and a horizontal flip
'*  4 = 90-degree rotation followed by a horizontal flip
'*  5 = 180-degree rotation followed by a horizontal flip
'*  6 = 270-degree rotation followed by a horizontal flip
'*  7 = no rotation and a vertical flip
'*  8 = 90-degree rotation followed by a vertical flip
'*  9 = 180-degree rotation followed by a vertical flip
'* 10= 270-degree rotation followed by a vertical flip
'*******************************************************************
     
Select Case Option5.Value
    Case True
        If Option7.Value = True Then
            ImageViewer1.Rotate 0
        End If
        If Option8.Value = True Then
            ImageViewer1.Rotate 1
        End If
        If Option9.Value = True Then
            ImageViewer1.Rotate 2
        End If
    Case False
        If Option7.Value = True Then
            ImageViewer1.Rotate 2
        End If
        If Option8.Value = True Then
            ImageViewer1.Rotate 1
        End If
        If Option9.Value = True Then
            ImageViewer1.Rotate 0
        End If
End Select
End Sub

Private Sub Command3_Click()
ImageViewer1.PrintImage True
End Sub

Private Sub Command30_Click()
ImageViewer1.Rotate 7
End Sub

Private Sub Command31_Click()
ImageViewer1.Rotate 3
End Sub

Private Sub Command32_Click()

ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI
   

Picture1.Picture = BitmapToPicture(ImageViewer1.Crop2HBITMAP)


End Sub

Private Sub Command35_Click()
ImageViewer1.ClearSelectionRect
End Sub

Private Sub Command36_Click()
ImageViewer1.ImportFromPictureBox Picture1.Picture
End Sub

Private Sub Command37_Click()
ivalue = cboborderwidth.List(cboborderwidth.ListIndex)
Me.ImageViewer1.AddBorder ivalue, clrBorderFrameColor

End Sub

Private Sub Command33_Click()
ImageViewer1.PasteFromClipboard
End Sub

Private Sub Command34_Click()
strFile = "c:\test"
strType = Trim(cbooutputimage.List(cbooutputimage.ListIndex))


ImageViewer1.Xdpi = txtXDPI
ImageViewer1.Ydpi = txtYDPI


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



Private Sub Command38_Click()
CommonDialog2.ShowColor
clrBorderFrameColor = CommonDialog2.Color
End Sub

Private Sub Command39_Click()
ImageViewer1.LoadImageFromURL txturl, 0
End Sub

Private Sub Command4_Click()
ImageViewer1.View = 2
ImageViewer1.SetFocus

End Sub

Private Sub Command40_Click()

Select Case cbopixelformat.ListIndex

Case 0
    Me.ImageViewer1.ConvertTo1bpp
Case 1
    Me.ImageViewer1.ConvertTo4bpp
Case 2
    Me.ImageViewer1.ConvertTo8bpp
Case 3
    Me.ImageViewer1.ConvertTo8bppGrayScale
Case 4
    Me.ImageViewer1.ConvertTo16bppRGB555
Case 5
    Me.ImageViewer1.ConvertTo16bppRGB565
Case 6
    Me.ImageViewer1.ConvertTo24bpp
Case 7
    Me.ImageViewer1.ConvertTo32bpp
Case 8
    Me.ImageViewer1.ConvertTo32bppARGB
End Select



End Sub

Private Sub Command41_Click()
ImageViewer1.View = 12
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


ImageViewer1.FileName = App.Path + "\demo.bmp"
txt_Width = Me.ImageViewer1.FileWidth
txt_Height = Me.ImageViewer1.FileHeight

clrBorderFrameColor = RGB(255, 255, 255)


cbopixelformat.AddItem "Convert to 1bpp"
cbopixelformat.AddItem "Convert to 4bpp"
cbopixelformat.AddItem "Convert to 8bpp"
cbopixelformat.AddItem "Convert to 8bpp Grayscale"
cbopixelformat.AddItem "Convert to 16bpp RGB555"
cbopixelformat.AddItem "Convert to 16bpp RGB565"
cbopixelformat.AddItem "Convert to 24bpp"
cbopixelformat.AddItem "Convert to 32bpp"
cbopixelformat.AddItem "Convert to 32bpp ARGB"

cbopixelformat.ListIndex = 0


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
cbooutputimage.ListIndex = 0








For I = -4 To 30
    Me.cboborderwidth.AddItem Trim(Str(I))
Next
cboborderwidth.ListIndex = 15






End Sub

Private Sub ImageViewer1_SelectionRectDrawn(ByVal iLeft As Long, ByVal iTop As Long, ByVal iWidth As Long, ByVal iHeight As Long)

lblwidthheight.Caption = Str(iLeft) + "," + Str(iTop) + Str(iWidth) + " x" + Str(iHeight)


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

Public Function BitmapToPicture(ByVal hBmp As Long) As IPicture

   If (hBmp = 0) Then Exit Function

   Dim NewPic As Picture, tPicConv As PictDesc, IGuid As Guid

   
   With tPicConv
      .cbSizeofStruct = Len(tPicConv)
      .picType = vbPicTypeBitmap
      .hImage = hBmp
   End With

   ' Fill in IDispatch Interface ID
   With IGuid
      .Data1 = &H20400
      .Data4(0) = &HC0
      .Data4(7) = &H46
   End With

   ' Create a picture object:
   OleCreatePictureIndirect tPicConv, IGuid, True, NewPic
   
   ' Return it:
   Set BitmapToPicture = NewPic

End Function

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






