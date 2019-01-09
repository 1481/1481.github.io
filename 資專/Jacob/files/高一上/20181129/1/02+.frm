VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9480
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   16728
   LinkTopic       =   "Form1"
   ScaleHeight     =   9480
   ScaleWidth      =   16728
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   732
      Left            =   7800
      TabIndex        =   7
      Top             =   1800
      Width           =   2412
   End
   Begin VB.Timer Timer1 
      Left            =   2400
      Top             =   2640
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Text            =   "200"
      Top             =   1920
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Text            =   "300"
      Top             =   1320
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   1848
      Left            =   0
      Picture         =   "02+.frx":0000
      Stretch         =   -1  'True
      Top             =   7560
      Width           =   1908
   End
   Begin VB.Label Label5 
      Caption         =   "垂直速度"
      Height          =   615
      Left            =   240
      TabIndex        =   6
      Top             =   1920
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "水平速度"
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   4320
      TabIndex        =   3
      Top             =   1920
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4320
      TabIndex        =   2
      Top             =   1200
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    '開啟時鐘
    Timer1.Interval = 100
    '秒數歸零
    Label1.Caption = 0
    Label2.Caption = 0
    Label3.Caption = 0
    Image1.Left = 0
    Image1.Top = Form1.ScaleHeight - Image1.Height
End Sub


Private Sub Timer1_Timer()
    Label3.Caption = Label3.Caption + 1
    Label1.Caption = Text1.Text * Label3.Caption
    Label2.Caption = Text2.Text * Label3.Caption - 1 / 2 * (9.8) * Label3.Caption * Label3.Caption
    Image1.Left = 0 + Label1.Caption
    Image1.Top = (Form1.ScaleHeight - Image1.Height) - Label2.Caption
End Sub
