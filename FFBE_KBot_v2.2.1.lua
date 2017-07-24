-- FFBE_KBot
-- Author: Kai
-- Version: 2.2.1
-- Date: 23 June 2017

-- =========== Regions ==============
screen = getAppUsableScreenSize()
X = screen:getX()--480 / 600 / 1080
Y = screen:getY()--800 / 960 / 1920
-- 1/2
upper = Region(	0,   	0,   	X,	  	Y/2 	)
center= Region( 0,		Y/4,   	X,		3*Y/4	)
lower = Region( 0,		Y/2,   	X,		Y 		)
left  = Region( 0,		0,		X/2,	Y 		)
right = Region( X/2,	0,  	X,		Y 		)
-- 1/4
upperLeft  = Region(	0,		0,  	X/2,	Y/2 )
upperRight = Region(	X/2,	0,  	X,  	Y/2 )
lowerLeft  = Region(	0,   	Y/2,  	X/2,  	Y 	)
lowerRight = Region(	X/2,   	Y/2,  	X,		Y	)
upperUpper = Region(	0,     	0,  	X,  	Y/4 )
upperLower = Region(	0,   	Y/4, 	X,  	Y/2 )
lowerUpper = Region(	0,   	Y/2,  	X,  	3*Y/4 )
lowerLower = Region(	0, 		3*Y/4,	X,		Y 	)
leftLeft   = Region(	0,		0,  	X/4,    Y 	)
leftRight  = Region(	X/4,    0,  	X/2,    Y 	)
rightLeft  = Region(	X/2,    0,  	3*X/4,	Y 	)
rightRight = Region(	3*X/4,	0,  	X,		Y 	)
-- 1/8
upperUpperLeft  = Region(	0,		0, 		X/2, 	Y/4 	)
upperUpperRight = Region(	X/2,	0, 		X, 		Y/4 	)
upperLowerLeft  = Region(   0,   	Y/4, 	X/2, 	Y/2 	)
upperLowerRight = Region(	X/2,   	Y/4, 	X, 		Y/2 	)
lowerUpperLeft  = Region(   0,   	Y/2, 	X/2,	3*Y/4 	)
lowerUpperRight = Region(	X/2,   	Y/2, 	X, 		3*Y/4 	)
lowerLowerLeft  = Region(   0, 		3*Y/4,	X/2, 	Y 	)
lowerLowerRight = Region( 	X/2, 	3*Y/4,	X, 		Y 	)

-- ==========  Native Locations  ==========
-- Default Locations
Location_Center = Location(300,480)
Location_Up = Location(300,240)
Location_Down = Location(300,720)
Location_Left = Location(150,480)
Location_Right = Location(450,480)
Location_UpLeft = Location(150,240)
Location_UpRight = Location(450,240)
Location_DownLeft = Location(150,720)
Location_DownRight = Location(450,720)
Location_Top = Location(300,150)
Location_Bottom = Location(300,750)
-- Login and Home
Location_Login = Location(300,745)
Location_Vortex = Location(170,490)
-- Battle
Location_Char1L = Location(60,610)
Location_Char1R = Location(240,610)
Location_Char2L = Location(60,715)
Location_Char2R = Location(240,715)
Location_Char3L = Location(60,820)
Location_Char3R = Location(240,820)
Location_Char4L = Location(360,610)
Location_Char4R = Location(540,610)
Location_Char5L = Location(360,715)
Location_Char5R = Location(540,715)
Location_Char6L = Location(360,820)
Location_Char6R = Location(540,820)
Location_SPDown = Location(300,855)
Location_SPUp = Location(300,555)
Location_SPScrollDown = Location(590,835)
Locaiton_SPScrollUp = Location(590,570)
Location_ArenaOpponentTop = Location(300,540)
Location_ArenaOpponentBot = Location(590,900)
-- Battle Before/After
Location_Stage1 = Location(300,355)
Location_Stage2 = Location(300,500)
Location_Stage3 = Location(300,670)
Location_Stage4 = Location(300,825)
Location_StageB2 = Location(590,725)
Location_StageB1 = Location(590,900)
Location_Vortex1 = Location(300,270)
Location_Vortex2 = Location(300,500)
Location_Vortex3 = Location(300,730)
Location_Vortex4 = Location(300,900)
Location_Raid1 = Location(300,585)
Location_Raid2 = Location(300,740)
Location_Raid3 = Location(300,900)
Location_DD_CompanionDown = Location(300,925)
Location_DD_CompanionUp = Location(300,295)
Location_ChangeParty = Location(590,350)
Location_Next = Location(300,890)
Location_ArenaOK = Location(300,840)
Location_Colosseum1 = Location(300,320)
Location_Colosseum2 = Location(300,430)
Location_Colosseum3 = Location(300,540)
-- Set Locations for different resolutions
if not (X == 600 or Y == 960) then
	Locations = {
	Location_Center,
	Location_Up,
	Location_Down,
	Location_Left,
	Location_Right,
	Location_UpLeft,
	Location_UpRight,
	Location_DownLeft,
	Location_DownRight,
	Location_Top,
	Location_Bottom,
	-- Login and Home
	Location_Login,
	Location_Vortex,
	-- Battle
	Location_Char1L,
	Location_Char1R,
	Location_Char2L,
	Location_Char2R,
	Location_Char3L,
	Location_Char3R,
	Location_Char4L,
	Location_Char4R,
	Location_Char5L,
	Location_Char5R,
	Location_Char6L,
	Location_Char6R,
	Location_SPDown,
	Location_SPUp,
	Location_SPScrollDown,
	Locaiton_SPScrollUp,
	Location_ArenaOpponentTop,
	Location_ArenaOpponentBot,
	-- Battle Before/After
	Location_Stage1,
	Location_Stage2,
	Location_Stage3,
	Location_Stage4,
	Location_StageB2,
	Location_StageB1,
	Location_Vortex1,
	Location_Vortex2,
	Location_Vortex3,
	Location_Vortex4,
	Location_Raid1,
	Location_Raid2,
	Location_Raid3,
	Location_DD_CompanionDown,
	Location_DD_CompanionUp,
	Location_ChangeParty,
	Location_Next,
	Location_ArenaOK,
	Location_Colosseum1,
	Location_Colosseum2,
	Location_Colosseum3,
	}
	for i, m in ipairs(Locations) do
		m = Location(m:getX()/600*X,m.getY()/960*Y)
	end
end

-- Array
LOC_CharL = {Location_Char1L,Location_Char2L,Location_Char3L,Location_Char4L,Location_Char5L,Location_Char6L }
LOC_CharR = {Location_Char1R,Location_Char2R,Location_Char3R,Location_Char4R,Location_Char5R,Location_Char6R }
LOC_Vortex = {Location_Vortex1,Location_Vortex2,Location_Vortex3,Location_Vortex4}
LOC_SStage = {Location_Stage1,Location_Stage2,Location_Stage3,Location_Stage4,Location_StageB2,Location_StageB1}
LOC_VStage = {Location_Stage1,Location_Stage2,Location_Stage3,Location_Stage4,Location_StageB1}
LOC_RStage = {Location_Raid1,Location_Raid2,Location_Raid3}
LOC_CStage = {Location_Colosseum1,Location_Colosseum2,Location_Colosseum3}

