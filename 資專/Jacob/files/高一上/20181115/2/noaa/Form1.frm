VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   Caption         =   "Form1"
   ClientHeight    =   10512
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   12048
   LinkTopic       =   "Form1"
   ScaleHeight     =   10512
   ScaleWidth      =   12048
   StartUpPosition =   3  '系統預設值
   Begin VB.Timer Timer1 
      Left            =   840
      Top             =   8880
   End
   Begin VB.Label Label2 
      BackStyle       =   0  '透明
      Caption         =   "NOAA"
      BeginProperty Font 
         Name            =   "Broadway BT"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   972
      Left            =   960
      TabIndex        =   1
      Top             =   120
      Width           =   3372
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      BackStyle       =   0  '透明
      Caption         =   "Label1"
      ForeColor       =   &H8000000B&
      Height          =   252
      Index           =   0
      Left            =   960
      TabIndex        =   0
      Top             =   1800
      Width           =   852
      WordWrap        =   -1  'True
   End
   Begin VB.Image Image1 
      Height          =   852
      Index           =   0
      Left            =   960
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   1320
      Width           =   852
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Form_Load()
    '這裡勿動，使用迴圈創造10*10的雷達圖，並利用亂數模擬衝擊波(<15)
    Randomize
    For i = 1 To 99
        Load Image1(i)
        Load Label1(i)
        If i Mod 10 = 0 Then
            Label1(i).Left = Label1(i - 10).Left
            Label1(i).Top = Label1(i - 10).Top + Image1(i - 10).Height
            Image1(i).Left = Image1(i - 10).Left
            Image1(i).Top = Image1(i - 10).Top + Image1(i - 10).Height
        Else
            Label1(i).Left = Label1(i - 1).Left + Label1(i - 1).Width
            Label1(i).Top = Label1(i - 1).Top
            Image1(i).Left = Image1(i - 1).Left + Image1(i - 1).Width
            Image1(i).Top = Image1(i - 1).Top
        End If
        Label1(i).Caption = Format(15 - Rnd * 20, "00.00")
        Label1(i).ZOrder vbBringToFront
        Label1(i).BackStyle = 0
        Label1(i).ForeColor = vbWhite
        Label1(i).Visible = True
        Image1(i).Picture = LoadPicture("1.jpg")
        Image1(i).Visible = True
    
    Next
    Label1(0).Caption = Format(15 - Rnd * 20, "00.00")

End Sub
