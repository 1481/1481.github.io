VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   9456
   ClientLeft      =   108
   ClientTop       =   432
   ClientWidth     =   15780
   LinkTopic       =   "Form1"
   ScaleHeight     =   10000
   ScaleMode       =   0  '使用者自訂
   ScaleWidth      =   16000
   StartUpPosition =   3  '系統預設值
   Begin VB.Timer Timer1 
      Left            =   720
      Top             =   2400
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim t As Double

Private Sub Form_Load()
    Timer1.Interval = 1
End Sub

Private Sub Timer1_Timer()
    t = 0
    Form1.DrawWidth = 30
    For i = 1 To 10000
        PSet (Rnd() * Form1.ScaleWidth, Rnd() * Form1.ScaleHeight), RGB(Rnd() * 256, Rnd() * 256, Rnd() * 256)
    Next
End Sub
