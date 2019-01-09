VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5295
   ClientLeft      =   195
   ClientTop       =   510
   ClientWidth     =   3495
   LinkTopic       =   "Form1"
   ScaleHeight     =   5295
   ScaleWidth      =   3495
   StartUpPosition =   3  '系統預設值
   Begin VB.Frame Frame1 
      Caption         =   "Settings"
      Height          =   4812
      Left            =   240
      TabIndex        =   7
      Top             =   240
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
      Left            =   9840
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   12000
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      Caption         =   "交換"
      Height          =   735
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
      Height          =   750
      Left            =   8160
      TabIndex        =   4
      Text            =   "1"
      Top             =   1800
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "移動"
      Height          =   735
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
      BackStyle       =   0  '透明
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   22.5
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Index           =   0
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   975
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
Dim DID As Integer

Private Sub Command5_Click()
    Frame1.Visible = False
    girlCount = Int(Text4.Text)
    totalCount = Int(Text4.Text) + Int(Text5.Text)
    cols = Int(Text3.Text)
    rows = Int(Text2.Text)
    Randomize
    Image1(0).Picture = LoadPicture("image/img (1).jpg")
    Label1(0).Left = Image1(0).Left
    Label1(0).Top = Image1(0).Top + Image1(0).Height + 200
    For i = 1 To cols * rows - 1
        Load Label1(i)
        Load Image1(i)
        If i < totalCount Then
            Label1(i).Caption = i + 1
            Image1(i).Picture = LoadPicture("image/img (" & i + 1 & ").jpg")
        Else
            Label1(i).Caption = ""
            Image1(i).Picture = LoadPicture("")
        End If
        If i Mod cols = 0 Then
            Image1(i).Left = Image1(i - cols).Left
            Image1(i).Top = Image1(i - cols).Top + Image1(i - cols).Height + 800
        Else
            Image1(i).Left = Image1(i - 1).Left + Image1(i - 1).Width + 300
            Image1(i).Top = Image1(i - 1).Top
        End If
        Label1(i).Left = Image1(i).Left
        Label1(i).Top = Image1(i).Top + Image1(i).Height + 200
        Label1(i).Alignment = 2
        Label1(i).ZOrder vbBringToFront
        Label1(i).BackStyle = 0
        Label1(i).Visible = True
        Image1(i).Visible = True
        If Label1(i).Caption = "" Then
            Label1(i).ForeColor = vbBlack
        ElseIf Label1(i).Caption < girlCount + 1 Then
            Label1(i).ForeColor = vbRed
        Else
            Label1(i).ForeColor = vbBlue
        End If
    Next
    Label1(0).Caption = 1
    Label1(0).ForeColor = vbRed
    Command2.Visible = False
    Command1.Visible = True
    Me.Height = Label1(cols * rows - 1).Top + Label1(cols * rows - 1).Height + 100
    Command1.Left = Image1(cols - 1).Left + Image1(cols - 1).Width + 300
    Command2.Left = Command1.Left
    Command3.Left = Command1.Left + Command1.Width - Command3.Width
    Text1.Left = Command1.Left
    Text1.Height = 615
    Command4.Top = Label1(cols * rows - 1).Top - 100
    Command4.Left = Label1(cols * rows - 1).Left + Label1(cols * rows - 1).Width + 2000
    Me.Width = Command4.Left + Command4.Width + 400
End Sub

Private Sub Command1_Click()
    For i = 1 To cols * rows - 1
        Label1(i).Caption = ""
        Image1(i).Picture = LoadPicture("")
    Next
        Label1(0).Caption = ""
    For i = 1 To totalCount
        a = Int(Rnd * (cols * rows))
        While Label1(a).Caption <> ""
            a = Int(Rnd * (cols * rows))
        Wend
        Label1(a).Caption = i
        Image1(a).Picture = LoadPicture("image/img (" & i & ").jpg")
        If Label1(a).Caption < girlCount + 1 Then
            Label1(a).ForeColor = vbRed
        Else
            Label1(a).ForeColor = vbBlue
        End If
    Next
    Command2.Visible = False
End Sub

Private Sub Command2_Click()
    Selected1 = -1
    Selected2 = -1
    For i = 0 To cols * rows - 1
        If Label1(i).ForeColor = vbMagenta Then
            If Selected1 = -1 Then
                Selected1 = i
            ElseIf Selected2 = -1 Then
                Selected2 = i
            End If
        End If
    Next
    a = Label1(Selected1).Caption
    Label1(Selected1).Caption = Label1(Selected2).Caption
    If Label1(Selected2).Caption <> "v" Then
        Image1(Selected1).Picture = LoadPicture("image/img (" & Label1(Selected2).Caption & ").jpg")
    Else
        Image1(Selected1).Picture = LoadPicture("")
    End If
    Label1(Selected2).Caption = a
    If a <> "v" Then
        Image1(Selected2).Picture = LoadPicture("image/img (" & a & ").jpg")
    Else
        Image1(Selected2).Picture = LoadPicture("")
    End If
    If Label1(Selected1).Caption = "v" Then
        Label1(Selected1).ForeColor = vbBlack
        Label1(Selected1).Caption = ""
    ElseIf Label1(Selected1).Caption < girlCount + 1 Then
        Label1(Selected1).ForeColor = vbRed
    Else
        Label1(Selected1).ForeColor = vbBlue
    End If
    If Label1(Selected2).Caption = "v" Then
        Label1(Selected2).ForeColor = vbBlack
        Label1(Selected2).Caption = ""
    ElseIf Label1(Selected2).Caption < girlCount + 1 Then
        Label1(Selected2).ForeColor = vbRed
    Else
        Label1(Selected2).ForeColor = vbBlue
    End If
    Image1(Selected1).BorderStyle = 0
    Image1(Selected2).BorderStyle = 0
    Command2.Visible = False
    Label2.Caption = 0
