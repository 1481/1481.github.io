VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7164
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   10644
   LinkTopic       =   "Form1"
   ScaleHeight     =   7164
   ScaleWidth      =   10644
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.CommandButton Command1 
      Caption         =   "start"
      Height          =   612
      Left            =   7560
      TabIndex        =   14
      Top             =   2880
      Width           =   1332
   End
   Begin VB.Timer Timer2 
      Left            =   7560
      Top             =   5040
   End
   Begin VB.Timer Timer1 
      Left            =   9000
      Top             =   2760
   End
   Begin VB.Label Label2 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "�з���"
         Size            =   19.8
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   852
      Left            =   7440
      TabIndex        =   15
      Top             =   1440
      Width           =   2172
   End
   Begin VB.Label Label7 
      Caption         =   "3�ư��R��o��"
      Height          =   252
      Left            =   7440
      TabIndex        =   13
      Top             =   3600
      Width           =   1452
   End
   Begin VB.Label Label6 
      Caption         =   "2�w�ɾ��üƲ��ͦa��"
      Height          =   252
      Left            =   7440
      TabIndex        =   12
      Top             =   2520
      Width           =   2052
   End
   Begin VB.Label Label5 
      Caption         =   "1�o���P����"
      Height          =   252
      Left            =   7440
      TabIndex        =   11
      Top             =   1080
      Width           =   1212
   End
   Begin VB.Label Label4 
      Caption         =   "4.�˼ƭp��"
      Height          =   492
      Left            =   7440
      TabIndex        =   10
      Top             =   4680
      Width           =   1812
   End
   Begin VB.Label Label3 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   15.6
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   7560
      TabIndex        =   9
      Top             =   5640
      Width           =   1332
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   8
      Left            =   5040
      TabIndex        =   8
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   7
      Left            =   3000
      TabIndex        =   7
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   6
      Left            =   960
      TabIndex        =   6
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   5
      Left            =   5040
      TabIndex        =   5
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   4
      Left            =   3000
      TabIndex        =   4
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   3
      Left            =   960
      TabIndex        =   3
      Top             =   2640
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   2
      Left            =   5040
      TabIndex        =   2
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   1
      Left            =   3000
      TabIndex        =   1
      Top             =   600
      Width           =   1695
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      Appearance      =   0  '����
      BackColor       =   &H80000005&
      BorderStyle     =   1  '��u�T�w
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   72
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   1695
      Index           =   0
      Left            =   960
      TabIndex        =   0
      Top             =   600
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Timer1.Interval = 800
End Sub

Private Sub Label1_Click(Index As Integer)
    If Label1(Index).Caption = "X" Then
        Label2.Caption = Label2.Caption + 1
    Else
        Label2.Caption = Label2.Caption - 1
    End If

End Sub

Private Sub Timer1_Timer()
    '�ĤG�D
    '�M�Ŧa��
    For i = 0 To 8
        Label1(i).Caption = ""
    Next
    '�`�@�n9�ӡA��FOR?
    
    Randomize
    'rnd���ͤp��1�j��0���üơAint()����ơA�n�D0-8�����
    Label1(4).Caption = "X"  '��4����int(rnd*?)
End Sub
