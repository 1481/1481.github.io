VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9192
   ClientLeft      =   120
   ClientTop       =   456
   ClientWidth     =   13596
   LinkTopic       =   "Form1"
   ScaleHeight     =   9192
   ScaleWidth      =   13596
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   612
      Left            =   8280
      TabIndex        =   8
      Top             =   960
      Width           =   1572
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1320
      TabIndex        =   1
      Text            =   "200"
      Top             =   840
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      Height          =   495
      Left            =   1320
      TabIndex        =   0
      Text            =   "200"
      Top             =   1440
      Width           =   1935
   End
   Begin VB.Timer Timer1 
      Left            =   2400
      Top             =   2160
   End
   Begin VB.Label Label6 
      BackStyle       =   0  '�z��
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   20.4
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   372
      Left            =   8880
      TabIndex        =   7
      Top             =   2520
      Width           =   732
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   4320
      TabIndex        =   6
      Top             =   720
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   495
      Left            =   4320
      TabIndex        =   5
      Top             =   1440
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   0
      Width           =   1335
   End
   Begin VB.Label Label4 
      Caption         =   "������t"
      Height          =   615
      Left            =   240
      TabIndex        =   3
      Top             =   840
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "������t"
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   1440
      Width           =   855
   End
   Begin VB.Image Image1 
      Height          =   1116
      Left            =   0
      Picture         =   "02.frx":0000
      Stretch         =   -1  'True
      Top             =   7200
      Width           =   1188
   End
   Begin VB.Image Image2 
      Height          =   1140
      Left            =   8040
      Picture         =   "02.frx":29F8
      Stretch         =   -1  'True
      Top             =   7200
      Width           =   1212
   End
   Begin VB.Image Image3 
      Height          =   7308
      Left            =   0
      Picture         =   "02.frx":5ACF
      Stretch         =   -1  'True
      Top             =   2040
      Width           =   13680
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Function IsImpact(ByVal Obj1 As Object, ByVal Obj2 As Object) As Boolean
    Dim xScale As Boolean, yScale As Boolean
    If (Obj1.Left >= Obj2.Left And Obj1.Left <= Obj2.Left + Obj2.Width) Then
        xScale = True
    End If
    If (Obj1.Left + Obj1.Width >= Obj2.Left And Obj1.Left + Obj1.Width <= Obj2.Left + Obj2.Width) Then
        xScale = True
    End If
    If (Obj1.Top >= Obj2.Top And Obj1.Top <= Obj2.Top + Obj2.Height) Then
        yScale = True
    End If
    If (Obj1.Top + Obj1.Height >= Obj2.Top And Obj1.Top + Obj1.Height <= Obj2.Top + Obj2.Height) Then
        yScale = True
    End If
    IsImpact = xScale And yScale
End Function

Private Sub Command1_Click()
    Timer1.Interval = 100
    Label1.Caption = 0
    Label2.Caption = 0
    Label3.Caption = 0
    '�[���D
    Image1.Left = 0 '�a���A�����y��0
    Image1.Top = Form1.ScaleHeight - Image1.Height '�����y��=>��������-�Ϥ�����
End Sub

Private Sub Timer1_Timer()
    Label3.Caption = Label3.Caption + 1
    '��vx��text1�N�J�A��vy��text2�N�J�A��t��label3�N�J�A�N�i�H��X��������label1�A��������label2
    Label1.Caption = Text1.Text * Label3.Caption
    Label2.Caption = Text2.Text * Label3.Caption + 1 / 2 * (-9.8) * Label3.Caption * Label3.Caption
    
    '�]�����������y�жV���U�V�j�A��ƾǧ��Шt�ۤϡA�ҥH���׳o��n�δ�k
    Image1.Left = 0 + Label1.Caption '��l�����y��+�ߪ��u�����Һ�X�������Z��
    Image1.Top = (Form1.ScaleHeight - Image1.Height) - Label2.Caption  '��l�����y��-�ߪ��u�����Һ�X�������Z��
    
    '�Ĥ@�D�G�C�����ʳ��i��I���o���A�o�̤U�P�_��
    If IsImpact(Image1, Image2) Then
        Label6.Caption = Label6.Caption + 1
    End If
End Sub


