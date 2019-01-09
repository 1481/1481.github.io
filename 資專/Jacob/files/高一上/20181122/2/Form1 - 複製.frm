VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7404
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   14088
   LinkTopic       =   "Form1"
   ScaleHeight     =   7404
   ScaleWidth      =   14088
   StartUpPosition =   3  '系統預設值
   Begin VB.ListBox List2 
      Height          =   768
      Left            =   13440
      TabIndex        =   19
      Top             =   5760
      Width           =   492
   End
   Begin VB.ListBox List1 
      Height          =   4008
      Left            =   9480
      TabIndex        =   13
      Top             =   840
      Width           =   3972
   End
   Begin VB.CommandButton Command1 
      Caption         =   "選購"
      Height          =   372
      Index           =   2
      Left            =   8040
      TabIndex        =   8
      Top             =   4800
      Width           =   612
   End
   Begin VB.ComboBox Combo2 
      Height          =   276
      Index           =   2
      Left            =   6480
      TabIndex        =   7
      Text            =   "Combo2"
      Top             =   4920
      Width           =   1332
   End
   Begin VB.ComboBox Combo1 
      Height          =   276
      Index           =   2
      Left            =   6480
      TabIndex        =   6
      Text            =   "Combo1"
      Top             =   4320
      Width           =   2172
   End
   Begin VB.CommandButton Command1 
      Caption         =   "選購"
      Height          =   372
      Index           =   1
      Left            =   5160
      TabIndex        =   5
      Top             =   4800
      Width           =   612
   End
   Begin VB.ComboBox Combo2 
      Height          =   276
      Index           =   1
      Left            =   3600
      TabIndex        =   4
      Text            =   "Combo2"
      Top             =   4920
      Width           =   1332
   End
   Begin VB.ComboBox Combo1 
      Height          =   276
      Index           =   1
      Left            =   3600
      TabIndex        =   3
      Text            =   "Combo1"
      Top             =   4320
      Width           =   2172
   End
   Begin VB.CommandButton Command1 
      Caption         =   "選購"
      Height          =   372
      Index           =   0
      Left            =   2280
      TabIndex        =   2
      Top             =   4800
      Width           =   612
   End
   Begin VB.ComboBox Combo2 
      Height          =   276
      Index           =   0
      Left            =   720
      TabIndex        =   1
      Text            =   "Combo2"
      Top             =   4920
      Width           =   1332
   End
   Begin VB.ComboBox Combo1 
      Height          =   276
      Index           =   0
      ItemData        =   "Form1 - 複製.frx":0000
      Left            =   720
      List            =   "Form1 - 複製.frx":0002
      TabIndex        =   0
      Text            =   "Combo1"
      Top             =   4320
      Width           =   2172
   End
   Begin VB.Label Label7 
      Caption         =   "++分，3000以上打9折，5000以上打8折。注意取消選購造成的打折誤差。"
      Height          =   372
      Left            =   9480
      TabIndex        =   20
      Top             =   6720
      Width           =   3612
   End
   Begin VB.Label Label6 
      Caption         =   "+分，雙擊購物車可取消選購，並更新總價。"
      Height          =   372
      Left            =   9480
      TabIndex        =   18
      Top             =   5760
      Width           =   3612
   End
   Begin VB.Label Label4 
      Alignment       =   1  '靠右對齊
      Caption         =   "1000"
      Height          =   372
      Index           =   2
      Left            =   7800
      TabIndex        =   17
      Top             =   3720
      Width           =   852
   End
   Begin VB.Label Label4 
      Alignment       =   1  '靠右對齊
      Caption         =   "800"
      Height          =   372
      Index           =   1
      Left            =   4800
      TabIndex        =   16
      Top             =   3720
      Width           =   852
   End
   Begin VB.Label Label4 
      Alignment       =   1  '靠右對齊
      Caption         =   "2000"
      Height          =   372
      Index           =   0
      Left            =   2040
      TabIndex        =   15
      Top             =   3720
      Width           =   852
   End
   Begin VB.Label Label3 
      Caption         =   "購物車"
      Height          =   372
      Left            =   9480
      TabIndex        =   14
      Top             =   360
      Width           =   1212
   End
   Begin VB.Label Label2 
      Caption         =   "LATTE"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   720
      TabIndex        =   12
      Top             =   120
      Width           =   5292
   End
   Begin VB.Label Label1 
      Caption         =   "C103毛衣"
      Height          =   372
      Index           =   2
      Left            =   6480
      TabIndex        =   11
      Top             =   3720
      Width           =   2052
   End
   Begin VB.Label Label1 
      Caption         =   "B102針織"
      Height          =   372
      Index           =   1
      Left            =   3600
      TabIndex        =   10
      Top             =   3720
      Width           =   2052
   End
   Begin VB.Label Label1 
      Caption         =   "A101風衣"
      Height          =   372
      Index           =   0
      Left            =   720
      TabIndex        =   9
      Top             =   3720
      Width           =   2172
   End
   Begin VB.Image Image1 
      Height          =   2652
      Index           =   0
      Left            =   720
      Picture         =   "Form1 - 複製.frx":0004
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2172
   End
   Begin VB.Image Image1 
      Height          =   2652
      Index           =   2
      Left            =   6480
      Picture         =   "Form1 - 複製.frx":1FA8F6
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2172
   End
   Begin VB.Image Image1 
      Height          =   2652
      Index           =   1
      Left            =   3600
      Picture         =   "Form1 - 複製.frx":3F51E8
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2172
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
    'list1物件名稱，additem方法可以加入項目
End Sub

Private Sub Form_Load()
    '此處勿動，這裡將尺寸、數量等參數載入
    For i = 0 To 2
        Combo1(i).Clear
        Combo1(i).AddItem "L"
        Combo1(i).AddItem "M"
        Combo1(i).AddItem "S"
        Combo1(i).ListIndex = 0
        Combo2(i).Clear
        For j = 1 To 20
            Combo2(i).AddItem j
        Next
        Combo2(i).ListIndex = 0
    Next
End Sub

