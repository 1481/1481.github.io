VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7404
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   14136
   LinkTopic       =   "Form1"
   ScaleHeight     =   7404
   ScaleWidth      =   14136
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.ListBox List2 
      Height          =   768
      Left            =   13440
      TabIndex        =   19
      Top             =   5760
      Visible         =   0   'False
      Width           =   492
   End
   Begin VB.ListBox List1 
      Height          =   4008
      Left            =   9480
      TabIndex        =   13
      Top             =   840
      Width           =   3972
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   372
      Index           =   2
      Left            =   8040
      TabIndex        =   8
      Top             =   4800
      Width           =   612
   End
   Begin VB.ComboBox Combo2 
      Height          =   276
      Index           =   2
      Left            =   6480
      TabIndex        =   7
      Text            =   "Combo2"
      Top             =   4920
      Width           =   1332
   End
   Begin VB.ComboBox Combo1 
      Height          =   276
      Index           =   2
      Left            =   6480
      TabIndex        =   6
      Text            =   "Combo1"
      Top             =   4320
      Width           =   2172
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   372
      Index           =   1
      Left            =   5160
      TabIndex        =   5
      Top             =   4800
      Width           =   612
   End
   Begin VB.ComboBox Combo2 
      Height          =   276
      Index           =   1
      Left            =   3600
      TabIndex        =   4
      Text            =   "Combo2"
      Top             =   4920
      Width           =   1332
   End
   Begin VB.ComboBox Combo1 
      Height          =   276
      Index           =   1
      Left            =   3600
      TabIndex        =   3
      Text            =   "Combo1"
      Top             =   4320
      Width           =   2172
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   372
      Index           =   0
      Left            =   2280
      TabIndex        =   2
      Top             =   4800
      Width           =   612
   End
   Begin VB.ComboBox Combo2 
      Height          =   276
      Index           =   0
      Left            =   720
      TabIndex        =   1
      Text            =   "Combo2"
      Top             =   4920
      Width           =   1332
   End
   Begin VB.ComboBox Combo1 
      Height          =   276
      Index           =   0
      ItemData        =   "02++.frx":0000
      Left            =   720
      List            =   "02++.frx":0002
      TabIndex        =   0
      Text            =   "Combo1"
      Top             =   4320
      Width           =   2172
   End
   Begin VB.Label Label9 
      Caption         =   "��3000���E��A��5000���K���"
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   25.8
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1212
      Left            =   600
      TabIndex        =   23
      Top             =   5880
      Width           =   8052
   End
   Begin VB.Label Label8 
      Caption         =   "0"
      Height          =   1212
      Left            =   6720
      TabIndex        =   22
      Top             =   5640
      Visible         =   0   'False
      Width           =   1932
   End
   Begin VB.Label Label5 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   16.2
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   12360
      TabIndex        =   21
      Top             =   5040
      Width           =   1092
   End
   Begin VB.Label Label7 
      Caption         =   "++���A3000�H�W��9��A5000�H�W��8��C�`�N�������ʳy��������~�t�C"
      Height          =   372
      Left            =   9480
      TabIndex        =   20
      Top             =   6720
      Width           =   3612
   End
   Begin VB.Label Label6 
      Caption         =   "+���A�����ʪ����i�������ʡA�ç�s�`���C"
      Height          =   372
      Left            =   9480
      TabIndex        =   18
      Top             =   5760
      Width           =   3612
   End
   Begin VB.Label Label4 
      Alignment       =   1  '�a�k���
      Caption         =   "1000"
      Height          =   372
      Index           =   2
      Left            =   7800
      TabIndex        =   17
      Top             =   3720
      Width           =   852
   End
   Begin VB.Label Label4 
      Alignment       =   1  '�a�k���
      Caption         =   "800"
      Height          =   372
      Index           =   1
      Left            =   4800
      TabIndex        =   16
      Top             =   3720
      Width           =   852
   End
   Begin VB.Label Label4 
      Alignment       =   1  '�a�k���
      Caption         =   "2000"
      Height          =   372
      Index           =   0
      Left            =   2040
      TabIndex        =   15
      Top             =   3720
      Width           =   852
   End
   Begin VB.Label Label3 
      Caption         =   "�ʪ���"
      Height          =   372
      Left            =   9480
      TabIndex        =   14
      Top             =   360
      Width           =   1212
   End
   Begin VB.Label Label2 
      Caption         =   "LATTE"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   720
      TabIndex        =   12
      Top             =   120
      Width           =   5292
   End
   Begin VB.Label Label1 
      Caption         =   "C103���"
      Height          =   372
      Index           =   2
      Left            =   6480
      TabIndex        =   11
      Top             =   3720
      Width           =   2052
   End
   Begin VB.Label Label1 
      Caption         =   "B102�w´"
      Height          =   372
      Index           =   1
      Left            =   3600
      TabIndex        =   10
      Top             =   3720
      Width           =   2052
   End
   Begin VB.Label Label1 
      Caption         =   "A101����"
      Height          =   372
      Index           =   0
      Left            =   720
      TabIndex        =   9
      Top             =   3720
      Width           =   2172
   End
   Begin VB.Image Image1 
      Height          =   2652
      Index           =   0
      Left            =   720
      Picture         =   "02++.frx":0004
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2172
   End
   Begin VB.Image Image1 
      Height          =   2652
      Index           =   2
      Left            =   6480
      Picture         =   "02++.frx":1FA8F6
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2172
   End
   Begin VB.Image Image1 
      Height          =   2652
      Index           =   1
      Left            =   3600
      Picture         =   "02++.frx":3F51E8
      Stretch         =   -1  'True
      Top             =   840
      Width           =   2172
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click(Index As Integer)
    'list1����W�١Aadditem��k�i�H�[�J����
    List1.AddItem (Label1(Index).Caption & vbTab & vbTab & Combo1(Index).Text & "*" & Combo2(Index).Text & vbTab & Label4(Index).Caption * Combo2(Index).Text)
    List2.AddItem (Label4(Index).Caption * Combo2(Index).Text)
    Label8.Caption = Label8.Caption + Label4(Index).Caption * Combo2(Index).Text
    If Label8.Caption >= 5000 Then
        Label5.Caption = Label8.Caption * 0.8
        Label9.Caption = "��5000���K��" & vbTab & vbTab & Label8.Caption & " * 0.8 = " & Label5.Caption
    ElseIf Label8.Caption >= 3000 Then
        Label5.Caption = Label8.Caption * 0.9
        Label9.Caption = "��3000���E��" & vbTab & vbTab & Label8.Caption & " * 0.9 = " & Label5.Caption
    Else
        Label5.Caption = Label8.Caption
        Label9.Caption = "��3000���E��A��5000���K���"
    End If
