VERSION 5.00
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Image Effects"
   ClientHeight    =   7530
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15240
   LinkTopic       =   "Form1"
   ScaleHeight     =   7530
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   5175
      Left            =   120
      TabIndex        =   82
      Top             =   240
      Width           =   5415
      _Version        =   65536
      _ExtentX        =   9551
      _ExtentY        =   9128
      _StockProps     =   0
      Border          =   0   'False
   End
   Begin VB.CommandButton Command14 
      Caption         =   "Save "
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
      TabIndex        =   81
      Top             =   6240
      Width           =   1335
   End
   Begin VB.Frame Frame3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6735
      Left            =   9960
      TabIndex        =   39
      Top             =   0
      Width           =   5175
      Begin VB.CommandButton Command26 
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
         Left            =   3120
         TabIndex        =   85
         Top             =   6000
         Width           =   855
      End
      Begin VB.TextBox Text12 
         Height          =   285
         Left            =   1920
         TabIndex        =   84
         Text            =   "3"
         Top             =   6000
         Width           =   615
      End
      Begin VB.CommandButton Command25 
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
         Left            =   3120
         TabIndex        =   80
         Top             =   5400
         Width           =   855
      End
      Begin VB.TextBox Text25 
         Height          =   285
         Left            =   1920
         TabIndex        =   79
         Text            =   "100"
         Top             =   5400
         Width           =   615
      End
      Begin VB.CommandButton Command24 
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
         Left            =   3120
         TabIndex        =   77
         Top             =   4920
         Width           =   855
      End
      Begin VB.TextBox Text24 
         Height          =   285
         Left            =   1920
         TabIndex        =   76
         Text            =   "100"
         Top             =   4920
         Width           =   615
      End
      Begin VB.CommandButton Command23 
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
         Left            =   1920
         TabIndex        =   74
         Top             =   4440
         Width           =   855
      End
      Begin VB.ComboBox cbonoisetype 
         Height          =   315
         Left            =   2640
         Style           =   2  'Dropdown List
         TabIndex        =   72
         Top             =   3960
         Width           =   1455
      End
      Begin VB.CommandButton Command22 
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
         Left            =   4200
         TabIndex        =   71
         Top             =   3960
         Width           =   855
      End
      Begin VB.TextBox Text23 
         Height          =   285
         Left            =   1920
         TabIndex        =   70
         Text            =   "100"
         Top             =   3960
         Width           =   615
      End
      Begin VB.TextBox Text22 
         Height          =   285
         Left            =   1920
         TabIndex        =   68
         Text            =   "2"
         Top             =   3480
         Width           =   615
      End
      Begin VB.CommandButton Command15 
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
         Left            =   4200
         TabIndex        =   67
         Top             =   3480
         Width           =   855
      End
      Begin VB.ComboBox cbomosaictype 
         Height          =   315
         Left            =   2640
         Style           =   2  'Dropdown List
         TabIndex        =   66
         Top             =   3480
         Width           =   1095
      End
      Begin VB.CommandButton Command21 
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
         Left            =   3120
         TabIndex        =   64
         Top             =   3000
         Width           =   855
      End
      Begin VB.TextBox Text21 
         Height          =   375
         Left            =   1920
         TabIndex        =   63
         Text            =   "100"
         Top             =   2880
         Width           =   855
      End
      Begin VB.CommandButton Command20 
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
         Left            =   4200
         TabIndex        =   61
         Top             =   2520
         Width           =   855
      End
      Begin VB.TextBox Text20 
         Height          =   375
         Left            =   3360
         TabIndex        =   60
         Text            =   "200"
         Top             =   2400
         Width           =   375
      End
      Begin VB.TextBox Text19 
         Height          =   375
         Left            =   2880
         TabIndex        =   58
         Text            =   "200"
         Top             =   2400
         Width           =   375
      End
      Begin VB.TextBox Text18 
         Height          =   375
         Left            =   2160
         TabIndex        =   56
         Text            =   "100"
         Top             =   2400
         Width           =   375
      End
      Begin VB.TextBox Text17 
         Height          =   375
         Left            =   1440
         TabIndex        =   53
         Text            =   "100"
         Top             =   2400
         Width           =   375
      End
      Begin VB.CommandButton Command19 
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
         Left            =   4200
         TabIndex        =   51
         Top             =   1680
         Width           =   855
      End
      Begin VB.ComboBox cboembossdir 
         Height          =   315
         Left            =   2640
         Style           =   2  'Dropdown List
         TabIndex        =   50
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox Text16 
         Height          =   375
         Left            =   1920
         TabIndex        =   49
         Text            =   "3"
         Top             =   1680
         Width           =   495
      End
      Begin VB.CommandButton Command18 
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
         Left            =   3120
         TabIndex        =   47
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox Text15 
         Height          =   375
         Left            =   1920
         TabIndex        =   46
         Text            =   "3"
         Top             =   1200
         Width           =   855
      End
      Begin VB.CommandButton Command16 
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
         Left            =   3120
         TabIndex        =   42
         Top             =   360
         Width           =   855
      End
      Begin VB.TextBox Text13 
         Height          =   375
         Left            =   1920
         TabIndex        =   41
         Text            =   "3"
         Top             =   240
         Width           =   855
      End
      Begin VB.CommandButton Command17 
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
         Left            =   3120
         TabIndex        =   40
         Top             =   840
         Width           =   855
      End
      Begin VB.Label Label30 
         Caption         =   "Median"
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
         TabIndex        =   83
         Top             =   6000
         Width           =   735
      End
      Begin VB.Label Label29 
         Caption         =   "Twirl 0-360 "
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
         TabIndex        =   78
         Top             =   5520
         Width           =   1095
      End
      Begin VB.Label Label28 
         Caption         =   "SharpenEdge"
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
         TabIndex        =   75
         Top             =   4920
         Width           =   1095
      End
      Begin VB.Label Label27 
         Caption         =   "Sharpen"
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
         TabIndex        =   73
         Top             =   4440
         Width           =   615
      End
      Begin VB.Label Label16 
         Caption         =   "Noise"
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
         TabIndex        =   69
         Top             =   3960
         Width           =   615
      End
      Begin VB.Label Label15 
         Caption         =   "Mosaic"
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
         TabIndex        =   65
         Top             =   3480
         Width           =   615
      End
      Begin VB.Label Label26 
         Caption         =   "Monochrome (0-255)"
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
         TabIndex        =   62
         Top             =   3000
         Width           =   1575
      End
      Begin VB.Label Label25 
         Caption         =   "Y"
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
         Left            =   3360
         TabIndex        =   59
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label24 
         Caption         =   "X"
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
         Left            =   2880
         TabIndex        =   57
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label23 
         Caption         =   "Radius2"
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
         Left            =   2160
         TabIndex        =   55
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label22 
         Caption         =   "Radius1"
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
         Left            =   1440
         TabIndex        =   54
         Top             =   2160
         Width           =   615
      End
      Begin VB.Label Label21 
         Caption         =   "FocalBW"
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
         TabIndex        =   52
         Top             =   2400
         Width           =   735
      End
      Begin VB.Label Label20 
         Caption         =   "Emboss"
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
         TabIndex        =   48
         Top             =   1680
         Width           =   855
      End
      Begin VB.Label Label19 
         Caption         =   "Diffuse"
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
         TabIndex        =   45
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label17 
         Caption         =   "AntiNoise (1 -5)"
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
         TabIndex        =   44
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label18 
         Caption         =   "Blur"
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
         TabIndex        =   43
         Top             =   720
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      Height          =   6735
      Left            =   5640
      TabIndex        =   2
      Top             =   0
      Width           =   4215
      Begin VB.CommandButton Command13 
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
         Height          =   375
         Left            =   1920
         TabIndex        =   24
         Top             =   6120
         Width           =   855
      End
      Begin VB.CommandButton Command12 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   23
         Top             =   5520
         Width           =   855
      End
      Begin VB.TextBox Text11 
         Height          =   375
         Left            =   1920
         TabIndex        =   22
         Text            =   "200"
         Top             =   5520
         Width           =   495
      End
      Begin VB.CommandButton Command11 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   21
         Top             =   5040
         Width           =   855
      End
      Begin VB.TextBox Text10 
         Height          =   375
         Left            =   1920
         TabIndex        =   20
         Text            =   "120"
         Top             =   5040
         Width           =   495
      End
      Begin VB.CommandButton Command10 
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
         Height          =   375
         Left            =   1920
         TabIndex        =   19
         Top             =   4440
         Width           =   855
      End
      Begin VB.CommandButton Command9 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   18
         Top             =   3720
         Width           =   855
      End
      Begin VB.TextBox Text9 
         Height          =   375
         Left            =   1920
         TabIndex        =   17
         Text            =   "255"
         Top             =   3720
         Width           =   495
      End
      Begin VB.CommandButton Command8 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   16
         Top             =   3120
         Width           =   855
      End
      Begin VB.TextBox Text8 
         Height          =   375
         Left            =   1920
         TabIndex        =   15
         Text            =   "255"
         Top             =   3120
         Width           =   495
      End
      Begin VB.CommandButton Command7 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   14
         Top             =   2640
         Width           =   855
      End
      Begin VB.TextBox Text7 
         Height          =   375
         Left            =   1920
         TabIndex        =   13
         Text            =   "255"
         Top             =   2640
         Width           =   495
      End
      Begin VB.TextBox Text6 
         Height          =   375
         Left            =   2760
         TabIndex        =   12
         Text            =   "127"
         Top             =   2040
         Width           =   375
      End
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   2280
         TabIndex        =   11
         Text            =   "0"
         Top             =   2040
         Width           =   375
      End
      Begin VB.CommandButton Command6 
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
         Height          =   375
         Left            =   3240
         TabIndex        =   10
         Top             =   2040
         Width           =   735
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1800
         TabIndex        =   9
         Text            =   "0"
         Top             =   2040
         Width           =   375
      End
      Begin VB.CommandButton Command4 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   8
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1920
         TabIndex        =   7
         Text            =   "2.0"
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton Command3 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   6
         Top             =   720
         Width           =   855
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1920
         TabIndex        =   5
         Text            =   "200"
         Top             =   720
         Width           =   495
      End
      Begin VB.CommandButton Command2 
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
         Height          =   375
         Left            =   2520
         TabIndex        =   4
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1920
         TabIndex        =   3
         Text            =   "0"
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label14 
         Caption         =   "DeSaturation "
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
         TabIndex        =   38
         Top             =   6240
         Width           =   1455
      End
      Begin VB.Label Label13 
         Caption         =   "Saturation (Default 100)"
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
         TabIndex        =   37
         Top             =   5640
         Width           =   1455
      End
      Begin VB.Label Label12 
         Caption         =   "Ligthness (Default is 100)"
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
         TabIndex        =   36
         Top             =   5040
         Width           =   1695
      End
      Begin VB.Label Label11 
         Caption         =   "Invert Color"
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
         TabIndex        =   35
         Top             =   4440
         Width           =   1455
      End
      Begin VB.Label Label10 
         Caption         =   "Blue (0 - 255)"
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
         TabIndex        =   34
         Top             =   3840
         Width           =   1455
      End
      Begin VB.Label Label9 
         Caption         =   "Green (0 - 255)"
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
         TabIndex        =   33
         Top             =   3240
         Width           =   1455
      End
      Begin VB.Label Label8 
         Caption         =   "Red (0 - 255)"
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
         TabIndex        =   32
         Top             =   2640
         Width           =   1455
      End
      Begin VB.Label Label7 
         Caption         =   "B"
         Height          =   255
         Left            =   2760
         TabIndex        =   31
         Top             =   1800
         Width           =   255
      End
      Begin VB.Label Label6 
         Caption         =   "G"
         Height          =   255
         Left            =   2280
         TabIndex        =   30
         Top             =   1800
         Width           =   255
      End
      Begin VB.Label Label5 
         Caption         =   "R"
         Height          =   255
         Left            =   1800
         TabIndex        =   29
         Top             =   1800
         Width           =   255
      End
      Begin VB.Label Label4 
         Caption         =   "Hue (0 - 255)"
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
         TabIndex        =   28
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label Label3 
         Caption         =   "Gamma (Default 1.0)"
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
         TabIndex        =   27
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Contrast (Default 100)"
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
         TabIndex        =   26
         Top             =   720
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "Brightness (-255 - 255)"
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
         TabIndex        =   25
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Restore Default Image"
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
      Left            =   1680
      TabIndex        =   1
      Top             =   5520
      Width           =   2295
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   720
      Top             =   6600
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
      Top             =   5520
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

