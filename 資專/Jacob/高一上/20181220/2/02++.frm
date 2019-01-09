VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5292
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   14904
   LinkTopic       =   "Form1"
   ScaleHeight     =   5292
   ScaleWidth      =   14904
   StartUpPosition =   3  '系統預設值
   Begin VB.TextBox Text4 
      Height          =   1812
      Left            =   7680
      TabIndex        =   7
      Text            =   "Decoded Code"
      Top             =   3240
      Width           =   6972
   End
   Begin VB.CommandButton Command4 
      Caption         =   "解密"
      Height          =   612
      Left            =   11280
      TabIndex        =   6
      Top             =   2280
      Width           =   3372
   End
   Begin VB.CommandButton Command3 
      Caption         =   "加密"
      Height          =   612
      Left            =   7680
      TabIndex        =   5
      Top             =   2280
      Width           =   3372
   End
   Begin VB.TextBox Text3 
      Height          =   1812
      Left            =   7680
      TabIndex        =   4
      Text            =   "Encoded Code"
      Top             =   120
      Width           =   6972
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Hex -> Ascii"
      Height          =   612
      Left            =   4200
      TabIndex        =   3
      Top             =   2280
      Width           =   3012
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Ascii -> Hex"
      Height          =   612
      Left            =   240
      TabIndex        =   2
      Top             =   2280
      Width           =   3012
   End
   Begin VB.TextBox Text2 
      Height          =   1812
      Left            =   240
      TabIndex        =   1
      Top             =   3240
      Width           =   6972
   End
   Begin VB.TextBox Text1 
      Height          =   1812
      Left            =   240
      TabIndex        =   0
      Text            =   "The Ascii Code"
      Top             =   120
      Width           =   6972
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Text2 = ""
    For i = 1 To Len(Text1)
        Text2 = Text2 + Hex(Asc(Mid(Text1, i, 1)))
    Next
End Sub

Private Sub Command2_Click()
    Text1 = ""
    For i = 1 To Len(Text2) Step 2
        Text1 = Text1 + Chr(CLng("&H" & Mid(Text2, i, 2)))
    Next
End Sub

Private Sub Command3_Click()
    pw = InputBox("Set Password")
    tpw = 0
    For i = 1 To Len(pw)
        tpw = tpw + Asc(Mid(pw, i, 1))
    Next
    pw = Int(tpw / Len(pw))
    Text2 = ""
    For i = 1 To Len(Text1)
        Text2 = Text2 + Hex(Asc(Mid(Text1, i, 1)))
    Next
    Text3 = ""
    For i = 1 To Len(Text2)
        Text3 = Text3 + Hex(Asc(Mid(Text2, i, 1)) + pw)
    Next
End Sub

Private Sub Command4_Click()
    pw = InputBox("Enter Password")
    tpw = 0
    For i = 1 To Len(pw)
        tpw = tpw + Asc(Mid(pw, i, 1))
    Next
    pw = Int(tpw / Len(pw))
    Text4 = ""
    For i = 1 To Len(Text3) Step 2
        Text4 = Text4 + Chr(CLng("&H" & Mid(Text3, i, 2)) - pw)
    Next
    a = Text4
    Text4 = ""
    For i = 1 To Len(a) Step 2
        On Error Resume Next
        Text4 = Text4 + Chr(CLng("&H" & Mid(a, i, 2)))
    Next
End Sub