End Sub

Private Sub Form_Load()
    '���B�ŰʡA�o�̱N�ؤo�B�ƶq���ѼƸ��J
    For i = 0 To 2
        Combo1(i).Clear
        Combo1(i).AddItem "L"
        Combo1(i).AddItem "M"
        Combo1(i).AddItem "S"
        Combo1(i).ListIndex = 0
        Combo2(i).Clear
        For j = 1 To 20
            Combo2(i).AddItem j
        Next
        Combo2(i).ListIndex = 0
    Next
End Sub

Private Sub List1_DblClick()
    x = List1.ListIndex
    Label8.Caption = Label8.Caption - List2.List(x)
    If Label8.Caption >= 5000 Then
        Label5.Caption = Label8.Caption * 0.8
        Label9.Caption = "��5000���K��" & vbTab & vbTab & Label8.Caption & " * 0.8 = " & Label5.Caption
    ElseIf Label8.Caption >= 3000 Then
        Label5.Caption = Label8.Caption * 0.9
        Label9.Caption = "��3000���E��" & vbTab & vbTab & Label8.Caption & " * 0.9 = " & Label5.Caption
    Else
        Label5.Caption = Label8.Caption
        Label9.Caption = "��3000���E��A��5000���K���"
    End If
    List1.RemoveItem (x)
    List2.RemoveItem (x)
End Sub
