VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   11400
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   15948
   LinkTopic       =   "Form1"
   ScaleHeight     =   11400
   ScaleWidth      =   15948
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "start"
      Height          =   852
      Left            =   9360
      TabIndex        =   8
      Top             =   840
      Width           =   2532
   End
   Begin VB.Timer Timer2 
      Left            =   11400
      Top             =   3960
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2568
      Left            =   12000
      TabIndex        =   4
      Top             =   6000
      Width           =   3492
   End
   Begin VB.OptionButton Option3 
      Caption         =   "難"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   9360
      TabIndex        =   3
      Top             =   6840
      Width           =   1932
   End
   Begin VB.OptionButton Option2 
      Caption         =   "中等"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   9360
      TabIndex        =   2
      Top             =   6000
      Width           =   1932
   End
   Begin VB.OptionButton Option1 
      Caption         =   "易"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   9360
      TabIndex        =   1
      Top             =   5160
      Width           =   1932
   End
   Begin VB.Timer Timer1 
      Left            =   7920
      Top             =   3240
   End
   Begin VB.Label Label4 
      Caption         =   "++score board"
      Height          =   492
      Left            =   12000
      TabIndex        =   7
      Top             =   5520
      Width           =   1332
   End
   Begin VB.Label Label3 
      Caption         =   "+ difficulty"
      Height          =   492
      Left            =   9360
      TabIndex        =   6
      Top             =   4800
      Width           =   732
   End
   Begin VB.Label Label2 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "@Adobe Gothic Std B"
         Size            =   48
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1332
      Left            =   9360
      TabIndex        =   5
      Top             =   3120
      Width           =   1932
   End
   Begin VB.Image Image3 
      Height          =   2316
      Left            =   9720
      Picture         =   "02.frx":0000
      Stretch         =   -1  'True
      Top             =   8760
      Width           =   2112
   End
   Begin VB.Image Image2 
      Height          =   855
      Left            =   10200
      Top             =   7440
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "@Adobe Gothic Std B"
         Size            =   48
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1332
      Left            =   9360
      TabIndex        =   0
      Top             =   1800
      Width           =   1932
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   8
      Left            =   6360
      Stretch         =   -1  'True
      Top             =   7080
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   7
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   7080
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   6
      Left            =   360
      Stretch         =   -1  'True
      Top             =   7080
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   5
      Left            =   6360
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   4
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   3
      Left            =   360
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   2
      Left            =   6360
      Stretch         =   -1  'True
      Top             =   600
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   1
      Left            =   3360
      Stretch         =   -1  'True
      Top             =   600
      Width           =   2136
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   2340
      Index           =   0
      Left            =   360
      Stretch         =   -1  'True
      Top             =   600
      Width           =   2136
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Timer1.Interval = 800  '時鐘1，控制地鼠跳動
    Timer2.Interval = 1000  '時鐘2，控制遊戲時間
    Label1.Caption = 0   '得分歸零
    Label2.Caption = 10  '設定遊戲時間
    Command1.Caption = "started"
End Sub

Private Sub Image1_Click(Index As Integer)
    If Command1.Caption = "started" Then
        If Image1(Index).Picture = Image3.Picture Then
            Label1.Caption = Label1.Caption + 1
        Else
            Label1.Caption = Label1.Caption - 1
        End If
    End If
End Sub

Private Sub Timer1_Timer()
    For i = 0 To 8
        Image1(i).Picture = Image2.Picture
    Next
    Randomize
    Image1(Int(Rnd * 9)).Picture = Image3.Picture
End Sub

Private Sub Timer2_Timer()
    If Label2.Caption = 0 Then
        MsgBox ("遊戲結束，您的得分是" & Label1.Caption)
        Timer1.Interval = 0
        Timer2.Interval = 0
        Command1.Caption = "start"
    Else
        Label2.Caption = Label2.Caption - 1
    End If
End Sub
