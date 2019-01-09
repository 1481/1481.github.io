VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7584
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   9612
   LinkTopic       =   "Form1"
   ScaleHeight     =   7584
   ScaleWidth      =   9612
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   1092
      Left            =   5040
      TabIndex        =   9
      Top             =   2760
      Width           =   3372
   End
   Begin VB.OptionButton Option1 
      Caption         =   "5G"
      Height          =   372
      Left            =   3360
      TabIndex        =   8
      Top             =   4080
      Width           =   852
   End
   Begin VB.OptionButton Option2 
      Caption         =   "4G"
      Height          =   372
      Left            =   3360
      TabIndex        =   7
      Top             =   4800
      Width           =   852
   End
   Begin VB.OptionButton Option3 
      Caption         =   "3G"
      Height          =   372
      Left            =   3360
      TabIndex        =   6
      Top             =   5520
      Value           =   -1  'True
      Width           =   852
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Text            =   "10000"
      Top             =   4200
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Text            =   "2"
      Top             =   4800
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Left            =   1200
      Top             =   2400
   End
   Begin VB.Label Label2 
      Caption         =   "加分"
      Height          =   492
      Left            =   240
      TabIndex        =   5
      Top             =   3480
      Width           =   1692
   End
   Begin VB.Label Label3 
      Caption         =   "軟體大小mb"
      Height          =   372
      Left            =   120
      TabIndex        =   4
      Top             =   4200
      Width           =   972
   End
   Begin VB.Label Label4 
      Caption         =   "載入速度mb/s"
      Height          =   372
      Left            =   120
      TabIndex        =   3
      Top             =   4800
      Width           =   972
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      Caption         =   "0%"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   20.4
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   2520
      TabIndex        =   0
      Top             =   480
      Width           =   3375
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  '實心
      Height          =   495
      Left            =   960
      Top             =   1320
      Width           =   135
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FF0000&
      Height          =   495
      Left            =   960
      Top             =   1320
      Width           =   6735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Shape2.Width = 0
    Timer1.Interval = 50
End Sub

Private Sub Option1_Click()
    Text2.Text = 1000
End Sub

Private Sub Option2_Click()
    Text2.Text = 100
End Sub

Private Sub Option3_Click()
    Text2.Text = 2
End Sub

Private Sub Timer1_Timer()
    If Shape2.Width < Shape1.Width Then
    Shape2.Width = Shape2.Width + (Text2.Text / Text1.Text) * 500
    Else
    Shape2.Width = Shape1.Width
    Timer1.Interval = 0
    End If
    Label1.Caption = Int((Shape2.Width / Shape1.Width) * 100) & "%"
End Sub
