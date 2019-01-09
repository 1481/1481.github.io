VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7464
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   7788
   LinkTopic       =   "Form1"
   ScaleHeight     =   8000
   ScaleMode       =   0  '使用者自訂
   ScaleWidth      =   7930.753
   StartUpPosition =   3  '系統預設值
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "標楷體"
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
         Name            =   "新細明體"
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
         Name            =   "新細明體"
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
         Name            =   "標楷體"
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
      Text            =   "Your Number?"
      Top             =   600
      Width           =   2892
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(2000) As Integer
Private Sub Command1_Click()
    If a(Text1.Text) <> 1 Then
        List1.AddItem Text1.Text & vbTab & Now & vbTab & "In"
        a(Text1.Text) = 1
    Else
        MsgBox ("你已經進場了")
    End If
End Sub

Private Sub Command2_Click()
    List1.AddItem Text1.Text & vbTab & Now & vbTab & "Out"
    a(Text1.Text) = 0
End Sub

