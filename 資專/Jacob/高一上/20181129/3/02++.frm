VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7464
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   7788
   LinkTopic       =   "Form1"
   ScaleHeight     =   8000
   ScaleMode       =   0  '�ϥΪ̦ۭq
   ScaleWidth      =   7930.753
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.ListBox List2 
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   12
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1248
      Left            =   720
      TabIndex        =   5
      Top             =   5640
      Width           =   6132
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   12
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3648
      Left            =   720
      TabIndex        =   3
      Top             =   1320
      Width           =   6132
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OUT"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   12
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   5640
      TabIndex        =   2
      Top             =   600
      Width           =   1212
   End
   Begin VB.CommandButton Command1 
      Caption         =   "IN"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   12
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   4200
      TabIndex        =   1
      Top             =   600
      Width           =   1212
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   18
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   720
      TabIndex        =   0
      Text            =   "1"
      Top             =   600
      Width           =   2892
   End
   Begin VB.Label Label3 
      Alignment       =   1  '�a�k���
      Caption         =   "�`�@:  0�H"
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   13.8
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   3600
      TabIndex        =   7
      Top             =   5280
      Width           =   3252
   End
   Begin VB.Label Label2 
      Caption         =   "�֦b����?"
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   13.8
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   372
      Left            =   720
      TabIndex        =   6
      Top             =   5280
      Width           =   2772
   End
   Begin VB.Label Label1 
      Caption         =   "Your number?"
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   10.2
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   252
      Left            =   720
      TabIndex        =   4
      Top             =   360
      Width           =   1692
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(20000) As Integer
Private Sub Command1_Click()
    If a(Text1.Text) <> 1 Then
        List1.AddItem Text1.Text & vbTab & Now & vbTab & "In"
        List2.AddItem Text1.Text
        a(Text1.Text) = 1
        Label3.Caption = "�`�@: " & List2.ListCount & "�H"
    Else
        MsgBox (Text1.Text & " �w�g�i���F")
    End If
End Sub

Private Sub Command2_Click()
    If a(Text1.Text) = 1 Then
        List1.AddItem Text1.Text & vbTab & Now & vbTab & "Out"
        a(Text1.Text) = 0
        For i = 0 To List2.ListCount
            If List2.List(i) = Text1.Text Then
                List2.RemoveItem (i)
            End If
        Next
        Label3.Caption = "�`�@: " & List2.ListCount & "�H"
    Else
        MsgBox (Text1.Text & " �|���i��")
    End If
End Sub