Me.ImageViewer1.HighQuality = True

Me.ImageViewer1.FileName = Me.CommonDialog1.FileName

Me.ImageViewer1.View = 9
End Sub

Private Sub Command10_Click()
Me.ImageViewer1.InvertColor
End Sub

Private Sub Command11_Click()
Me.ImageViewer1.Ligthness Text10, Text10, Text10
End Sub

Private Sub Command12_Click()
Me.ImageViewer1.Saturation Text11
End Sub

Private Sub Command13_Click()
Me.ImageViewer1.DeSaturation
End Sub

Private Sub Command14_Click()
a = Me.ImageViewer1.Save("c:\test", "jpg")

If a = 1 Then
    MsgBox "Save c:\test.jpg completed"
Else
    MsgBox "Save fail"
End If



End Sub

Private Sub Command15_Click()
Me.ImageViewer1.Mosaic Me.cbomosaictype.ListIndex, Text22
End Sub

Private Sub Command16_Click()
Me.ImageViewer1.AntiNoise Text13
End Sub

Private Sub Command17_Click()
Me.ImageViewer1.Blur
End Sub

Private Sub Command18_Click()
Me.ImageViewer1.Diffuse Text15
End Sub

Private Sub Command19_Click()
Me.ImageViewer1.Emboss Text16, cboembossdir.ListIndex
End Sub

