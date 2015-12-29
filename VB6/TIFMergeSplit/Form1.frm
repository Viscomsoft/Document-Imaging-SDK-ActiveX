VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{C9460280-3EED-11D0-A647-00A0C91EF7B9}#1.0#0"; "ImageViewer2.OCX"
Begin VB.Form Form1 
   Caption         =   "Merge, Split, Add, Delete, Swap page of TIF "
   ClientHeight    =   9480
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14475
   LinkTopic       =   "Form1"
   ScaleHeight     =   9480
   ScaleWidth      =   14475
   StartUpPosition =   3  'Windows Default
   Begin SCRIBBLELib.ImageViewer ImageViewer1 
      Height          =   375
      Left            =   240
      TabIndex        =   41
      Top             =   9000
      Visible         =   0   'False
      Width           =   615
      _Version        =   65536
      _ExtentX        =   1085
      _ExtentY        =   661
      _StockProps     =   0
   End
   Begin VB.Frame Frame6 
      Caption         =   "Merge Multiple TIFF files"
      Height          =   3615
      Left            =   8520
      TabIndex        =   42
      Top             =   120
      Width           =   5655
      Begin VB.CommandButton Command13 
         Caption         =   "Merge Multiple TIF files"
         Height          =   375
         Left            =   120
         TabIndex        =   45
         Top             =   2640
         Width           =   2055
      End
      Begin VB.CommandButton Command12 
         Caption         =   "Add TIFF files"
         Height          =   375
         Left            =   120
         TabIndex        =   44
         Top             =   1800
         Width           =   1335
      End
      Begin VB.ListBox List1 
         Height          =   1425
         Left            =   120
         TabIndex        =   43
         Top             =   240
         Width           =   5415
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Swap TIF Page"
      Height          =   1455
      Left            =   120
      TabIndex        =   32
      Top             =   7440
      Width           =   8415
      Begin VB.CommandButton Command11 
         Caption         =   "Swap TIF"
         Height          =   375
         Left            =   3120
         TabIndex        =   40
         Top             =   840
         Width           =   1935
      End
      Begin VB.CommandButton Command10 
         Caption         =   "Select File"
         Height          =   255
         Left            =   6960
         TabIndex        =   39
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox txtswappageb 
         Height          =   285
         Left            =   1680
         TabIndex        =   38
         Text            =   "2"
         Top             =   960
         Width           =   735
      End
      Begin VB.TextBox txtswappagea 
         Height          =   285
         Left            =   1680
         TabIndex        =   36
         Text            =   "1"
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtswaptif 
         Height          =   285
         Left            =   1680
         TabIndex        =   34
         Top             =   240
         Width           =   5055
      End
      Begin VB.Label Label12 
         Caption         =   "Page No. b"
         Height          =   375
         Left            =   240
         TabIndex        =   37
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label11 
         Caption         =   "Page No. a"
         Height          =   255
         Left            =   240
         TabIndex        =   35
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label10 
         Caption         =   "TIF Source"
         Height          =   375
         Left            =   240
         TabIndex        =   33
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Select File"
      Height          =   255
      Left            =   6960
      TabIndex        =   31
      Top             =   6600
      Width           =   1215
   End
   Begin VB.Frame Frame4 
      Caption         =   "Add TIF Page"
      Height          =   1815
      Left            =   120
      TabIndex        =   22
      Top             =   5520
      Width           =   8295
      Begin VB.CommandButton Command8 
         Caption         =   "Add Page"
         Height          =   375
         Left            =   1680
         TabIndex        =   30
         Top             =   1440
         Width           =   1215
      End
      Begin VB.TextBox txtappendfromtif 
         Height          =   285
         Left            =   1680
         TabIndex        =   29
         Top             =   1080
         Width           =   5055
      End
      Begin VB.TextBox txtaddpageno 
         Height          =   285
         Left            =   1680
         TabIndex        =   27
         Text            =   "1"
         Top             =   720
         Width           =   735
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Select File"
         Height          =   255
         Left            =   6840
         TabIndex        =   25
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox txtaddtif 
         Height          =   285
         Left            =   1680
         TabIndex        =   24
         Top             =   240
         Width           =   5055
      End
      Begin VB.Label Label9 
         Caption         =   "Append From TIF"
         Height          =   255
         Left            =   240
         TabIndex        =   28
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label Label8 
         Caption         =   "Insert At Page No."
         Height          =   375
         Left            =   240
         TabIndex        =   26
         Top             =   720
         Width           =   1455
      End
      Begin VB.Label Label7 
         Caption         =   "TIF Source"
         Height          =   375
         Left            =   240
         TabIndex        =   23
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Delete TIF Page"
      Height          =   1575
      Left            =   120
      TabIndex        =   15
      Top             =   3840
      Width           =   8295
      Begin VB.CommandButton Command6 
         Caption         =   "Delete Page"
         Height          =   495
         Left            =   2880
         TabIndex        =   21
         Top             =   840
         Width           =   1935
      End
      Begin VB.TextBox txtdeletepageno 
         Height          =   375
         Left            =   1800
         TabIndex        =   20
         Text            =   "1"
         Top             =   840
         Width           =   855
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Select File"
         Height          =   375
         Left            =   6600
         TabIndex        =   18
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox txtdeletetif 
         Height          =   285
         Left            =   1320
         TabIndex        =   17
         Top             =   360
         Width           =   5055
      End
      Begin VB.Label Label6 
         Caption         =   "Delete Page No."
         Height          =   375
         Left            =   240
         TabIndex        =   19
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label5 
         Caption         =   "TIF Source"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.TextBox txtsplitsource 
      Height          =   375
      Left            =   1320
      TabIndex        =   11
      Top             =   2520
      Width           =   5175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Select File"
      Height          =   375
      Left            =   6720
      TabIndex        =   10
      Top             =   3000
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "Split TIF"
      Height          =   1455
      Left            =   120
      TabIndex        =   8
      Top             =   2280
      Width           =   8295
      Begin VB.CommandButton Command4 
         Caption         =   "Split one tif to two tif files"
         Height          =   495
         Left            =   2760
         TabIndex        =   14
         Top             =   720
         Width           =   2055
      End
      Begin VB.TextBox txtsplitfrompageno 
         Height          =   375
         Left            =   1920
         TabIndex        =   13
         Text            =   "1"
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label4 
         Caption         =   "Split From Page No."
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label3 
         Caption         =   "TIF Source "
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   360
         Width           =   855
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Select File"
      Height          =   375
      Left            =   6720
      TabIndex        =   6
      Top             =   1080
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1440
      Top             =   8880
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      Caption         =   "Merge two TIF files"
      Height          =   2055
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8175
      Begin VB.CommandButton cmdmerge 
         Caption         =   "Merge two tif files into one "
         Height          =   495
         Left            =   1200
         TabIndex        =   7
         Top             =   1440
         Width           =   2415
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1200
         TabIndex        =   5
         Top             =   960
         Width           =   5175
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Select File"
         Height          =   375
         Left            =   6600
         TabIndex        =   3
         Top             =   480
         Width           =   1215
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1200
         TabIndex        =   2
         Top             =   480
         Width           =   5175
      End
      Begin VB.Label Label2 
         Caption         =   "TIF file 2"
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "TIF file 1"
         Height          =   375
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   855
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdmerge_Click()
If Text1 = "" Then
    MsgBox "Please input TIF 1 file"
    Exit Sub
