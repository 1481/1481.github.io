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
   Begin VB.Timer Timer1 
      Left            =   9240
      Top             =   4080
   End
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
   Begin VB.Label Label1 
      Alignment       =   1  '靠右對齊
      BeginProperty Font 
         Name            =   "@Adobe Gothic Std B"
         Size            =   22.2
         Charset         =   128
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   492
      Left            =   8520
      TabIndex        =   2
      Top             =   2040
      Width           =   1572
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
Dim timeCost As Integer
Dim showTime As Integer
Private Sub Command1_Click(index As Integer)
    '第一題
    If Command1(index).Tag = "1" Then
        MsgBox "BOOM!"
        For i = 0 To 143
            Command1(i).Enabled = False
        Next
        Timer1.Interval = 0
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
        If Command1(index).Caption = 0 Then
            
        ElseIf Command1(index).Caption = 1 Then
            Command1(index).FontBold = True
            Command1(index).BackColor = RGB(240, 20, 20)
        ElseIf Command1(index).Caption = 2 Then
            Command1(index).FontBold = True
            Command1(index).FontItalic = True
            Command1(index).BackColor = RGB(210, 20, 20)
        ElseIf Command1(index).Caption = 3 Then
            Command1(index).FontBold = True
            Command1(index).FontItalic = True
            Command1(index).FontUnderline = True
            Command1(index).BackColor = RGB(180, 20, 20)
        ElseIf Command1(index).Caption > 3 Then
            Command1(index).FontBold = True
            Command1(index).FontItalic = True
            Command1(index).FontUnderline = True
            Command1(index).BackColor = RGB(150, 20, 20)
        End If
        Command1(index).FontSize = 10 + Command1(index).Caption * 2
        m = m - 1
        If m = 0 Then
            Timer1.Interval = 0
            MsgBox "You Win! Time Cost: " & timeCost & "s", vbOKOnly, "You Win!"
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
            Command1(i).FontBold = False
            Command1(i).FontItalic = False
            Command1(i).FontUnderline = False
            Command1(i).FontSize = 10
            Command1(i).BackColor = &H8000000F
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
            Command1(a).Caption = ""
            n = n + 1
        End If
    Loop Until n = mine
    m = 100 - n
    s = 1
    Command2.Caption = "RESTART"
    timeCost = 0
    Timer1.Interval = 1000
End Sub

Private Sub Form_Load()
    row = 10 + 2
    col = 10 + 2
    mine = 10
    square = row * col
    max = 0
    s = 0
    timeCost = 0
    showTime = 1
End Sub

Private Sub Timer1_Timer()
    timeCost = timeCost + 1
    If showTime = 1 Then
        Label1 = timeCost & "s"
    End If
End Sub
