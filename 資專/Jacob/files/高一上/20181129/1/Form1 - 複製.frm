VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9480
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   16725
   LinkTopic       =   "Form1"
   ScaleHeight     =   9480
   ScaleWidth      =   16725
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.Timer Timer1 
      Left            =   2400
      Top             =   2640
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Text            =   "200"
      Top             =   1920
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Text            =   "300"
      Top             =   1320
      Width           =   1935
   End
   Begin VB.Image Image1 
      Height          =   1848
      Left            =   0
      Stretch         =   -1  'True
      Top             =   7560
      Width           =   1908
   End
   Begin VB.Label Label5 
      Caption         =   "�����t��"
      Height          =   615
      Left            =   240
      TabIndex        =   6
      Top             =   1920
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "�����t��"
      Height          =   615
      Left            =   240
      TabIndex        =   5
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   4320
      TabIndex        =   3
      Top             =   1920
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4320
      TabIndex        =   2
      Top             =   1200
      Width           =   2775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    '�}�Ү���
    Timer1.Interval = 100
    '����k�s
    Label3.Caption = 0
    
 
End Sub


Private Sub Timer1_Timer()
 
End Sub