Private Sub Command2_Click()
Me.ImageViewer1.Brightness Text1, Text1, Text1
End Sub

Private Sub Command20_Click()
Me.ImageViewer1.FocalBW Text17, Text18, Text19, Text20
End Sub

Private Sub Command21_Click()
Me.ImageViewer1.Monochrome Text21, RGB(255, 255, 255), RGB(0, 0, 0)
End Sub

Private Sub Command22_Click()
Me.ImageViewer1.Noise Text23, cbonoisetype.ListIndex
End Sub

Private Sub Command23_Click()
Me.ImageViewer1.Sharpen
End Sub

Private Sub Command24_Click()
Me.ImageViewer1.SharpenEdge Text24
End Sub

Private Sub Command25_Click()
Me.ImageViewer1.Twirl Text25
End Sub

Private Sub Command26_Click()
Me.ImageViewer1.Median Text12
End Sub

Private Sub Command3_Click()
Me.ImageViewer1.Contrast Text2
End Sub

Private Sub Command4_Click()
Me.ImageViewer1.Gamma Text3
End Sub

Private Sub Command5_Click()

Me.ImageViewer1.ResetDefaultImage False
Me.ImageViewer1.View = 9
End Sub

Private Sub Command6_Click()
Me.ImageViewer1.Hue Text4, Text5, Text6
End Sub

Private Sub Command7_Click()
Me.ImageViewer1.Brightness Text7, 0, 0
End Sub

Private Sub Command8_Click()
Me.ImageViewer1.Brightness 0, Text8, 0
End Sub

Private Sub Command9_Click()
Me.ImageViewer1.Brightness 0, 0, Text9
End Sub

Private Sub Form_Load()


cboembossdir.AddItem "North"
cboembossdir.AddItem "North-East"
cboembossdir.AddItem "East"
cboembossdir.AddItem "South-East"
cboembossdir.AddItem "South"
cboembossdir.AddItem "South-West"
cboembossdir.AddItem "West"
cboembossdir.AddItem "North-West"
cboembossdir.ListIndex = 0

cbomosaictype.AddItem "normal"
cbomosaictype.AddItem "soft"
cbomosaictype.ListIndex = 0

cbonoisetype.AddItem "grayscale noise"
cbonoisetype.AddItem "color noise"
cbonoisetype.ListIndex = 0


End Sub

