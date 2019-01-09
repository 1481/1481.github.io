VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9192
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   13596
   LinkTopic       =   "Form1"
   ScaleHeight     =   9192
   ScaleWidth      =   13596
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   612
      Left            =   8280
      TabIndex        =   8
      Top             =   960
      Width           =   1572
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Text            =   "200"
      Top             =   840
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Text            =   "200"
      Top             =   1440
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Left            =   2400
      Top             =   2160
   End
   Begin VB.Label Label8 
      Caption         =   "註解: 打到豬會換位置"
      Height          =   732
      Left            =   10680
      TabIndex        =   10
      Top             =   960
      Width           =   2532
   End
   Begin VB.Label Label7 
      Caption         =   "0"
      Height          =   372
      Left            =   11640
      TabIndex        =   9
      Top             =   360
      Visible         =   0   'False
      Width           =   1332
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '透明
      Caption         =   "0"
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
      Height          =   372
      Left            =   8880
      TabIndex        =   7
      Top             =   2520
      Width           =   732
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4320
      TabIndex        =   6
      Top             =   720
      Visible         =   0   'False
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   4320
      TabIndex        =   5
      Top             =   1440
      Visible         =   0   'False
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   0
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "水平初速"
      Height          =   615
      Left            =   240
      TabIndex        =   3
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "垂直初速"
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   1440
      Width           =   855
   End
   Begin VB.Image Image1 
      Height          =   1116
      Left            =   0
      Picture         =   "02++.frx":0000
      Stretch         =   -1  'True
      Top             =   7200
      Width           =   1188
   End
   Begin VB.Image Image2 
      Height          =   1140
      Left            =   8040
      Picture         =   "02++.frx":29F8
      Stretch         =   -1  'True
      Top             =   7200
      Width           =   1212
   End
   Begin VB.Image Image3 
      Height          =   7308
      Left            =   0
      Picture         =   "02++.frx":5ACF
      Stretch         =   -1  'True
      Top             =   2040
      Width           =   13680
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Function IsImpact(ByVal Obj1 As Object, ByVal Obj2 As Object) As Boolean
    Dim xScale As Boolean, yScale As Boolean
    If (Obj1.Left >= Obj2.Left And Obj1.Left <= Obj2.Left + Obj2.Width) Then
        xScale = True
    End If
    If (Obj1.Left + Obj1.Width >= Obj2.Left And Obj1.Left + Obj1.Width <= Obj2.Left + Obj2.Width) Then
        xScale = True
    End If
    If (Obj1.Top >= Obj2.Top And Obj1.Top <= Obj2.Top + Obj2.Height) Then
        yScale = True
    End If
    If (Obj1.Top + Obj1.Height >= Obj2.Top And Obj1.Top + Obj1.Height <= Obj2.Top + Obj2.Height) Then
        yScale = True
    End If
    IsImpact = xScale And yScale
End Function

Private Sub Command1_Click()
    Timer1.Interval = 100
    Label1.Caption = 0
    Label2.Caption = 0
    Label3.Caption = 0
End Sub

Private Sub Form_Load()
    Randomize
    Image2.Left = 9000 + Int(Rnd() * 1000 - Rnd() * 1000) * 3
    Image2.Top = 6000 + Int(Rnd() * 1000 - Rnd() * 1000) * 2
End Sub

Private Sub Image2_Click()
    Randomize
    Image2.Left = 9000 + Int(Rnd() * 1000 - Rnd() * 1000) * 3
    Image2.Top = 6000 + Int(Rnd() * 1000 - Rnd() * 1000) * 2
End Sub

Private Sub Timer1_Timer()
    Label3.Caption = Label3.Caption + 1
    '把vx用text1代入，把vy用text2代入，把t用label3代入，就可以算出水平移動label1，垂直移動label2
    Label1.Caption = Text1.Text * Label3.Caption
    Label2.Caption = Text2.Text * Label3.Caption + 1 / 2 * (-9.8) * Label3.Caption * Label3.Caption
    
    '因為視窗垂直座標越往下越大，跟數學坐標系相反，所以高度這邊要用減法
    Image1.Left = 0 + Label1.Caption '初始水平座標+拋物線公式所算出的水平距離
    Image1.Top = (Form1.ScaleHeight - Image1.Height) - Label2.Caption  '初始垂直座標-拋物線公式所算出的垂直距離
    
    '第一題：每次移動都可能碰撞得分，這裡下判斷式
    If IsImpact(Image1, Image2) And Label7.Caption = 0 Then
        Label6.Caption = Label6.Caption + 1
        Label7.Caption = 1
        Randomize
        Image2.Left = 9000 + Int(Rnd() * 1000 - Rnd() * 1000) * 3
        Image2.Top = 6000 + Int(Rnd() * 1000 - Rnd() * 1000) * 2
        Timer1.Interval = 0
        Image1.Left = 0
        Image1.Top = Form1.ScaleHeight - Image1.Height
    ElseIf IsImpact(Image1, Image2) = False And Label7.Caption = 1 Then
        Label7.Caption = 0
    End If
    If Image1.Top > Form1.ScaleHeight Then
        MsgBox ("Try again!")
        Timer1.Interval = 0
        Image1.Left = 0
        Image1.Top = Form1.ScaleHeight - Image1.Height
    End If
End Sub


