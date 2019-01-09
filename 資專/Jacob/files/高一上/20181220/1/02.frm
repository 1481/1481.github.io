VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6540
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   13752
   LinkTopic       =   "Form1"
   ScaleHeight     =   6540
   ScaleWidth      =   13752
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "加密"
      Height          =   372
      Left            =   1080
      TabIndex        =   9
      Top             =   2040
      Width           =   2412
   End
   Begin VB.TextBox Text6 
      Height          =   2052
      Left            =   8400
      MultiLine       =   -1  'True
      TabIndex        =   8
      Top             =   4080
      Width           =   4932
   End
   Begin VB.CommandButton Command3 
      Caption         =   "解密"
      Height          =   492
      Left            =   8400
      TabIndex        =   7
      Top             =   3360
      Width           =   1932
   End
   Begin VB.TextBox Text5 
      Height          =   1092
      Left            =   8400
      MultiLine       =   -1  'True
      TabIndex        =   6
      Text            =   "02.frx":0000
      Top             =   2040
      Width           =   4932
   End
   Begin VB.TextBox Text4 
      Height          =   492
      Left            =   6120
      TabIndex        =   5
      Text            =   "3"
      Top             =   960
      Width           =   1092
   End
   Begin VB.TextBox Text3 
      Height          =   1452
      Left            =   1080
      MultiLine       =   -1  'True
      TabIndex        =   4
      Top             =   4920
      Width           =   4812
   End
   Begin VB.CommandButton Command2 
      Caption         =   "解密"
      Height          =   372
      Left            =   1080
      TabIndex        =   3
      Top             =   4320
      Width           =   2412
   End
   Begin VB.TextBox Text2 
      Height          =   1452
      Left            =   1080
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   2640
      Width           =   4812
   End
   Begin VB.TextBox Text1 
      Height          =   1452
      Left            =   1080
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "02.frx":00C4
      Top             =   360
      Width           =   4812
   End
   Begin VB.Label Label1 
      Caption         =   "位移"
      Height          =   252
      Left            =   6120
      TabIndex        =   2
      Top             =   480
      Width           =   612
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    For i = 1 To Len(Text1)
        Text2 = Text2 + Chr(Asc(Mid(Text1, i, 1)) + 3)
    Next
End Sub

Private Sub Command2_Click()
    For i = 1 To Len(Text2)
        Text3 = Text3 + Chr(Asc(Mid(Text2, i, 1)) - 3)
    Next
End Sub