-- ==========  Patterns  ===========
PAT_Dungeon = {Pattern("World/GS_GSI_EarthShrine.png"),Pattern("World/GS_GSI_LatiusWoods.png"),Pattern("World/GS_GSI_OrdolPort.png")}
PAT_Land = {Pattern("World/GS_GrandsheltIsles.png"),Pattern("World/GS_Lanzelt.png"),Pattern("World/GS_KolobosIsle.png") }
PAT_Land_Banner = {Pattern("World/Banner_GS_GrandsheltIsles.png")}
PAT_World = {Pattern("World/World_Grandshelt.png"),Pattern("World/World_Dirnado.png"),Pattern("World/World_Olderion.png"),Pattern("World/World_Zoldaad.png"),Pattern("World/World_Mysidia.png")}

PAT_Expedition = {Pattern("Main/Expedition_3h.png"):similar(0.98),Pattern("Main/Expedition_8h.png"):similar(0.98),Pattern("Main/Expedition_12h.png"):similar(0.98),Pattern("Main/Expedition_1d.png"):similar(0.98),}
-- ===========  setting  ============
Settings:set("MinSimilarity", 0.8)
Settings:setCompareDimension(true, 600)
Settings:setScriptDimension(true, 600)
setImmersiveMode(true)

-- ==========  Main Variables  ===========
-- Count
RUN_TIME = 0 		-- Total Run Times
STRY_TIME = 0		-- Story Run Times
VORTEX_TIME = 0 	-- Vortex Run Times
RAID_TIME = 0 		-- Raid Event Run Times
ARENA_TIME = 0		-- Arena Run Times
ARENA_WINTIME = 0	-- Arena Win Times
ARENA_LOSTTIME = 0	-- Arena Lost Times
COLOSSEUM_TIME = 0  -- Colosseum Run Times

-- Global Variables
LAGX = 2
LOAD_TIME = LAGX*5

-- Recharge
NRG_BUYTIME = 0 	-- Lapis Recharge Times

-- Action Check
ACTION = "START"
NRG_CHECK = true
ORB_CHECK = true
SORB_CHECK = true
ITME_CHECK = true
EXP_CHECK = true
DAILYQUEST_CHECK = true

-- Timer
TIMER1 = Timer()	-- STEP Timer
TIMER2 = Timer()	-- stepCheck() Timer

-- Step Control
RETURN_STEP = 0
LAST_STEP = 0
NEXT_STEP = 0
TEMP_STEP = 0
STEP_REPEAT = 0
STEP_RECHECK = 3 -- Retry Step before stepCheck()

