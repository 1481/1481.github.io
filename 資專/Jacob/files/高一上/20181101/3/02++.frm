VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4680
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   4752
   LinkTopic       =   "Form1"
   ScaleHeight     =   4680
   ScaleWidth      =   4752
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   732
      Left            =   3240
      TabIndex        =   2
      Top             =   2880
      Width           =   1332
   End
   Begin VB.Timer Timer1 
      Left            =   3600
      Top             =   1680
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00C0C0C0&
      FillStyle       =   0  '實心
      Height          =   1092
      Left            =   1680
      Top             =   3600
      Width           =   492
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   255
      Left            =   4080
      TabIndex        =   1
      Top             =   4200
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      BackStyle       =   0  '透明
      Caption         =   "30"
      BeginProperty Font 
         Name            =   "Square721 BT"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   960
      TabIndex        =   0
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Image Image1 
      Appearance      =   0  '平面
      BorderStyle     =   1  '單線固定
      Height          =   1695
      Left            =   960
      Stretch         =   -1  'True
      Top             =   720
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00C0C0C0&
      FillStyle       =   0  '實心
      Height          =   3135
      Left            =   720
      Top             =   480
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    Timer1.Interval = 100
    Label1.Caption = 30
    Label2.Caption = 0
End Sub

Private Sub Timer1_Timer()
    Label1.Caption = Label1.Caption - 1
    If Label2.Caption = 0 Then
        If Label1.Caption = 0 Then
            Label2.Caption = 1
            Label1.Caption = 20
            Label1.ForeColor = &HFF&
            Image1.Picture = LoadPicture("red.gif")
            Timer1.Interval = 100
        ElseIf Label1.Caption <= 10 Then
            Timer1.Interval = 50
            Image1.Picture = LoadPicture(Label1.Caption Mod 20 & ".gif")
        Else
            Image1.Picture = LoadPicture(Label1.Caption Mod 20 & ".gif")
        End If
    Else
        If Label1.Caption = 0 Then
            Label2.Caption = 0
            Label1.Caption = 30
            Label1.ForeColor = &H0&
        End If
    End If
End Sub
