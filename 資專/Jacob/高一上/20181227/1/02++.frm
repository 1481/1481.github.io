VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4584
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   8280
   LinkTopic       =   "Form1"
   ScaleHeight     =   4584
   ScaleWidth      =   8280
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command3 
      Caption         =   "Alphabet"
      Height          =   492
      Left            =   5640
      TabIndex        =   4
      Top             =   1320
      Width           =   1812
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Beep"
      Height          =   492
      Left            =   3600
      TabIndex        =   3
      Top             =   1320
      Width           =   1812
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Morse"
      CausesValidation=   0   'False
      Height          =   492
      Left            =   1560
      TabIndex        =   2
      Top             =   1320
      Width           =   1812
   End
   Begin VB.TextBox Text2 
      Height          =   1452
      Left            =   1560
      MultiLine       =   -1  'True
      ScrollBars      =   2  '垂直捲軸
      TabIndex        =   1
      Text            =   "02++.frx":0000
      Top             =   2280
      Width           =   3852
   End
   Begin VB.TextBox Text1 
      Height          =   492
      Left            =   1560
      TabIndex        =   0
      Text            =   "stay"
      Top             =   480
      Width           =   2532
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim morse As Variant '這個不要動
'beep第三題才會用到
Private Declare Function Beep Lib "kernel32" (ByVal dwFreq As Long, ByVal dwDuration As Long) As Long
Private Sub Command1_Click()
    Text2 = ""
    For i = 1 To Len(Text1)
        Text2 = Text2 & morse(Asc(Mid(Text1, i, 1)) - Asc("a")) & vbCrLf
    Next
End Sub


Private Sub Command2_Click()
    For i = 1 To Len(Text2)
        If Mid(Text2, i, 1) = "-" Then
            Beep 500, 900
        ElseIf Mid(Text2, i, 1) = "." Then
            Beep 500, 300
        End If
    Next
End Sub

Private Sub Command3_Click()
    Text1 = ""
    Code = Split(Text2, vbCrLf)
    For i = 0 To UBound(Code)
        For j = 0 To UBound(morse)
            If Code(i) = morse(j) Then
                Text1 = Text1 & Chr(j + Asc("a"))
            End If
        Next
    Next
End Sub

Private Sub Form_Load()  '這段也不要動
    morse = Array(".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---", "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-", "..-", "...-", ".--", "-..-", "-.--", "--..")
    '我已經幫你把摩斯密碼表建好了，a->morse(0) , b->morse(1)  c->morse(2) ....
End Sub