-- setBrightness(0)
-- ========== Main Menu  ===========
dialogInit()
addTextView(" ===============     Main Options     ===============")							newRow()
addTextView(" Use Energy: ") spinnerItems = {"Story","Vortex","No Use"}
addSpinner("NRG", spinnerItems, "Story")
addTextView(" Use Orbs: ") spinnerItems = {"Arena","Colosseum","No Use"}
addSpinner("ORB", spinnerItems, "Arena")														newRow()
addTextView(" Use Raid Orbs: ") spinnerItems = {"Raid Event","No Use"}
addSpinner("SORB", spinnerItems, "No Use")
addCheckBox("DAILY_QUEST", " Daily Quest", false)
addCheckBox("EXPEDITION", " Expedition", true)													newRow()
addCheckBox("PARTY_CHECK", "Auto Party", true)
addCheckBox("ITEM_SALE", " Sell Materials", true)
addCheckBox("DEBUG", "Debug Mode", false)														newRow()
addTextView(" Recharge Wait")	addEditNumber("WAIT_TIME",1800) addTextView("Seconds; ")
addTextView(" Lag Level")	addEditNumber("LAGX",2) 											newRow()
addTextView(" ==============     Story Options     ===============")	 						newRow()
addTextView(" Dungeon (World_Land_Dungeon_Stage): ")
addEditNumber("WORLD",1)
addEditNumber("LAND",1)
addEditNumber("DUNGEON",1)
addEditNumber("SSTAGE",3)																		newRow()
addTextView(" Recharge NRG: ")	addEditNumber("BUY",0)											newRow()
addCheckBox("S_ADV_BATTLE", "Advanced Battle ", false)
addCheckBox("S_QUICK_BATTLE", "Quick Battle ", true)											newRow()
addTextView(" Char1 Skill: ") addEditNumber("S_CHAR1SP",1) addEditNumber("S_CHAR1SK",0)
addCheckBox("S_CHAR1DC", "", false) addCheckBox("S_CHAR1IT", "", false)
addTextView(" Char4 Skill: ") addEditNumber("S_CHAR4SP",1) addEditNumber("S_CHAR4SK",0)
addCheckBox("S_CHAR4DC", "", false) addCheckBox("S_CHAR4IT", "", false)							newRow()
addTextView(" Char2 Skill: ") addEditNumber("S_CHAR2SP",1) addEditNumber("S_CHAR2SK",0)
addCheckBox("S_CHAR2DC", "", false) addCheckBox("S_CHAR2IT", "", false)
addTextView(" Char5 Skill: ") addEditNumber("S_CHAR5SP",1) addEditNumber("S_CHAR5SK",0)
addCheckBox("S_CHAR5DC", "", false) addCheckBox("S_CHAR5IT", "", false)							newRow()
addTextView(" Char3 Skill: ") addEditNumber("S_CHAR3SP",1) addEditNumber("S_CHAR3SK",0)
addCheckBox("S_CHAR3DC", "", false) addCheckBox("S_CHAR3IT", "", false)
addTextView(" Format: [Page][Skill][Dual Cast][Item]")											newRow()
addTextView(" ===============    Vortex Options    ===============") 							newRow()
addCheckBox("V_ADV_BATTLE", "Advanced Battle ", true)
addCheckBox("BONUS_FRD", "Bonus Friends", true)													newRow()
addTextView(" Vortex Banner") addEditNumber("VORTEX",1) addTextView("[1-4]")
addTextView(" Vortex Stage") addEditNumber("V_STAGE",1) addTextView("[1-5]")					newRow()
addTextView(" Char1 Skill: ") addEditNumber("V_CHAR1SP",1) addEditNumber("V_CHAR1SK",0)
addCheckBox("V_CHAR1DC", "", false) addCheckBox("V_CHAR1IT", "", false)
addTextView(" Char4 Skill: ") addEditNumber("V_CHAR4SP",1) addEditNumber("V_CHAR4SK",0)
addCheckBox("V_CHAR4DC", "", false) addCheckBox("V_CHAR4IT", "", false)							newRow()
addTextView(" Char2 Skill: ") addEditNumber("V_CHAR2SP",1) addEditNumber("V_CHAR2SK",0)
addCheckBox("V_CHAR2DC", "", false) addCheckBox("V_CHAR2IT", "", false)
addTextView(" Char5 Skill: ") addEditNumber("V_CHAR5SP",1) addEditNumber("V_CHAR5SK",0)
addCheckBox("V_CHAR5DC", "", false) addCheckBox("V_CHAR5IT", "", false)							newRow()
addTextView(" Char3 Skill: ") addEditNumber("V_CHAR3SP",1) addEditNumber("V_CHAR3SK",0)
addCheckBox("V_CHAR3DC", "", false) addCheckBox("V_CHAR3IT", "", false)
addTextView(" Format: [Page][Skill][Dual Cast][Item]")											newRow()
addTextView(" ===============     Arena Options    ===============")							newRow()
addCheckBox("A_ADV_BATTLE", "Advanced Battle ", true)
addCheckBox("ARENA_WEAK", "Pick bottom opponent", false)										newRow()
addTextView(" Char1 Skill: ") addEditNumber("A_CHAR1SP",1) addEditNumber("A_CHAR1SK",0)
addCheckBox("A_CHAR1DC", "", false) addCheckBox("A_CHAR1IT", "", false)
addTextView(" Char4 Skill: ") addEditNumber("A_CHAR4SP",1) addEditNumber("A_CHAR4SK",0)
addCheckBox("A_CHAR4DC", "", false) addCheckBox("A_CHAR4IT", "", false)							newRow()
addTextView(" Char2 Skill: ") addEditNumber("A_CHAR2SP",1) addEditNumber("A_CHAR2SK",0)
addCheckBox("A_CHAR2DC", "", false) addCheckBox("A_CHAR2IT", "", false)
addTextView(" Char5 Skill: ") addEditNumber("A_CHAR5SP",1) addEditNumber("A_CHAR5SK",0)
addCheckBox("A_CHAR5DC", "", false) addCheckBox("A_CHAR5IT", "", false)							newRow()
addTextView(" Char3 Skill: ") addEditNumber("A_CHAR3SP",1) addEditNumber("A_CHAR3SK",0)
addCheckBox("A_CHAR3DC", "", false) addCheckBox("A_CHAR3IT", "", false)
addTextView(" Format: [Page][Skill][Dual Cast][Item]")											newRow()
addTextView(" =============   Colosseum Options  ==============")								newRow()
addCheckBox("C_ADV_BATTLE", "Advanced Battle ", true)
addTextView(" Colosseum Round") addEditNumber("CROUND",1) addTextView("[1-3]")				 	newRow()
addTextView(" Char1 Skill: ") addEditNumber("C_CHAR1SP",1) addEditNumber("C_CHAR1SK",0)
addCheckBox("C_CHAR1DC", "", false) addCheckBox("C_CHAR1IT", "", false)
addTextView(" Char4 Skill: ") addEditNumber("C_CHAR4SP",1) addEditNumber("C_CHAR4SK",0)
addCheckBox("C_CHAR4DC", "", false) addCheckBox("C_CHAR4IT", "", false)							newRow()
addTextView(" Char2 Skill: ") addEditNumber("C_CHAR2SP",1) addEditNumber("C_CHAR2SK",0)
addCheckBox("C_CHAR2DC", "", false) addCheckBox("C_CHAR2IT", "", false)
addTextView(" Char5 Skill: ") addEditNumber("C_CHAR5SP",1) addEditNumber("C_CHAR5SK",0)
addCheckBox("C_CHAR5DC", "", false) addCheckBox("C_CHAR5IT", "", false)							newRow()
addTextView(" Char3 Skill: ") addEditNumber("C_CHAR3SP",1) addEditNumber("C_CHAR3SK",0)
addCheckBox("C_CHAR3DC", "", false) addCheckBox("C_CHAR3IT", "", false)
addTextView(" Format: [Page][Skill][Dual Cast][Item]")											newRow()
addTextView(" ==============   Raid Event Options =============")								newRow()
addTextView(" Vortex Banner") addEditNumber("RVORTEX",1) addTextView("[1-6]")
addTextView(" Vortex Stage") addEditNumber("R_STAGE",1) addTextView("[1-5]")					newRow()
addCheckBox("R_ADV_BATTLE", "Advanced Battle ", true)											newRow()
addTextView(" Char1 Skill: ") addEditNumber("R_CHAR1SP",1) addEditNumber("R_CHAR1SK",0)
addCheckBox("R_CHAR1DC", "", false) addCheckBox("R_CHAR1IT", "", false)
addTextView(" Char4 Skill: ") addEditNumber("R_CHAR4SP",1) addEditNumber("R_CHAR4SK",0)
addCheckBox("R_CHAR4DC", "", false) addCheckBox("R_CHAR4IT", "", false)							newRow()
addTextView(" Char2 Skill: ") addEditNumber("R_CHAR2SP",1) addEditNumber("R_CHAR2SK",0)
addCheckBox("R_CHAR2DC", "", false) addCheckBox("R_CHAR2IT", "", false)
addTextView(" Char5 Skill: ") addEditNumber("R_CHAR5SP",1) addEditNumber("R_CHAR5SK",0)
addCheckBox("R_CHAR5DC", "", false) addCheckBox("R_CHAR5IT", "", false)							newRow()
addTextView(" Char3 Skill: ") addEditNumber("R_CHAR3SP",1) addEditNumber("R_CHAR3SK",0)
addCheckBox("R_CHAR3DC", "", false) addCheckBox("R_CHAR3IT", "", false)
addTextView(" Format: [Page][Skill][Dual Cast][Item]")											newRow()
addTextView(" ===============     Debug Options   ===============")								newRow()
addTextView(" Debug STEP Jumper: ")	addEditNumber("STEP",1)										newRow()
addTextView(" Run Time Limit:")	addEditNumber("RUN_LIMIT",99999)								newRow()
addTextView(" Trace Mode:")	addEditNumber("TRACE_MODE",1)										newRow()
dialogShow("KBot v2.2.0".." - Main Menu - "..X.." × "..Y)

-- Set Trace Mode
if(TRACE_MODE == 1) then
	setDragDropStepCount(80)
	setDragDropStepInterval(10)
	setDragDropTiming(100,20)
elseif(TRACE_MODE == 2) then
	setDragDropStepCount(50)
	setDragDropStepInterval(1)
	setDragDropTiming(100,20)
elseif(TRACE_MODE == 3) then
	setDragDropStepCount(100)
	setDragDropStepInterval(0.1)
	setDragDropTiming(100,20)
elseif(TRACE_MODE == 4) then
	setDragDropStepCount(100)
	setDragDropStepInterval(10)
	setDragDropTiming(100,20)
end

-- =========== Main function set ============
function stepCheck()
	toast("STEP Check Started...")
	if(upperLowerLeft:exists("Battle/PopUp_NetworkError_ULL.png",0)) then							-- Catch Network Error
		lowerUpper:existsClick("Button/OK2.png")								wait(15)			return STEP
	elseif(upperLowerLeft:exists("Login/Login_LoginAgain_ULL.png",0)) then							-- Catch if stuck at Rules - Arena
		lowerUpper:existsClick("Button/OK2.png")								wait(1800)			return 1
	elseif(exists("Login/App_Ankulua.png") or exists("Login/App_FFBE.png")) then					-- Catch FFBE crash
		startApp("com.square_enix.android_googleplay.FFBEWW")										return 1
--	elseif(exists("Popup/ULR_Maintenance.png",0)) then												-- Catch Maintenance
--		lowerUpper:existsClick("Button/OK.png")														wait(3600)
--		startApp("com.square_enix.android_googleplay.FFBEWW")										return 1
	else																							-- Catch All
		print("STEP Check No Match. Kill APP...")
		NRG_CHECK = true
		ORB_CHECK = true
		SORB_CHECK = true
		ITME_CHECK = true
		EXP_CHECK = true
		killApp("com.square_enix.android_googleplay.FFBEWW")					wait(10)
		startApp("com.square_enix.android_googleplay.FFBEWW")					wait(30)			return 1
	end
end

