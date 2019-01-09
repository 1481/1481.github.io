VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8604
   ClientLeft      =   60
   ClientTop       =   516
   ClientWidth     =   10236
   LinkTopic       =   "Form1"
   ScaleHeight     =   8604
   ScaleWidth      =   10236
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command2 
      Caption         =   "START"
      Height          =   612
      Left            =   8520
      TabIndex        =   1
      Top             =   960
      Width           =   1572
   End
   Begin VB.CommandButton Command1 
      Height          =   615
      Index           =   0
      Left            =   840
      Style           =   1  '圖片外觀
      TabIndex        =   0
      Top             =   600
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim s As Integer
Dim m As Integer
Dim row As Integer
Dim col As Integer
Dim square As Integer
Dim mine As Integer
Dim max As Integer
Private Sub Command1_Click(index As Integer)
    '第一題
    If Command1(index).Tag = "1" Then
        MsgBox "BOOM!"
        End
    ElseIf Command1(index).Caption = "" Then
        Command1(index).BackColor = &H8000000F
        Command1(index).Caption = 0
        If Command1(index - 1).Tag = "1" Then
            Command1(index).Caption = Command1(index).Caption + 1
        End If
        If Command1(index + 1).Tag = "1" Then
            Command1(index).Caption = Command1(index).Caption + 1
        End If
        For i = 11 To 13
            If Command1(index - i).Tag = "1" Then
                Command1(index).Caption = Command1(index).Caption + 1
            End If
            If Command1(index + i).Tag = "1" Then
                Command1(index).Caption = Command1(index).Caption + 1
            End If
        Next
        If Command1(index).Caption = 0 Then
            If Command1(index - 1).Visible = True Then
                Command1_Click (index - 1)
            End If
            If Command1(index + 1).Visible = True Then
            Command1_Click (index + 1)
            End If
            For i = 11 To 13
                If Command1(index - i).Visible = True Then
                    Command1_Click (index - i)
                End If
                If Command1(index + i).Visible = True Then
                    Command1_Click (index + i)
                End If
            Next
        End If
        m = m - 1
        If m = 0 Then
            MsgBox "You Win!"
        End If
    End If
End Sub

Private Sub Command1_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '第二題
    If Button = 2 Then  'button會傳回滑鼠狀態，1表示左鍵，2表右鍵，4表中鍵
        If Command1(index).BackColor <> &H8000000F Then
            Command1(index).BackColor = &H8000000F
            Command1(index).Caption = ""
        ElseIf Command1(index).Caption = "" Then
            Command1(index).BackColor = vbRed
            Command1(index).Caption = "?"
        End If
    End If
End Sub

Private Sub Command2_Click()
    If s <> 0 Then
        For i = 0 To square - 1
            Command1(i).Caption = ""
            Command1(i).Tag = ""
        Next
    End If
    Randomize
    'Data = Split(InputBox("大小? (預設:10x10)"), "x")
    row = 10 + 2
    col = 10 + 2
    square = row * col
    For i = 0 To square - 1
        If s = 0 And i > max Then
            Load Command1(i)
            If i Mod col <> 0 Then
                Command1(i).Left = Command1(i - 1).Left + Command1(i - 1).Width + 10
                Command1(i).Top = Command1(i - 1).Top
            Else
                Command1(i).Left = Command1(i - col).Left
                Command1(i).Top = Command1(i - col).Top + Command1(i - col).Height + 10
            End If
        Command1(i).Tag = 0
        Command1(i).Visible = True
        End If
        If i >= 0 And i < col Then
            Command1(i).Visible = False
        ElseIf i Mod col = 0 Then
            Command1(i).Visible = False
        ElseIf i Mod col = col - 1 Then
            Command1(i).Visible = False
        ElseIf i > square - col And i <= square - 1 Then
            Command1(i).Visible = False
        End If
    Next
    
    
    mine = InputBox("地雷數量? (預設:10)")
    n = 0
    Do
        a = Int(Rnd * square)
        If Command1(a).Tag <> "1" And Command1(a).Visible = True Then
            Command1(a).Tag = 1
            Command1(a).Caption = "X"
            n = n + 1
        End If
    Loop Until n = mine
    m = 100 - n
    s = 1
    Command2.Caption = "RESTART"
End Sub

Private Sub Form_Load()
    row = 10 + 2
    col = 10 + 2
    mine = 10
    square = row * col
    max = 0
    s = 0
End Sub
