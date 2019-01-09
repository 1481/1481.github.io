VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9825
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   10215
   LinkTopic       =   "Form1"
   ScaleHeight     =   9825
   ScaleWidth      =   10215
   StartUpPosition =   3  '系統預設值
   Begin VB.Frame Frame1 
      Caption         =   "Settings"
      Height          =   4812
      Left            =   3480
      TabIndex        =   7
      Top             =   960
      Width           =   3015
      Begin VB.CommandButton Command5 
         Caption         =   "Start!"
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   15.75
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   360
         TabIndex        =   16
         Top             =   3720
         Width           =   2175
      End
      Begin VB.TextBox Text5 
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   360
         TabIndex        =   15
         Text            =   "25"
         Top             =   2760
         Width           =   2172
      End
      Begin VB.TextBox Text4 
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   360
         TabIndex        =   13
         Text            =   "5"
         Top             =   2040
         Width           =   2172
      End
      Begin VB.TextBox Text3 
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   360
         TabIndex        =   10
         Text            =   "5"
         Top             =   1320
         Width           =   2172
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "新細明體"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   372
         Left            =   360
         TabIndex        =   8
         Text            =   "6"
         Top             =   600
         Width           =   2172
      End
      Begin VB.Label Label6 
         Caption         =   "Number Of Boys"
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   11.25
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   252
         Left            =   360
         TabIndex        =   14
         Top             =   2520
         Width           =   2172
      End
      Begin VB.Label Label5 
         Caption         =   "Number Of Girls"
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   11.25
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   252
         Left            =   360
         TabIndex        =   12
         Top             =   1800
         Width           =   2172
      End
      Begin VB.Label Label4 
         Caption         =   "Columns"
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   10.5
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   252
         Left            =   360
         TabIndex        =   11
         Top             =   1080
         Width           =   2052
      End
      Begin VB.Label Label3 
         Caption         =   "Rows"
         BeginProperty Font 
            Name            =   "標楷體"
            Size            =   10.5
            Charset         =   136
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   252
         Left            =   360
         TabIndex        =   9
         Top             =   360
         Width           =   2172
      End
   End
   Begin VB.CommandButton Command4 
      Appearance      =   0  '平面
      Caption         =   "i"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   9600
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   9240
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Caption         =   "交換"
      Height          =   615
      Left            =   9120
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
      Left            =   8160
      TabIndex        =   4
      Text            =   "1"
      Top             =   1800
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "移動"
      Height          =   615
      Left            =   8160
      TabIndex        =   2
      Top             =   1800
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "排座位"
      Height          =   612
      Left            =   8160
      TabIndex        =   0
      Top             =   840
      Visible         =   0   'False
      Width           =   1812
   End
   Begin VB.Image Image1 
      Height          =   1212
      Index           =   0
      Left            =   120
      Top             =   240
      Width           =   1212
   End
   Begin VB.Label Label2 
      Caption         =   "0"
      Height          =   252
      Left            =   9840
      TabIndex        =   3
      Top             =   6120
      Visible         =   0   'False
      Width           =   252
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
Dim girlCount As Integer
Dim totalCount As Integer
Dim rows As Integer
Dim cols As Integer

Private Sub Command5_Click()
    Frame1.Visible = False
    girlCount = Int(Text4.Text)
    totalCount = Int(Text4.Text) + Int(Text5.Text)
    cols = Int(Text3.Text)
    rows = Int(Text2.Text)
    Randomize
    Label1(0).Left = Image1(0).Left
    Label1(0).Top = Image1(0).Top + Image1(0).Height + 50
    For i = 1 To cols * rows - 1
        Load Label1(i)
        Load Image1(i)
        If i Mod cols = 0 Then
            Image1(i).Left = Image1(i - 5).Left
            Image1(i).Top = Image1(i - 5).Top + Image1(i - 5).Height + 300
        Else
            Image1(i).Left = Image1(i - 1).Left + Image1(i - 1).Width + 300
            Image1(i).Top = Image1(i - 1).Top
        End If
        Label1(i).Left = Image1(i).Left
        Label1(i).Top = Image1(i).Top + Image1(i).Height + 50
        Label1(i).Alignment = 2
        If i < totalCount Then
            Label1(i).Caption = i + 1
            Image1(i).Picture = LoadPicture("img (" & i + 1 & ").jpg")
        Else
            Label1(i).Caption = ""
        End If
        Label1(i).ZOrder vbBringToFront
        Label1(i).BackStyle = 0
        Label1(i).Visible = True
        If Label1(i).Caption = "" Then
            Label1(i).ForeColor = vbBlack
        ElseIf Label1(i).Caption < girlCount + 1 Then
            Label1(i).ForeColor = vbRed
        Else
            Label1(i).ForeColor = vbBlue
        End If
    Next
    Image1(0).Picture = LoadPicture("img (1).jpg")
    Label1(0).Caption = 1
    Label1(0).ForeColor = vbRed
    Command2.Visible = False
    Command1.Visible = True
End Sub

Private Sub Command1_Click()
    For i = 1 To cols * rows - 1
        Label1(i).Caption = ""
    Next
        Label1(0).Caption = ""
    For i = 1 To totalCount
        a = Int(Rnd * 30)
        While Label1(a).Caption <> ""
            a = Int(Rnd * 30)
        Wend
        Label1(a).Caption = i
        If Label1(a).Caption < girlCount + 1 Then
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
    For i = 0 To cols * rows - 1
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
    If Label1(Selected1).Caption = "" Then
        Label1(Selected1).ForeColor = vbBlack
    ElseIf Label1(Selected1).Caption < girlCount + 1 Then
        Label1(Selected1).ForeColor = vbRed
    Else
        Label1(Selected1).ForeColor = vbBlue
    End If
    If Label1(Selected2).Caption = "" Then
        Label1(Selected2).ForeColor = vbBlack
    ElseIf Label1(Selected2).Caption < girlCount + 1 Then
        Label1(Selected2).ForeColor = vbRed
    Else
        Label1(Selected2).ForeColor = vbBlue
    End If
    Command2.Visible = False
    Label2.Caption = 0
End Sub

Private Sub Command3_Click()
    For i = 0 To cols * rows - 1
        If Label1(i).Caption = Text1.Text Then
            For x = 0 To cols * rows - 1
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

Private Sub Label1_Click(Index As Integer)
    If Label1(Index).ForeColor <> vbMagenta Then
        Label2.Caption = Label2.Caption + 1
        Label1(Index).ForeColor = vbMagenta
    Else
        Label2.Caption = Label2.Caption - 1
        If Label1(Index).Caption < girlCount + 1 Then
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

Private Sub Command4_Click()
    MsgBox "作者: 1481 11" & vbCrLf & "版權: 沒有版權" & vbCrLf & "版本: 1.0", vbOKOnly, "軟體資訊"
End Sub
