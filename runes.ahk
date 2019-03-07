CoordMode, ToolTip, Screen
toggle = 0
#MaxThreadsPerHotkey 2

;Comment1 main switch is f6 to start and stop when game start and ends
F6::
  Toggle := !Toggle

  if Toggle {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Starting Game ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -5000
    SetTimer, StartRuneTimer, -300000
	SetTimer, StartStackReadyTimer, -105000
	SetTimer, StartStackNowTimer, -111000
	SetTimer, StartPowerRuneTimer, -120000
	
  } else {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Ending Game ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -3000
  }
return


StartRuneTimer:
  if Toggle {
    ToolTip, 
      (Join LTrim
        =============`n
        === GOLDIES ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -30000
    SetTimer, StartRuneTimer, -300000
  }
return

StartStackReadyTimer:
  if Toggle {
    ToolTip, 
      (Join LTrim
        =============`n
        === get ready to stack ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -5000
    SetTimer, StartStackReadyTimer, -60000
  }
return

StartStackNowTimer:
 if Toggle {
    ToolTip, 
      (Join LTrim
        =============`n
        === STACK NOW!! ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -4000
    SetTimer, StartStackNowTimer, -60000
  }
return

StartPowerRuneTimer:
 if Toggle {
    ToolTip, 
      (Join LTrim
        =============`n
        === Power runes ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -10000
    SetTimer, StartPowerRuneTimer, -120000
  }
return

;Comment2 if game is paused u can start at even minutes for stck and power runes with f7
	F7::
  Toggle1 := !Toggle1

  if Toggle1 {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Starting 1&2 Min Reminder ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -5000
	SetTimer, StartStackReadyTimer1, -45000
	SetTimer, StartStackNowTimer1, -51000
	SetTimer, StartPowerRuneTimer1, -120000
	
  } else {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Stoping 1&2 Min Reminder ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -3000
  }
return

StartStackReadyTimer1:
  if Toggle1 {
    ToolTip, 
      (Join LTrim
        =============`n
        === get ready to stack ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -5000
    SetTimer, StartStackReadyTimer1, -60000
  }
return

StartStackNowTimer1:
 if Toggle1 {
    ToolTip, 
      (Join LTrim
        =============`n
        === STACK NOW!! ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -4000
    SetTimer, StartStackNowTimer1, -60000
  }
return

StartPowerRuneTimer1:
 if Toggle1 {
    ToolTip, 
      (Join LTrim
        =============`n
        === Power runes ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -10000
    SetTimer, StartPowerRuneTimer1, -120000
  }
return
  
 RemoveToolTip:
  ToolTip
return 
  
  ; if game is paused u can start bounty rune reminder with f8
  
F8::
  Toggle := !Toggle

  if Toggle {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Starting 5 Min rune ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -5000
    SetTimer, StartRuneTimer2, -300000
	
  } else {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Ending 5 Min rune ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -3000
  }
return


StartRuneTimer2:
  if Toggle {
    ToolTip, 
      (Join LTrim
        =============`n
        === GOLDIES ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -30000
    SetTimer, StartRuneTimer2, -300000
  }
return