End Sub

Private Sub Command3_Click()
    For i = 0 To cols * rows - 1
        If Label1(i).Caption = Text1.Text Then
            For X = 0 To cols * rows - 1
                If Label1(X).ForeColor = vbMagenta Then
                    a = Label1(i).Caption
                    Label1(i).Caption = Label1(X).Caption
                    If Label1(X).Caption <> "v" Then
                        Image1(i).Picture = LoadPicture("image/img (" & Label1(X).Caption & ").jpg")
                    Else
                        Image1(i).Picture = LoadPicture("")
                        Label1(i).Caption = ""
                    End If
                    Label1(X).Caption = a
                    If a <> "" Then
                        Image1(X).Picture = LoadPicture("image/img (" & a & ").jpg")
                    Else
                        Image1(i).Picture = LoadPicture("")
                        Label1(X).Caption = ""
                    End If
                    If Label1(X).Caption = "v" Then
                        Label1(X).ForeColor = vbBlack
                        Label1(X).Caption = ""
                    ElseIf Label1(X).Caption < girlCount + 1 Then
                        Label1(X).ForeColor = vbRed
                    Else
                        Label1(X).ForeColor = vbBlue
                    End If
                    If Label1(i).Caption = "v" Then
                        Label1(i).ForeColor = vbBlack
                        Label1(i).Caption = ""
                    ElseIf Label1(i).Caption < girlCount + 1 Then
                        Label1(i).ForeColor = vbRed
                    Else
                        Label1(i).ForeColor = vbBlue
                    End If
                    Image1(i).BorderStyle = 0
                    Image1(X).BorderStyle = 0
                End If
            Next
        End If
    Next
    Label2.Caption = 0
    Command2.Visible = False
    Text1.Visible = False
    Command3.Visible = False
End Sub

Private Sub Image1_Click(Index As Integer)
    If Label1(Index).ForeColor <> vbMagenta Then
        Label2.Caption = Label2.Caption + 1
        Label1(Index).ForeColor = vbMagenta
        Image1(Index).BorderStyle = 1
        If Label1(Index).Caption = "" Then
            Label1(Index).Caption = "v"
        End If
    Else
        Label2.Caption = Label2.Caption - 1
        Image1(Index).BorderStyle = 0
        If Label1(Index).Caption = "v" Then
            Label1(Index).ForeColor = vbBlack
        ElseIf Label1(Index).Caption < girlCount + 1 Then
            Label1(Index).ForeColor = vbRed
        Else
            Label1(Index).ForeColor = vbBlue
        End If
        If Label1(Index).Caption = "v" Then
            Label1(Index).Caption = ""
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

Private Sub Label1_Click(Index As Integer)
    If Label1(Index).ForeColor <> vbMagenta Then
        Label2.Caption = Label2.Caption + 1
        Label1(Index).ForeColor = vbMagenta
        Image1(Index).BorderStyle = 1
        If Label1(Index).Caption = "" Then
            Label1(Index).Caption = "v"
        End If
    Else
        Label2.Caption = Label2.Caption - 1
        Image1(Index).BorderStyle = 0
        If Label1(Index).Caption = "v" Then
            Label1(Index).ForeColor = vbBlack
        ElseIf Label1(Index).Caption < girlCount + 1 Then
            Label1(Index).ForeColor = vbRed
        Else
            Label1(Index).ForeColor = vbBlue
        End If
        If Label1(Index).Caption = "v" Then
            Label1(Index).Caption = ""
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
Private Sub Image1_DragDrop(Index As Integer, Source As Control, X As Single, Y As Single)
    a = Label1(Index).Caption
    Label1(Index).Caption = Label1(DID).Caption
    Label1(DID).Caption = a
    If Label1(Index).Caption = "" Then
        Label1(Index).ForeColor = vbBlack
    ElseIf Label1(Index).Caption < girlCount + 1 Then
        Label1(Index).ForeColor = vbRed
    Else
        Label1(Index).ForeColor = vbBlue
    End If
    If Label1(DID).Caption = "" Then
        Label1(DID).ForeColor = vbBlack
    ElseIf Label1(DID).Caption < girlCount + 1 Then
        Label1(DID).ForeColor = vbRed
    Else
        Label1(DID).ForeColor = vbBlue
    End If
    If Label1(Index).Caption <> "" Then
        Image1(Index).Picture = LoadPicture("image/img (" & Label1(Index).Caption & ").jpg")
    Else
        Image1(Index).Picture = LoadPicture("")
    End If
    If Label1(DID).Caption <> "" Then
        Image1(DID).Picture = LoadPicture("image/img (" & Label1(DID).Caption & ").jpg")
    Else
        Image1(DID).Picture = LoadPicture("")
    End If
End Sub
Private Sub Image1_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    Image1(Index).Drag vbBeginDrag
    DID = Index
End Sub

Private Sub Command4_Click()
    MsgBox "作者: HSNU 1481 11" & vbCrLf & "版權: 沒有版權" & vbCrLf & "版本: 2.0", vbOKOnly, "軟體資訊"
End Sub