End If

If Text2 = "" Then
    MsgBox "Please input TIF 2 file"
    Exit Sub
End If

result = ImageViewer1.TIFMerge(Text1, Text2, "c:\test.tif")

If result Then

    MsgBox "merge c:\test.tif completed"
    
Else
    MsgBox "merge failed"

End If


End Sub

Private Sub Command1_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen


Text1 = CommonDialog1.FileName
End Sub

Private Sub Command10_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen

txtswaptif = CommonDialog1.FileName
End Sub

Private Sub Command11_Click()
If txtswaptif = "" Then
    MsgBox "Please input tif source "
    Exit Sub
End If

result = ImageViewer1.TIFSwap(txtswaptif, txtswappagea, txtswappageb)
If result Then

    MsgBox "Swap Page Completed"
    
Else
    MsgBox "Swap Page failed"

End If

End Sub

Private Sub Command12_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif;*.tiff||"

Me.CommonDialog1.ShowOpen

List1.AddItem CommonDialog1.FileName
End Sub

Private Sub Command13_Click()
Dim strTIFStringList As String

If List1.ListCount = 0 Then
    MsgBox "Please add tiff files"
    Exit Sub
End If


For i = 0 To List1.ListCount - 1
   
   If i = List1.ListCount - 1 Then
       strTIFStringList = strTIFStringList + List1.List(i)
    Else
       strTIFStringList = strTIFStringList + List1.List(i) + ";"
  End If
    
Next

iresult = ImageViewer1.TIFMergeMultiFiles(strTIFStringList, "c:\mergetif.tif", ";")

If iresult = 1 Then
    MsgBox "save to c:\mergetif.tif completed"
Else
    MsgBox "Failed"

End If



End Sub

Private Sub Command2_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen


Text2 = CommonDialog1.FileName
End Sub

Private Sub Command3_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen


txtsplitsource = CommonDialog1.FileName


End Sub

Private Sub Command4_Click()
If txtsplitsource = "" Then
    MsgBox "Please input tif source "
    Exit Sub
End If

result = ImageViewer1.TIFSplit(txtsplitsource, txtsplitfrompageno, "c:\testsplit1.tif", "c:\testsplit2.tif")
If result Then

    MsgBox "Split to c:\testsplit1.tif and c:\testsplit2.tif completed"
    
Else
    MsgBox "Split failed"

End If

End Sub

Private Sub Command5_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen


txtdeletetif = CommonDialog1.FileName
End Sub

Private Sub Command6_Click()
If txtdeletetif = "" Then
    MsgBox "Please input tif source "
    Exit Sub
End If

result = ImageViewer1.TIFDeletePage(txtdeletetif, txtdeletepageno)
If result Then

    MsgBox "Delete Page Completed"
    
Else
    MsgBox "Delete Page failed"

End If
End Sub

Private Sub Command7_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen

txtaddtif = CommonDialog1.FileName
End Sub

Private Sub Command8_Click()


If txtaddtif = "" Then
    MsgBox "Please input tif source "
    Exit Sub
End If

If txtappendfromtif = "" Then
    MsgBox "Please input Append From TIF"
    Exit Sub
End If




result = ImageViewer1.TIFAddPage(txtaddtif, txtaddpageno, txtappendfromtif)
If result Then

    MsgBox "Add Page Completed"
    
Else
    MsgBox "Add failed"

End If
End Sub

Private Sub Command9_Click()
Me.CommonDialog1.Filter = "TIF (*.tif)|*.tif||"

Me.CommonDialog1.ShowOpen

txtappendfromtif = CommonDialog1.FileName
End Sub
