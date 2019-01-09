VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6420
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   7752
   LinkTopic       =   "Form1"
   ScaleHeight     =   6420
   ScaleWidth      =   7752
   StartUpPosition =   3  '系統預設值
   Begin VB.ListBox List1 
      Height          =   2028
      Left            =   5640
      TabIndex        =   8
      Top             =   2760
      Visible         =   0   'False
      Width           =   1812
   End
   Begin VB.CommandButton Command5 
      Caption         =   "?"
      BeginProperty Font 
         Name            =   "AR CENA"
         Size            =   19.8
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   6360
      TabIndex        =   7
      Top             =   5880
      Width           =   492
   End
   Begin VB.CommandButton Command4 
      Appearance      =   0  '平面
      Caption         =   "i"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.4
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7080
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   5880
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Caption         =   "交換"
      Height          =   615
      Left            =   6600
      TabIndex        =   5
      Top             =   1800
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  '置中對齊
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.4
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   615
      Left            =   5640
      TabIndex        =   4
      Text            =   "1"
      Top             =   1800
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "移動"
      Height          =   615
      Left            =   5640
      TabIndex        =   2
      Top             =   1800
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "排座位"
      Height          =   612
      Left            =   5640
      TabIndex        =   0
      Top             =   840
      Width           =   1812
   End
   Begin VB.Label Label2 
      Caption         =   "0"
      Height          =   255
      Left            =   7320
      TabIndex        =   3
      Top             =   6120
      Visible         =   0   'False
      Width           =   255
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   22.8
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   972
      Index           =   0
      Left            =   240
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
    For i = 1 To 29
        Label1(i).Caption = ""
    Next
        Label1(0).Caption = ""
    For i = 1 To 30
        a = Int(Rnd * 30)
        While Label1(a).Caption <> ""
            a = Int(Rnd * 30)
        Wend
        Label1(a).Caption = i
        If Label1(a).Caption < 6 Then
            Label1(a).ForeColor = vbRed
        Else
            Label1(a).ForeColor = vbBlue
        End If
    Next
    Command2.Visible = False
    Label2.Caption = 0
End Sub

Private Sub Command2_Click()
    Selected1 = 100
    Selected2 = 100
    For i = 0 To 29
        If Label1(i).ForeColor = vbMagenta Then
            If Selected1 = 100 Then
                Selected1 = i
            ElseIf Selected2 = 100 Then
                Selected2 = i
            End If
        End If
    Next
    a = Label1(Selected1).Caption
    Label1(Selected1).Caption = Label1(Selected2).Caption
    Label1(Selected2).Caption = a
    If Label1(Selected1).Caption < 6 Then
        Label1(Selected1).ForeColor = vbRed
    Else
        Label1(Selected1).ForeColor = vbBlue
    End If
    If Label1(Selected2).Caption < 6 Then
        Label1(Selected2).ForeColor = vbRed
    Else
        Label1(Selected2).ForeColor = vbBlue
    End If
    Command2.Visible = False
    Label2.Caption = 0
End Sub

Private Sub Command3_Click()
    For i = 0 To 29
        If Label1(i).Caption = Text1.Text Then
            For x = 0 To 29
                If Label1(x).ForeColor = vbMagenta Then
                    a = Label1(i).Caption
                    Label1(i).Caption = Label1(x).Caption
                    Label1(x).Caption = a
                End If
            Next
        End If
    Next
    Label2.Caption = 1
End Sub

Private Sub Command4_Click()
    MsgBox "作者: 1481 11" & vbCrLf & "版權: 沒有版權" & vbCrLf & "版本: 1.0", vbOKOnly, "軟體資訊"
End Sub

Private Sub Command5_Click()
    MsgBox "「排座位」按鈕: 隨機排座位" & vbCrLf & vbCrLf & "以下是選擇任意座位(點擊它)會出現的按鈕:" & vbCrLf & "「交換」按鈕: 將已選座位與輸入的座位交換" & vbCrLf & "「移動」按鈕: 將兩選取的座位交換", vbOKOnly, "使用方法"
End Sub

Private Sub Form_Load()
    Randomize
    For i = 1 To 29
        Load Label1(i)
        If i Mod 5 = 0 Then
            Label1(i).Left = Label1(i - 5).Left
            Label1(i).Top = Label1(i - 5).Top + 1000
        Else
            Label1(i).Left = Label1(i - 1).Left + 1000
            Label1(i).Top = Label1(i - 1).Top
        End If
        Label1(i).Alignment = 2
        Label1(i).Caption = i + 1
        Label1(i).ZOrder vbBringToFront
        Label1(i).BackStyle = 0
        Label1(i).Visible = True
        If Label1(i).Caption < 6 Then
            Label1(i).ForeColor = vbRed
        Else
            Label1(i).ForeColor = vbBlue
        End If
    Next
    Label1(0).Caption = 1
    Label1(0).ForeColor = vbRed
    Command2.Visible = False
End Sub

Private Sub Label1_Click(Index As Integer)
    If Label1(Index).ForeColor <> vbMagenta Or Label1(Index).Caption = "X" Then
        Label2.Caption = Label2.Caption + 1
        Label1(Index).ForeColor = vbMagenta
    Else
        Label2.Caption = Label2.Caption - 1
        If Label1(Index).Caption < 6 Then
            Label1(Index).ForeColor = vbRed
        Else
            Label1(Index).ForeColor = vbBlue
        End If
    End If
    If Label2.Caption > 2 Then
        List1.Visible = True
        Command2.Visible = False
        Text1.Visible = False
        Command3.Visible = False
        If List1.ListIndex <> -1 Then
            If Label1(Index).Caption = "X" Then
                Label1(Index).Caption = List1.List(List1.ListIndex)
                List1.RemoveItem (List1.ListIndex)
            End If
        Else
        For i = 0 To 29
            If Label1(i).ForeColor = vbMagenta And Label1(i).Caption <> "X" Then
                List1.AddItem (Label1(i).Caption)
                Label1(i).Caption = "X"
            End If
        Next
        End If
    ElseIf Label2.Caption = 2 Then
        Command2.Visible = True
        Text1.Visible = False
        Command3.Visible = False
        List1.Visible = False
    ElseIf Label2.Caption = 1 Then
        Text1.Visible = True
        Command3.Visible = True
        Command2.Visible = False
        List1.Visible = False
    Else
        Command2.Visible = False
        Text1.Visible = False
        Command3.Visible = False
        List1.Visible = False
    End If
End Sub

Private Sub List1_Click()
    x = List1.ListIndex
End Sub