function nextStep()
	if(STEP_REPEAT == 0) then
		LAST_STEP = STEP
	end
	STEP = STEP + 1
end

function battleResult()
	RUN_TIME = STRY_TIME + VORTEX_TIME + RAID_TIME + ARENA_TIME + COLOSSEUM_TIME
	print("Total:"..RUN_TIME.."; STR:"..STRY_TIME.."; VOR:"..VORTEX_TIME.."; RAID:"..RAID_TIME.."; ARENA:"..ARENA_TIME.."; COL:"..COLOSSEUM_TIME)
end

function writeLog(logText)
	file = io.open(LOG, "w")
	time = os.time()
	file:write(time.." STEP:"..STEP.." "..logText)
end

switch = {
	-- =========== 1 - 5 Home Functions ============
	-- Set Actions
	[1] = function()
		if(NRG == "No Use") then
			NRG_CHECK = false
		end
		if(ORB == "No Use") then
			ORB_CHECK = false
		end
		if(SORB == "No Use") then
			SORB_CHECK = false
		end
		if(EXPEDITION == false) then
			EXP_CHECK = false
		end
		if(DAILY_QUEST == false) then
			DAILYQUEST_CHECK = false
		end

		if(ITEM_CHECK == false) then
			ACTION = ITEMSALE
		elseif(DAILYQUEST_CHECK == true) then
			ACTION = "DAILY_QUEST"
		elseif(ORB_CHECK == true) then
			if(ORB == "Arena") then
				ACTION = "ARENA"
			elseif(ORB == "Colosseum") then
				ACTION = "COLOSSEUM"
			end
		elseif(SORB_CHECK == true) then
			ACTION = "RAIDEVENT"
		elseif(NRG_CHECK == true) then
			if(NRG == "Story") then
				ACTION = "STORY"
			elseif(NRG == "Vortex") then
				ACTION = "VORTEX"
			end
		elseif(EXP_CHECK == true) then
			ACTION = "EXPENDITION"
		elseif(NRG_CHECK == false and ORB_CHECK == false and SORB_CHECK == false and EXP_CHECK == false and DAILYQUEST_CHECK == false) then
			wait(WAIT_TIME)
			NRG_CHECK = true
			ORB_CHECK = true
			SORB_CHECK = true
			EXP_CHECK = true
			DAILYQUEST_CHECK = true
		end
		nextStep()
	end,

	-- Start Game
	[2] = function()
		-- Start: Auto-Protection Page
		if(upperLowerRight:exists("Main/PopUp_AutoProtect_ULR.png",0))	then
			existsClick("Button/No.png")
		-- Start: Home Page
		elseif(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",0)) then
			nextStep()
		-- Start: Home with Popup
		elseif(upperUpperRight:exists("Button/CloseReward_UUR.png",0)) then
			upperUpperRight:existsClick("Button/CloseReward_UUR.png")
		-- Start: Android
		elseif(exists("Login/App_Ankulua.png",0) or exists("Login/App_FFBE.png",0)) then
			startApp("com.square_enix.android_googleplay.FFBEWW")
			if(lowerLowerLeft:exists("Login/Login_StartPage_LLL.png",LOAD_TIME*10)) then
				STEP_REPEAT = 0
			end
		-- Start: Login Page
		elseif(lowerLowerLeft:exists("Login/Login_StartPage_LLL.png",0)) then
			click(Location_Login)
			if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",LOAD_TIME*10)) then
				STEP_REPEAT = 0
			end
		-- Start: In Battle - Story/Vortex/Raid
		elseif(upperLowerLeft:exists("Battle/PopUp_PlayMission_ULL.png",0)) then
			existsClick("Button/Yes.png")
			if(lowerLowerRight:exists("Battle/Battle_Menu_LLR.png",LOAD_TIME)) then
				lowerLowerRight:existsClick("Battle/Battle_Menu_LLR.png")
				if(NRG == "Story") then
					if(upperUpperLeft:exists("Battle/PopUp_EarthShrine_UUL.png",3)) then
						ACTION = "STORY"
					end
				elseif(NRG == "Story" and SORB == "Raid Event") then
					ACTION = "RAID"
				elseif(NRG == "Vortex") then
					ACTION = "VORTEX"
				end
				lowerLowerRight:existsClick("Battle/PopUp_Back_LLR.png")
				STEP = 35 -- Battle
			end
		-- Start: In Battle - Arena/Colosseum
		elseif(lowerLowerRight:existsClick("Battle/Battle_Menu_LLR.png")) then -- other battle (Arena)
			if(lowerLowerRight:exists("Battle/Battle_Menu_LLR.png",LOAD_TIME)) then
				lowerLowerRight:existsClick("Battle/Battle_Menu_LLR.png")
				if(upperUpper:exist("Battle/PopUp_Arena_UU.png",3)) then
					ACTION = "ARENA"
				end
				lowerLowerRight:existsClick("Battle/PopUp_Back_LLR.png")
				STEP = 35 -- Battle
			end
		-- Start: Before Battle - Arena
		elseif(lowerLowerLeft:exists("Arena/Before_Begin_LLL.png",0)) then
			ACTION = "ARENA"
			STEP = 15
		else
			wait(LOAD_TIME*3)
		end
	end,

	-- Home Actions
	[3] = function()
		if(ACTION == "STORY") then
			STEP = 6
		elseif(ACTION == "VORTEX" or ACTION == "RAIDEVENT") then
			STEP = 8
		elseif(ACTION == "ARENA" or ACTION == "COLOSSEUM") then
			STEP = 11
		elseif(ACTION == "EXPENDITION") then
			STEP = 41
		elseif(ACTION == "ITEMSALE") then
			STEP = 46
		elseif(ACTION == "DAILYQUEST") then
			STEP = 6
		end
	end,

	-- =========== 6 - 10 NRG Functions ============
	-- Home to Dungeons
	[6] = function()
		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",LOAD_TIME)) then
			lowerLower:existsClick("Main/HomeMid_World_LL.png")
		end

		if(upperUpperLeft:exists(PAT_Land_Banner[LAND],LOAD_TIME)) then
			nextStep()
		else
			TIMER2:set()
			while not(exists(PAT_World[WORLD])) do
				dragDrop(Location_Right,Location_Left)
				if(TIMER2:check() > 20) then
					break
				end
			end
			existsClick(PAT_World[WORLD],LOAD_TIME)
			if(exists(PAT_Land[LAND],LOAD_TIME)) then
				existsClick(PAT_Land[LAND])
			end
			if(upperUpperLeft:exists(PAT_Land_Banner[LAND],LOAD_TIME)) then
				nextStep()
			end
		end
	end,

	-- Story: Find Dungeon
	[7] = function()
		if(upperUpperLeft:exists(PAT_Land_Banner[LAND],LOAD_TIME)) then
			if not (exists(PAT_Dungeon[DUNGEON],3)) then
				dragDrop(Location_Left,Location_Right)
				existsClick(PAT_Dungeon[DUNGEON],3)
			else
				existsClick(PAT_Dungeon[DUNGEON],3)
			end
		end

		if(lowerUpperLeft:exists("Battle/Before_Stage_LUL.png",15)) then
			STEP = 31
		end
	end,

	-- Home to Vortex
	[8] = function()
		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",0)) then
			click(Location_Vortex)
		end

		if(upperUpperLeft:exists("Battle/Before_SelectVortext_UUL.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Vortex/Raid: Choose Banner
	[9] = function()
		if(upperUpperLeft:exists("Battle/Before_SelectVortext_UUL.png",0)) then
			if(ACTION == "VORTEX") then
				click(LOC_Vortex[VORTEX])
			elseif(ACTION == "RAIDEVENT") then
				click(LOC_Vortex[RVORTEX])
			end
		end

		if(upperUpperRight:exists("Battle/After_Home_UUR.png",LOAD_TIME)) then
			STEP = 31
		end
	end,

	-- Story/Vortex/RAID: Back to Home
	[10] = function()
		if(lowerUpperLeft:exists("Battle/Before_Stage_LUL.png",3)) then
			upperUpperRight:existsClick("Battle/After_Home_UUR.png")
		end

		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",LOAD_TIME)) then
			STEP = 1
		elseif(upperUpperRight:exists("Button/CloseReward_UUR.png",0)) then
			upperUpperRight:existsClick("Button/CloseReward_UUR.png")
			STEP = 1
		end
	end,

	-- =========== 16 - 20 Arena/Colosseum Functions ============
	-- Home to Arena/Colosseum
	[11] = function()
		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",0)) then
			lowerLower:existsClick("Main/HomeMid_Arena_LLL.png")
		end

		if(upperUpperLeft:exists("Arena/Before_Arena_UUL.png",LOAD_TIME)) then
			if(ACTION == "ARENA") then
				nextStep()
			elseif(ACTION == "COLOSSEUM") then
				STEP = 21
			end
		end
	end,

	-- Arena: Start
	[12] = function()
		if(upperUpperLeft:exists("Arena/Before_Arena_UUL.png",0)) then
			click(Location_Next)
		end

		if(upperUpperLeft:exists("Arena/Before_Rules_UUL.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Arena: Rules
	[13] = function()
		if(upperUpperLeft:exists("Arena/Before_Rules_UUL.png",0)) then
			click(Location_Next)
		end

		if(upperUpperLeft:exists("Arena/Before_Opponent_UUL.png",LOAD_TIME)) then
			nextStep()
		elseif(upperLowerLeft:exists("Arena/Before_NoOrbs_ULL.png",0)) then
			existsClick("Button/No.png")
			ORB_CHECK = false
			if(upperUpperLeft:exists("Arena/Before_Rules_UUL.png",3)) then
				STEP = 20
			end
		end
	end,

	-- Arena: Choose Opponent
	[14] = function()
		if(upperUpperLeft:exists("Arena/Before_Opponent_UUL.png",0)) then
			if(ARENA_WEAK == false) then
				click(Location_ArenaOpponentTop)
			elseif(ARENA_WEAK == true) then
				click(Location_ArenaOpponentBot)
			end
			if(upperLowerLeft:exists("Arena/Before_OpponentConfirm_ULL.png",3)) then
				existsClick("Button/Yes.png")
			end
		end

		if(lowerLowerLeft:exists("Arena/Before_Begin_LLL.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Arena: Click Begin
	[15] = function()
		if(lowerLowerLeft:exists("Arena/Before_Begin_LLL.png",0)) then
			wait(LAGX)
			click(Location_Next) -- Click Begin
		end

		if(lowerLowerLeft:exists("Battle/Battle_AutoOff_LLL.png",LOAD_TIME)) then
			STEP = 35
		elseif(upperLowerLeft:exists("Arena/Before_NoOrbs_ULL.png",0)) then
		--	click(Location_RechargeNo)
		--	ORB_CHECK = false
		--	if(lowerLowerRight:exists("Arena/LLR_Begin.png",15)) then
		--		STEP = 25 -- Back to Home
		--	end
		end
	end,

	-- Arena: Battle Result
	[16] = function()
		if(upperUpperRight:exists("Arena/After_Won_UUR.png",LOAD_TIME) or upperUpperRight:exists("Arena/After_Lost_UUR.png",0)) then
			TIMER2:set()
			while not(upperUpperLeft:exists("Arena/Before_Arena_UUL.png")) do
				click(Location_ArenaOK)
				lowerLower:existsClick("Button/OK.png")
				if(TIMER2:check() > 20) then
					if(upperLowerLeft:exists("Arena/After_Rewards_ULL.png",0)) then
						lowerUpper:existsClick("Button/OK.png")
					end
				end
			end
		end

		if(upperUpperLeft:exists("Arena/Before_Arena_UUL.png")) then
			STEP = 12
		end
	end,

	-- Arena: Back to Home
	[20] = function()
		if(upperUpperLeft:exists("Arena/Before_Rules_UUL.png",0)) then
			upperUpperLeft:existsClick("Button/Back.png")
		end

		if(upperUpperLeft:exists("Arena/Before_Arena_UUL.png",LOAD_TIME)) then
			upperUpperLeft:existsClick("Button/Back.png")
		end

		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",LOAD_TIME)) then
			STEP = 1
		elseif(upperUpperRight:exists("Button/CloseReward_UUR.png",0)) then
			upperUpperRight:existsClick("Button/CloseReward_UUR.png")
			STEP = 1
		end
	end,

	-- =========== 21 - 30 Colosseum Functions ============
	-- Colosseum: Click Colosseum Icon
	[21] = function()
		if(upperUpperLeft:exists("Arena/Before_Arena_UUL.png",0)) then
			upperUpperRight:existsClick("Arena/Before_ColosseumTop_UUR.png")
		end

		if(upperUpperLeft:exists("Arena/Before_ColosseumEnter_UUL.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Colosseum: Click Enter
	[22] = function()
		if(upperUpperLeft:exists("Arena/Before_ColosseumEnter_UUL.png",0)) then
			lowerLower:existsClick("Arena/Before_ColosseumEnter_LL.png")
			if(upperLowerLeft:exists("Arena/Before_NoOrbs_ULL.png",LAGX)) then
				existsClick("Button/No.png")
				ORB_CHECK = false
			end
		end

		if(upperUpperLeft:exists("Arena/Before_ColosseumEnter_UUL.png",LAGX)) then
			STEP = 30
		elseif(upperUpperRight:exists("Arena/Before_ColosseumRound_UUR.png",LAGX)) then -- Select Round Page
			STEP = 25
		elseif(upperUpperLeft:exists("Arena/Before_ColosseumGrade_UUL.png",LAGX)) then -- Select Grade Page
			nextStep()
		elseif(upperUpperRight:exists("Arena/Before_ColosseumRank_UUR.png",0) or upperUpperLeft:exists("Button/Back.png",0)) then -- Select Rank Page
			STEP = 24
		end
	end,

	-- Colosseum: Choose Grade
	[23] = function()
		if(upperUpperLeft:exists("Arena/Before_ColosseumGrade_UUL.png",0)) then
			click(LOC_CStage[1])
		end

		if(upperUpperRight:exists("Arena/Before_ColosseumRank_UUR.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Colosseum: Select Rank
	[24] = function()
		if(upperUpperRight:exists("Arena/Before_ColosseumRank_UUR.png",0) or upperUpperLeft:exists("Button/Back.png",0)) then -- Select Rank Page
			click(LOC_CStage[1])
		end

		if(upperUpperRight:exists("Arena/Before_ColosseumRound_UUR.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Colosseum: Select Round
	[25] = function()
		if(upperUpperRight:exists("Arena/Before_ColosseumRound_UUR.png",0)) then
			click(LOC_CStage[CROUND])
		end

		if(upperUpperRight:exists("Arena/Before_ColosseumRdyFight_UUR.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Colosseum: Click Fight
	[26] = function()
		if(upperUpperRight:exists("Arena/Before_ColosseumRdyFight_UUR.png",0)) then
			click(Location_Bottom) -- Click Fight
		end

		if(lowerLowerLeft:exists("Battle/Battle_AutoOff_LLL.png",LOAD_TIME)) then
			STEP = 35
		elseif(upperLowerLeft:exists("Arena/Before_NoOrbs_ULL.png",0)) then
			existsClick("Button/No.png")
			ORB_CHECK = false
			if(upperUpperRight:exists("Arena/Before_ColosseumRdyFight_UUR.png",3)) then
				STEP = 30
			end
		end
	end,

	-- Colosseum: After Battle
	[27] = function()
		if(upperUpperLeft:exists("Arena/After_ColosseumResult_UUL.png",LOAD_TIME)) then
			TIMER2:set()
			while not(upperUpperRight:exists("Arena/Before_ColosseumRound_UUR.png")) do
				click(Location_ArenaOK)
				if(TIMER2:check() > 15) then
					if(upperLowerLeft:exists("Arena/After_ColosseumClearRewards_ULL.png",0)) then
						lowerUpper:existsClick("Button/OK.png")
						if(upperLowerLeft:exists("Battle/PopUp_DailyQuest_ULL.png",0)) then
							DAILYQUEST = true
							lowerUpperLeft:existsClick("Battle/PopUp_DailyQuestClose_LUL.png") -- Close Daily Quest
						end
					elseif(upperLowerLeft:exists("Battle/PopUp_DailyQuest_ULL.png",0)) then
						DAILYQUEST = true
						lowerUpperLeft:existsClick("Battle/PopUp_DailyQuestClose_LUL.png") -- Close Daily Quest
					end
				end
			end
		end

		if(upperUpperRight:exists("Arena/Before_ColosseumRound_UUR.png",0)) then
			STEP = 25 -- Another Round
		end
	end,

	-- Colosseum: Back to Home
	[30] = function()
		if(upperUpperRight:exists("Arena/Before_ColosseumRdyFight_UUR.png",0) or upperUpperLeft:exists("Arena/Before_ColosseumEnter_UUL.png",0)) then
			lowerLowerLeft:existsClick("Main/HomeDown_Home_LLL.png")
		end

		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",LOAD_TIME)) then
			STEP = 1
		elseif(upperUpperRight:exists("Button/CloseReward_UUR.png",0)) then
			upperUpperRight:existsClick("Button/CloseReward_UUR.png")
			STEP = 1
		end
	end,

	-- =========== 31 - 40 Battle Functions ============
	-- Battle: Choose Stage
	[31] = function ()
		if(lowerUpperLeft:exists("Battle/Before_Stage_LUL.png",0)) then
			if(ACTION == "STORY") then
				click(LOC_SStage[SSTAGE])
			elseif(ACTION == "VORTEX") then
				click(LOC_VStage[V_STAGE])
			elseif(ACTION == "RAIDEVENT") then
				click(LOC_RStage[R_STAGE])
			end
		end

		if(upperLowerRight:exists("Battle/Before_CompletionReward_ULR.png",LOAD_TIME)) then
			nextStep()
		elseif(upperLowerRight:exists("Battle/Before_NoNRG_ULR.png",0)) then
			if(BUY > 0) then
				lowerUpperRight:existsClick("Battle/Before_BuyNRG_LUR.png")
				existsClick("Button/YesRed.png")
				BUY = BUY - 1
				BUY_TIME = BUY_TIME + 1
				print("Energy Rechared! Total Time: "..BUY_TIME)
				nextStep()
			elseif(BUY == 0) then
				existsClick("Button/Back.png")
				NRG_CHECK = false
				if(lowerUpperLeft:exists("Battle/Before_Stage_LUL.png",3)) then
					STEP = 10
				end
			end
		elseif(upperLowerRight:exists("Battle/Before_NoRaidOrb_ULR.png",0)) then
			existsClick("Button/No.png")
			SORB_CHECK = false
			if(lowerUpperLeft:exists("Battle/Before_Stage_LUL.png",3)) then
				STEP = 10
			end
		--elseif(upperLowerLeft:exists("Popup/ULL_MaterialsFull.png",0)) then
		--	existsClick("Items/LUL_Items.png")
		--	if(lowerUpperRight:exists("Items/LUL_Materials.png",15)) then
		--		ITEM_CHECK = false
		--		STEP = 51
		--	end
		end
	end,

	-- Before Battle: Completion/Achievement Reward
	[32] = function()
		if(upperLowerRight:exists("Battle/Before_CompletionReward_ULR.png",0)) then
			lowerLower:existsClick("Button/Next.png")
		end

		if(upperUpperLeft:exists("Battle/Before_SelectCompanion_UUL.png",15)) then
			nextStep()
		end
	end,

	-- Before Battle: Select Companion
	[33] = function()
		if(upperUpperLeft:exists("Battle/Before_SelectCompanion_UUL.png",5)) then
			if(ACTION == "VORTEX" and BONUS_FRD == true) then
				while(true) do
					if(left:exists("Battle/Before_BonusCompanion_UUL.png")) then
						left:existsClick("Battle/Before_BonusCompanion_UUL.png")
						break
					else
						dragDrop(Location_DD_CompanionDown, Location_DD_CompanionUp)
						if(lowerLowerLeft:exists("Battle/Before_NoCompanion_LLL.png")) then
							right:existsClick("Battle/Before_Companion_R.png")
							break
						end
					end
				end
			else
				right:existsClick("Battle/Before_Companion_R.png")
			end
		end

		if(lowerLower:exists("Battle/Before_Depart_LL.png",LOAD_TIME)) then
			nextStep()
		elseif(upperLowerLeft:exists("Battle/Before_CompanionUpdate_ULL.png",0)) then
			lowerUpper:existsClick("Button/OK.png") -- Click OK when companion data updated
			if(upperUpperLeft:exists("Battle/Before_SelectCompanion_UUL.png",LOAD_TIME)) then
				STEP = 33
			end
		end
	end,

	-- Before Battle: Select Party
	[34] = function()
		if(lowerLower:exists("Battle/Before_Depart_LL.png",0)) then
			if(PARTY_CHECK == false) then
				lowerLower:existsClick("Battle/Before_Depart_LL.png")
			elseif(PARTY_CHECK == true) then
				if(ACTION == "RAIDEVENT") then
					party = Pattern("Battle/Before_Party2_ULR.png"):similar(0.98)
				elseif(ACTION == "VORTEX") then
					party = Pattern("Battle/Before_Party3_ULR.png"):similar(0.98)
				elseif(ACTION == "STORY") then
					party = Pattern("Battle/Before_Party4_ULR.png"):similar(0.98)
				end
				for i = 0, 4 do
					if not(upperLowerRight:exists(party)) then
						click(Location_ChangeParty)
					else
						lowerLower:existsClick("Battle/Before_Depart_LL.png")
						break
					end
				end
			end
		end

		if(lowerLowerLeft:exists("Battle/Battle_AutoOff_LLL.png",15)) then
			nextStep()
		elseif(upperLowerLeft:exists("Battle/Before_CompanionUpdate_ULL.png",0)) then
			lowerUpper:existsClick("Button/OK.png") -- Click OK when companion data updated
			if(upperUpperLeft:exists("Battle/Before_SelectCompanion_UUL.png",LOAD_TIME)) then
				STEP = 33
			end
		end
	end,

	-- !!!Battle!!!
	[35] = function()
		-- ACTION = "ARENA" -- Test Battle Function with Arena Skills
		battleMode = auto
		if(ACTION == "STORY") then
			if(S_ADV_BATTLE == true) then
				battleMode = "adv"
				skillPage = {S_CHAR1SP,S_CHAR2SP,S_CHAR3SP,S_CHAR4SP,S_CHAR5SP}
				skillNumber = {S_CHAR1SK,S_CHAR2SK,S_CHAR3SK,S_CHAR4SK,S_CHAR5SK }
				dualCast = {S_CHAR1DC,S_CHAR2DC,S_CHAR3DC,S_CHAR4DC,S_CHAR5DC }
				item = {S_CHAR1IT,S_CHAR2IT,S_CHAR3IT,S_CHAR4IT,S_CHAR5IT,}
			elseif(S_QUICK_BATTLE == true) then
				battleMode = "quick"
			else
				battleMode = "auto"
			end
		elseif(ACTION == "VORTEX" and V_ADV_BATTLE == true) then
			battleMode = "adv"
			skillPage = {V_CHAR1SP,V_CHAR2SP,V_CHAR3SP,V_CHAR4SP,V_CHAR5SP}
			skillNumber = {V_CHAR1SK,V_CHAR2SK,V_CHAR3SK,V_CHAR4SK,V_CHAR5SK }
			dualCast = {V_CHAR1DC,V_CHAR2DC,V_CHAR3DC,V_CHAR4DC,V_CHAR5DC }
			item = {V_CHAR1IT,V_CHAR2IT,V_CHAR3IT,V_CHAR4IT,V_CHAR5IT}
		elseif(ACTION == "ARENA" and A_ADV_BATTLE == true) then
			battleMode = "adv"
			skillPage = {A_CHAR1SP,A_CHAR2SP,A_CHAR3SP,A_CHAR4SP,A_CHAR5SP}
			skillNumber = {A_CHAR1SK,A_CHAR2SK,A_CHAR3SK,A_CHAR4SK,A_CHAR5SK }
			dualCast = {A_CHAR1DC,A_CHAR2DC,A_CHAR3DC,A_CHAR4DC,A_CHAR5DC }
			item = {A_CHAR1IT,A_CHAR2IT,A_CHAR3IT,A_CHAR4IT,A_CHAR5IT}
		elseif(ACTION == "COLOSSEUM" and C_ADV_BATTLE == true) then
			battleMode = "adv"
			skillPage = {C_CHAR1SP,C_CHAR2SP,C_CHAR3SP,C_CHAR4SP,C_CHAR5SP}
			skillNumber = {C_CHAR1SK,C_CHAR2SK,C_CHAR3SK,C_CHAR4SK,C_CHAR5SK }
			dualCast = {C_CHAR1DC,C_CHAR2DC,C_CHAR3DC,C_CHAR4DC,C_CHAR5DC }
			item = {C_CHAR1IT,C_CHAR2IT,C_CHAR3IT,C_CHAR4IT,C_CHAR5IT}
		elseif(ACTION == "RAIDEVENT" and R_ADV_BATTLE == true) then
			battleMode = "adv"
			skillPage = {R_CHAR1SP,R_CHAR2SP,R_CHAR3SP,R_CHAR4SP,R_CHAR5SP}
			skillNumber = {R_CHAR1SK,R_CHAR2SK,R_CHAR3SK,R_CHAR4SK,R_CHAR5SK }
			dualCast = {R_CHAR1DC,R_CHAR2DC,R_CHAR3DC,R_CHAR4DC,R_CHAR5DC }
			item = {R_CHAR1IT,R_CHAR2IT,R_CHAR3IT,R_CHAR4IT,R_CHAR5IT}
		end

		if(lowerLowerLeft:exists("Battle/Battle_AutoOff_LLL.png",0)) then
			if(battleMode == "auto") then
				lowerLowerLeft:existsClick("Battle/Battle_AutoOff_LLL.png")
				lowerLowerLeft: waitVanish("Battle/Battle_AutoON_LLL.png",120)
			elseif(battleMode == "quick") then
				while(lowerLowerLeft:exists("Battle/Battle_AutoOff_LLL.png")) do
					click(LOC_CharL[1])
					click(LOC_CharL[2])
					wait(1)
				end
			elseif(battleMode == "adv" and lower:exists("Battle/Battle_Actionable_LUL.png",100)) then
				for i = 1, 5 do -- Go through Char 1 - Char 5
					if not(skillNumber[i] == 0) then -- If skill number is not 0
						if (item[i] == false) then
							dragDrop(LOC_CharL[i],LOC_CharR[i]) -- Open Skill
						elseif (item[i] == true) then
							dragDrop(LOC_CharR[i],LOC_CharL[i]) -- Open Item
						end
						if(lowerUpperRight:exists("Battle/PopUp_Back_LLR.png")) then -- If skill page open
							-- Find Dual Black Magic or Dual Cast Skills
							if(dualCast[i] == true) then
								click(Location_SPScrollDown)
								if(lower:exists("Battle/Skill_DualBlackMagic_L.png",0)) then
									lower:existsClick("Battle/Skill_DualBlackMagic_L.png")
								elseif(lower:exists("Battle/Skill_Dualcast_L.png",0)) then
									lower:existsClick("Battle/Skill_Dualcast_L.png")
								else -- if dualcast not found on last page, try 1 page up
									dragDrop(Location_SPUp,Location_SPDown)
									lower:existsClick("Battle/Skill_Dualcast_L.png")
									lower:existsClick("Battle/Skill_DualBlackMagic_L.png")
								end
								click(Locaiton_SPScrollUp)
							end

							-- Scroll Down Skill/Item page
							for j = 2, skillPage[i] do -- Scroll Down Skill/Item page
								before = lowerRight:find(Pattern("Battle/Skill_ScrollBar_LR.png"))
								--print(before:getCenter())
								dragDrop(Location_SPDown,Location_SPUp)
								after = lowerRight:find(Pattern("Battle/Skill_ScrollBar_LR.png"))
								--print(after:getCenter())
								if(before:getCenter() == after:getCenter()) then
									j = j - 1
								end
							end

							if(dualCast[i] == false or item[i] == true) then
								click(LOC_CharL[skillNumber[i]]) -- click Selected Skill
								wait(LAGX)
								if(lowerLowerRight:exists("Battle/PopUp_Back_LLR.png",LAGX)) then
									click(LOC_CharL[1]) -- click Char 1 if skill need target
									if(lowerUpperRight:exists("Battle/PopUp_Back_LLR.png",LAGX)) then
										lowerLowerRight:existsClick("Battle/PopUp_Back_LLR.png") -- if can not use selected skill
									end
								end
							elseif(dualCast[i] == true) then
								click(LOC_CharL[skillNumber[i]]) -- click Selected Skill
								wait(LAGX)
								if(lower:exists("Battle/Skill_1stDualCast_L.png",LAGX)) then
									click(LOC_CharL[skillNumber[i]]) -- click Selected Skill
									wait(LAGX)
								else
									click(LOC_CharL[1]) -- click Char 1 if skill need target
									if(lower:exists("Battle/Skill_1stDualCast_L.png",LAGX)) then
										click(LOC_CharL[skillNumber[i]]) -- click Selected Skill
										wait(LAGX)
										click(LOC_CharL[1])
									else
										lowerLowerRight:existsClick("Battle/PopUp_Back_LLR.png") -- if can not use selected skill
										lowerLowerRight:existsClick("Battle/PopUp_Back_LLR.png") -- if can not use selected skill
									end
								end
							end
						end
					end
				end
				-- Click Auto to act all chars
				lowerLowerLeft:existsClick("Battle/Battle_AutoOff_LLL.png")
				lowerLowerLeft:existsClick("Battle/Battle_AutoON_LLL.png")
				while(lowerLowerLeft:exists("Battle/Battle_AutoOff_LLL.png",3)) do
					lowerLowerLeft:existsClick("Battle/Battle_Repeat_LLL.png")
				end
			elseif(battleMode == "adv") then
				lowerLowerLeft:existsClick("Battle/Battle_AutoOff_LLL.png")
				lowerLowerLeft: waitVanish("Battle/Battle_AutoON_LLL.png",120)
			end
		end

		if(ACTION == "ARENA") then
			ARENA_TIME = ARENA_TIME + 1
			battleResult()
			STEP = 16 -- Arena Result
		elseif(ACTION == "COLOSSEUM") then
			COLOSSEUM_TIME = COLOSSEUM_TIME + 1
			battleResult()
			STEP = 27 -- Colosseum Result
		elseif(upperUpperLeft:exists("Main/HomeTop_NRG_UUL.png",LOAD_TIME)) then
			if(ACTION == "STORY") then
				STRY_TIME = STRY_TIME + 1
				battleResult()
			elseif(ACTION == "VORTEX") then
				VORTEX_TIME = VORTEX_TIME + 1
				battleResult()
			elseif(ACTION == "RAIDEVENT") then
				RAID_TIME = RAID_TIME +1
				battleResult()
			end
			nextStep()
		end
	end,

	-- After Battle
	[36] = function()
		if(upperUpperLeft:exists("Main/HomeTop_NRG_UUL.png",0)) then
			TIMER2:set()
			while not(upperUpperRight:exists("Battle/After_Home_UUR.png")) do
				click(Location_Next)
				if(TIMER2:check() > 10) then
					if(lowerUpperLeft:exists("Battle/After_NoFriend_LUL.png",0)) then
						lowerUpperLeft:existsClick("Battle/After_NoFriend_LUL.png") -- No Friend
					elseif(upperLowerLeft:exists("Battle/PopUp_DailyQuest_ULL.png",0)) then
						DAILYQUEST = true
						lowerUpperLeft:existsClick("Battle/PopUp_DailyQuestClose_LUL.png") -- Close Daily Quest
 					end
				end
			end
		end

		if(upperUpperRight:exists("Battle/After_Home_UUR.png")) then
			STEP = 31
		end
	end,

	-- =========== 41 - 45 Expedition Functions ============
	-- Home to Expeditions
	[41] = function()
		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",0)) then
			lowerLowerRight:existsClick("Main/HomeMid_Expedition_LLR.png")
		end

		if(upperUpperRight:exists("Main/Expedition_Main_UUR.png",LOAD_TIME)) then
			nextStep()
		end
	end,

	-- Expeditions: Collect Completed
	[42] = function()
		if(upperUpperRight:exists("Main/Expedition_Main_UUR.png",0)) then
			if(exists("Main/Expedition_Completed_R.png",0)) then
				completedExp = findAll("Main/Expedition_Completed_R.png",3)
				for i, m in ipairs(completedExp) do
					click(m)
					while not (upperUpperRight:exists("Main/Expedition_Main_UUR.png",0)) do
						click(Location_Next)
						wait(1)
					end
				end
			end
		end

		if not(exists("Main/Expedition_Completed_R.png",0)) then
			nextStep()
		elseif(upperUpperLeft:exists("Main/Expedition_New_UUL.png",0)) then
			nextStep()
		end
	end,

	-- Expeditions: Send Out New
	[43] = function()
		if(upperUpperLeft:exists("Main/Expedition_New_UUL.png",0)) then
			TIMER2:set()
			for i = 1, 4 do
				if(TIMER2:check() > 300) then
					break
				elseif(left:exists(PAT_Expedition[i])) then
					newExp = findAll(PAT_Expedition[i])
					for j, m in ipairs(newExp) do
						click(m)
						if(TIMER2:check() > 300) then
							break
						elseif(lowerLowerLeft:exists("Main/Expedition_AutoFill_LLL.png",LOAD_TIME)) then
							lowerLowerLeft:existsClick("Main/Expedition_AutoFill_LLL.png",LAGX)
							lowerLowerRight:existsClick("Main/Expedition_Depart_LLR.png",LAGX)
							lowerUpperRight:existsClick("Main/Expedition_UseItems_LUR.png",LAGX)
							lowerLower:existsClick("Main/Expedition_Depart_LL.png",LAGX)
							upperUpperRight:wait("Main/Expedition_Main_UUR.png",LOAD_TIME)
							if(upperUpperLeft:exists("Main/Expedition_Ongoing_UUL.png",0)) then
								upperUpperLeft:existsClick("Button/Back.png")
								EXP_CHECK = false
								i = 5
								break
							end
						elseif(upperLowerLeft:exists("Main/Expedition_Full_ULL.png",0)) then
							lowerUpperLeft:existsClick("Button/No.png")
							if(upperUpperLeft:exists("Main/Expedition_New_UUL.png",0)) then
								upperUpperLeft:existsClick("Button/Back.png")
								EXP_CHECK = false
								i = 5
								break
							end
						end
					end
				end
			end
		elseif(upperUpperLeft:exists("Main/Expedition_Ongoing_UUL.png",0)) then
			upperUpperLeft:existsClick("Button/Back.png")
			EXP_CHECK = false
		end

		if(lowerLowerLeft:exists("Main/HomeDown_Home_LLL.png",LOAD_TIME)) then
			STEP = 1
		elseif(upperUpperRight:exists("Button/CloseReward_UUR.png",0)) then
			upperUpperRight:existsClick("Button/CloseReward_UUR.png")
			STEP = 1
		end
	end,
}
-- ==========  main program ===========
repeat
	TEMP_STEP = STEP
	if(DEBUG == true) then
		print("Current Step: "..STEP.." Last Step: "..LAST_STEP)
		print("STEP: "..STEP.." , Loop: "..STEP_REPEAT.." , timer : "..TIMER1:check())
		toast("Current Step: "..STEP)
		TIMER1:set()
	end

	switch[STEP]()

	if(TEMP_STEP == STEP) then
		STEP_REPEAT = STEP_REPEAT + 1
		print("Step "..STEP.." repeated "..STEP_REPEAT.." time(s)")
		toast("Step "..STEP.." repeated "..STEP_REPEAT.." time(s)")
	else
		STEP_REPEAT = 0
	end

	if(STEP_REPEAT >= STEP_RECHECK) then
		STEP = stepCheck()
		STEP_REPEAT = 0
		print("Step Check Returned: "..STEP)
		toast("Step Check Returned: "..STEP)
	end
until RUN_TIME >= RUN_LIMIT