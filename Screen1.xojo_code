#tag MobileScreen
Begin MobileScreen Screen1
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   HasNavigationBar=   False
   LargeTitleDisplayMode=   2
   Left            =   0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   "&h00000000"
   Title           =   "Untitled"
   Top             =   0
   Begin MobileLabel Label1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   Label1, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   Label1, 2, Button1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Label1, 3, , 0, False, +1.00, 4, 1, 76, , True
      AutoLayout      =   Label1, 8, , 0, False, +1.00, 4, 1, 30, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   76
      Visible         =   True
      Width           =   280
   End
   Begin MobileTextField TextField1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   TextField1, 1, Label1, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   TextField1, 2, Button1, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TextField1, 3, , 0, False, +1.00, 4, 1, 402, , True
      AutoLayout      =   TextField1, 8, , 0, True, +1.00, 4, 1, 31, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Hint            =   "Type Answer Here"
      InputType       =   0
      Left            =   40
      LockedInPosition=   False
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   402
      Visible         =   True
      Width           =   260
   End
   Begin MobileButton Button1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   Button1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   Button1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   Button1, 4, <Parent>, 4, False, +1.00, 4, 1, -*kStdGapCtlToViewV, , True
      Caption         =   "Submit"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   ""
      Top             =   518
      Visible         =   True
      Width           =   280
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events Button1
	#tag Event
		Sub Pressed()
		  If TextField1.Text = "" Then
		    MessageBox("Please enter an answer.")
		  End If
		  RE:
		  If TextField1.Text = a Then
		    If no = 0 Then
		      MessageBox("Correct!")
		      no = no + 1
		      q = "What number President was Barack Obama?"
		      a = "44"
		      Label1.Text = q
		      Textfield1.Text = ""
		      GoTo RE
		    End If
		    If no = 1 Then
		      MessageBox("Correct!")
		      no = no + 1
		      q = "Who was the first U.S. President?"
		      a = "Washington"
		      Label1.Text = q
		      Textfield1.Text = ""
		      GoTo RE
		    End If
		    If no = 2 Then
		      MessageBox("Correct! You have finished the entire quiz!")
		    End If
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
