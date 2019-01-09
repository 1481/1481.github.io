VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5292
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   7464
   LinkTopic       =   "Form1"
   ScaleHeight     =   5292
   ScaleWidth      =   7464
   StartUpPosition =   3  '系統預設值
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
