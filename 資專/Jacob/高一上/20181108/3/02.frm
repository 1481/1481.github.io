VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9456
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   13356
   LinkTopic       =   "Form1"
   ScaleHeight     =   9456
   ScaleWidth      =   13356
   StartUpPosition =   3  '系統預設值
   Begin VB.ComboBox Combo1 
      Height          =   300
      Left            =   6120
      TabIndex        =   22
      Text            =   "請選擇區別"
      Top             =   960
      Width           =   3015
   End
   Begin VB.Frame Frame1 
      Caption         =   "A區"
      Height          =   4335
      Index           =   0
      Left            =   7200
      TabIndex        =   0
      Top             =   2040
      Width           =   5175
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   19
         Left            =   2640
         Style           =   1  '圖片外觀
         TabIndex        =   10
         Top             =   3120
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   18
         Left            =   1440
         Style           =   1  '圖片外觀
         TabIndex        =   9
         Top             =   3120
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   7
         Left            =   2640
         Style           =   1  '圖片外觀
         TabIndex        =   8
         Top             =   2520
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   6
         Left            =   1440
         Style           =   1  '圖片外觀
         TabIndex        =   7
         Top             =   2520
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   5
         Left            =   2040
         Style           =   1  '圖片外觀
         TabIndex        =   6
         Top             =   2280
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   4
         Left            =   2640
         Style           =   1  '圖片外觀
         TabIndex        =   5
         Top             =   1920
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   3
         Left            =   1440
         Style           =   1  '圖片外觀
         TabIndex        =   4
         Top             =   1920
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   2
         Left            =   2640
         Style           =   1  '圖片外觀
         TabIndex        =   3
         Top             =   1320
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   1
         Left            =   1440
         Style           =   1  '圖片外觀
         TabIndex        =   2
         Top             =   1320
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00FFC0C0&
         Height          =   615
         Index           =   0
         Left            =   2040
         Style           =   1  '圖片外觀
         TabIndex        =   1
         Top             =   720
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "B區"
      Height          =   4335
      Index           =   1
      Left            =   6000
      TabIndex        =   11
      Top             =   2040
      Width           =   5175
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   17
         Left            =   2280
         Style           =   1  '圖片外觀
         TabIndex        =   21
         Top             =   3240
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   16
         Left            =   1680
         Style           =   1  '圖片外觀
         TabIndex        =   20
         Top             =   3240
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   15
         Left            =   2880
         Style           =   1  '圖片外觀
         TabIndex        =   19
         Top             =   2640
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   14
         Left            =   2280
         Style           =   1  '圖片外觀
         TabIndex        =   18
         Top             =   2040
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   13
         Left            =   2880
         Style           =   1  '圖片外觀
         TabIndex        =   17
         Top             =   1440
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   12
         Left            =   2280
         Style           =   1  '圖片外觀
         TabIndex        =   16
         Top             =   840
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   11
         Left            =   1680
         Style           =   1  '圖片外觀
         TabIndex        =   15
         Top             =   2640
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   10
         Left            =   1680
         Style           =   1  '圖片外觀
         TabIndex        =   14
         Top             =   2040
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   9
         Left            =   1680
         Style           =   1  '圖片外觀
         TabIndex        =   13
         Top             =   1440
         Width           =   615
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0FFFF&
         Height          =   615
         Index           =   8
         Left            =   1680
         Style           =   1  '圖片外觀
         TabIndex        =   12
         Top             =   840
         Width           =   615
      End
   End
   Begin VB.Label Label2 
      Caption         =   "0"
      Height          =   372
      Left            =   6840
      TabIndex        =   27
      Top             =   7680
      Width           =   6132
   End
   Begin VB.Label Label5 
      Caption         =   "售票系統"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   21.6
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   26
      Top             =   240
      Width           =   6015
   End
   Begin VB.Image Image1 
      Height          =   7575
      Left            =   120
      Stretch         =   -1  'True
      Top             =   960
      Width           =   5535
   End
   Begin VB.Label Label4 
      Caption         =   "價錢"
      Height          =   375
      Left            =   6120
      TabIndex        =   25
      Top             =   7680
      Width           =   615
   End
   Begin VB.Label Label3 
      Caption         =   "票數"
      Height          =   375
      Left            =   6120
      TabIndex        =   24
      Top             =   6960
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   372
      Left            =   6960
      TabIndex        =   23
      Top             =   6960
      Width           =   6012
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Combo1_Click()
    '選單click，先把所有區別隱藏
    Frame1(0).Visible = False
    Frame1(1).Visible = False
    '顯示點到的區別
    Frame1(Combo1.ListIndex).Visible = True
End Sub

Private Sub Command1_Click(Index As Integer)
    '座位選取，如果此位未訂，則選取，椅子變色，票數+1，價錢累計
    'label1是票數，label2是價錢
    If Command1(Index).BackColor <> vbRed Then
        Command1(Index).BackColor = vbRed
        Label1.Caption = Label1.Caption + 1
        If Combo1.ListIndex = 0 Then
            Label2.Caption = Label2.Caption + 6400
        Else
            Label2.Caption = Label2.Caption + 3200
        End If
    End If
End Sub

Private Sub Form_Load()
    '用additem加入區別到選單中
    Combo1.AddItem "A區 6400元" 'listindex=0
    Combo1.AddItem "B區 3200元" 'listindex=1
    '一開始先把AB區隱藏起來，0是A區，1是B區
    Frame1(0).Visible = False
    Frame1(1).Visible = False
End Sub
