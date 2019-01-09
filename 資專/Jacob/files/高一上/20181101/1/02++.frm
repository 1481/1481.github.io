VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   7140
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   10692
   LinkTopic       =   "Form1"
   ScaleHeight     =   7140
   ScaleWidth      =   10692
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   852
      Left            =   7800
      TabIndex        =   7
      Top             =   2640
      Width           =   2412
   End
   Begin VB.Timer Timer1 
      Left            =   7320
      Top             =   3960
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   20.4
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3240
      TabIndex        =   3
      Text            =   "1000"
      Top             =   2880
      Width           =   3255
   End
   Begin VB.Label Label7 
      BackStyle       =   0  '透明
      Caption         =   "說明:在沒錢時加300元，且連續n次相同時多得到500n元"
      BeginProperty Font 
         Name            =   "標楷體"
         Size            =   16.2
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   732
      Left            =   1560
      TabIndex        =   8
      Top             =   6120
      Width           =   6732
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '透明
      Caption         =   "加分"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   20.4
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   720
      TabIndex        =   6
      Top             =   4680
      Width           =   972
   End
   Begin VB.Image Image3 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   1812
      Left            =   6120
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   1932
   End
   Begin VB.Image Image2 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   1812
      Left            =   4080
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   1932
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   1812
      Left            =   2040
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   1932
   End
   Begin VB.Label Label5 
      BackStyle       =   0  '透明
      Caption         =   "20"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   20.4
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6960
      TabIndex        =   5
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label Label4 
      BackStyle       =   0  '透明
      Caption         =   "籌碼"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   20.4
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   3240
      TabIndex        =   4
      Top             =   2280
      Width           =   972
   End
   Begin VB.Label Label3 
      Alignment       =   2  '置中對齊
      Appearance      =   0  '平面
      BackColor       =   &H80000005&
      BorderStyle     =   1  '單線固定
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1572
      Left            =   6000
      TabIndex        =   2
      Top             =   240
      Width           =   1452
   End
   Begin VB.Label Label2 
      Alignment       =   2  '置中對齊
      Appearance      =   0  '平面
      BackColor       =   &H80000005&
      BorderStyle     =   1  '單線固定
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1572
      Left            =   4200
      TabIndex        =   1
      Top             =   240
      Width           =   1452
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      Appearance      =   0  '平面
      BackColor       =   &H80000005&
      BorderStyle     =   1  '單線固定
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1572
      Left            =   2400
      TabIndex        =   0
      Top             =   240
      Width           =   1452
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Label5.Caption = 20
    If Text1.Text = 0 Then
        MsgBox ("You don't have any money!")
        MsgBox ("So I give you $300!")
        Text1.Text = Text1.Text + 300
    Else
        Timer1.Interval = 50
        Text1.Text = Text1.Text - 100
    End If
End Sub

Private Sub Form_Load()
    a = 0
End Sub

Private Sub Timer1_Timer()
    Randomize
    Label1.Caption = Int(Rnd * 3 + 1)
    Image1.Picture = LoadPicture(Label1.Caption & ".jpg")
    Label2.Caption = Int(Rnd * 3 + 1)
    Image2.Picture = LoadPicture(Label2.Caption & ".jpg")
    Label3.Caption = Int(Rnd * 3 + 1)
    Image3.Picture = LoadPicture(Label3.Caption & ".jpg")
    Label5.Caption = Label5.Caption - 1
    If Label5.Caption = 0 Then
        Timer1.Interval = 0
        If Label1.Caption = Label2.Caption And Label1.Caption = Label3.Caption Then
            Text1.Text = Text1.Text + (500 * (a + 1))
            a = a + 1
        Else
            a = 0
        End If
    End If
End Sub
