VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmsplash 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   ClientHeight    =   4200
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   5085
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "frmsplash.frx":0000
   ScaleHeight     =   4200
   ScaleWidth      =   5085
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.ProgressBar chrg 
      Height          =   375
      Left            =   600
      TabIndex        =   1
      Top             =   3240
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   661
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label lblStatus 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Statut"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   120
      TabIndex        =   0
      Top             =   3840
      Width           =   4860
   End
End
Attribute VB_Name = "frmsplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
    If (KeyAscii = vbKeyEscape) Then
        KeyAscii = 0
        Call DestroyDirectX
        Call StopMidi
        InGame = False
        frmMirage.Socket.Close
        frmMainMenu.Visible = True
        Connucted = False
        Unload Me
    End If
End Sub

Private Sub lblStatus_Click()
    If lblStatus.Caption = "Recherche des mises � jour..." Then
        'frmUpdate.DL.EndDownload
    End If
End Sub

