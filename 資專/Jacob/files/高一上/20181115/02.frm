VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6420
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   7755
   LinkTopic       =   "Form1"
   ScaleHeight     =   6420
   ScaleWidth      =   7755
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command4 
      Appearance      =   0  '平面
      Caption         =   "i"
      BeginProperty Font 
         Name            =   "Bahnschrift Condensed"
         Size            =   20.25
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
         Size            =   26.25
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
         Size            =   22.5
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
    If Label1(Index).ForeColor <> vbMagenta Then
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
    If Label2.Caption = 2 Then
        Command2.Visible = True
        Text1.Visible = False
        Command3.Visible = False
    ElseIf Label2.Caption = 1 Then
        Text1.Visible = True
        Command3.Visible = True
        Command2.Visible = False
    Else
        Command2.Visible = False
        Text1.Visible = False
        Command3.Visible = False
    End If
End Sub
