VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7128
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   11544
   LinkTopic       =   "Form1"
   ScaleHeight     =   7128
   ScaleWidth      =   11544
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "讀卡"
      Height          =   492
      Left            =   4680
      TabIndex        =   13
      Top             =   2280
      Width           =   5172
   End
   Begin VB.TextBox Text4 
      Height          =   372
      Left            =   8520
      TabIndex        =   12
      Text            =   "6,7"
      Top             =   4440
      Width           =   1932
   End
   Begin VB.CommandButton Command4 
      Caption         =   "讀卡"
      Height          =   492
      Left            =   8520
      TabIndex        =   9
      Top             =   5040
      Width           =   1932
   End
   Begin VB.CommandButton Command3 
      Caption         =   "讀卡"
      Height          =   492
      Left            =   4560
      TabIndex        =   8
      Top             =   5160
      Width           =   2652
   End
   Begin VB.TextBox Text3 
      Height          =   372
      Left            =   5520
      TabIndex        =   6
      Text            =   "6"
      Top             =   4440
      Width           =   1692
   End
   Begin VB.TextBox Text2 
      Height          =   492
      Left            =   4680
      TabIndex        =   2
      Text            =   "abcdaaacccddd"
      Top             =   1680
      Width           =   5172
   End
   Begin VB.TextBox Text1 
      Height          =   492
      Left            =   4680
      TabIndex        =   0
      Text            =   "abcdabcdab"
      Top             =   720
      Width           =   5172
   End
   Begin VB.Label Label7 
      Caption         =   "+++多題送分"
      Height          =   252
      Left            =   8520
      TabIndex        =   11
      Top             =   3960
      Width           =   2772
   End
   Begin VB.Label Label6 
      Caption         =   "++單題送分"
      Height          =   252
      Left            =   4440
      TabIndex        =   10
      Top             =   3960
      Width           =   2772
   End
   Begin VB.Label Label5 
      Caption         =   "送分題"
      Height          =   492
      Left            =   4560
      TabIndex        =   7
      Top             =   4440
      Width           =   852
   End
   Begin VB.Label Label4 
      Caption         =   "答對"
      Height          =   372
      Left            =   4680
      TabIndex        =   5
      Top             =   3120
      Width           =   492
   End
   Begin VB.Label Label3 
      Caption         =   "0"
      Height          =   612
      Left            =   5520
      TabIndex        =   4
      Top             =   3120
      Width           =   972
   End
   Begin VB.Label Label2 
      Caption         =   "你的答案"
      Height          =   492
      Left            =   4680
      TabIndex        =   3
      Top             =   1320
      Width           =   972
   End
   Begin VB.Label Label1 
      Caption         =   "解答"
      Height          =   492
      Left            =   4680
      TabIndex        =   1
      Top             =   360
      Width           =   972
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Label3 = 0
    For i = 1 To Len(Text1.Text)
        If Mid(Text1.Text, i, 1) = Mid(Text2.Text, i, 1) Then
            Label3 = Label3 + 1
        Else
            Print "第" & i & "題" & vbTab & "正確答案為 " & Mid(Text2.Text, i, 1) & vbTab & "你的答案為 " & Mid(Text1.Text, i, 1)
        End If
    Next
    Print ""
End Sub

Private Sub Command3_Click()
    Label3 = 0
    For i = 1 To Len(Text1.Text)
        If i = Text3.Text Then
            Label3 = Label3 + 1
        ElseIf Mid(Text1.Text, i, 1) = Mid(Text2.Text, i, 1) Then
            Label3 = Label3 + 1
        Else
            Print "第" & i & "題" & vbTab & "正確答案為 " & Mid(Text2.Text, i, 1) & vbTab & "你的答案為 " & Mid(Text1.Text, i, 1)
        End If
    Next
    Print ""
End Sub

Private Sub Command4_Click()
    Label3 = 0
    frees = Split(Text4.Text, ",")
    For i = 1 To Len(Text1.Text)
        c = 1
        For o = 0 To UBound(frees)
            If i = Int(frees(o)) Then
                Label3 = Label3 + 1
                c = 0
            End If
        Next
        If c <> 0 Then
        If Mid(Text1.Text, i, 1) = Mid(Text2.Text, i, 1) Then
            Label3 = Label3 + 1
        Else
            Print "第" & i & "題" & vbTab & "正確答案為 " & Mid(Text2.Text, i, 1) & vbTab & "你的答案為 " & Mid(Text1.Text, i, 1)
        End If
        End If
    Next
    Print ""
End Sub

Private Sub Label8_Click()

End Sub
