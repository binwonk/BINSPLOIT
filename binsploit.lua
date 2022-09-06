local ScriptVersion = "v1.0.01"

_G.ESPEnabled = false
_G.ChatSpam = false
_G.AutoClicker = false
_G.MouseToClick = false
_G.AutoClickerDelay = 0
_G.HitboxSize = 20
_G.HitboxColor = Color3.fromRGB(0, 0, 255)
_G.AntiAfk = false
_G.LagswitchStatus = false
_G.ROWizHoopAutofarm = false
_G.ROWizPotionAutofarm = false
_G.Noclip = false



-- THE CODE SUCKS I'LL FIX THAT SOON --
-- uses that stupid fucking orion thing or whatever its called github.com/shlexware/Orion/blob/main/Documentation.md ok bye --

local outlines = true
local outlinecoloring = Color3.fromRGB(255, 17, 0)
local outlinefill = true
local fillopacity = 0.7
local fillcoloring = Color3.fromRGB(255, 17, 0)
local players = game.Players
local nametags = true
local textfont = Enum.Font.RobotoMono
local namecolor = Color3.fromRGB(255, 255, 255)
local namepositioning = true

local ts = game:GetService("TeleportService")

local plr = game.Players.LocalPlayer

local CFRAME_SET = nil

local jumppowerused = true
local defaultJP = 50

local storage = {}
local folder = Instance.new("Folder", game:GetService("CoreGui"))
folder.Name = ""

local cdelay = 1
local chatmessage = "Want to raise your IQ by math.huge? Use Binsploit V4 today! Join the server at .gg/4PUwnJ46yj"

local vim = game:GetService("VirtualInputManager")
local uis = game:GetService("UserInputService")
local vu = game:GetService("VirtualUser")


local mouse = plr:GetMouse()


if game.PlaceId == 3082707367 then
_G.ROWizardSpells = require(game.ReplicatedStorage.Modules.Spell)

_G.ROWizardwands = {}

_G.ROWizardwandModule = require(game.ReplicatedStorage.Modules.Wand)

_G.ROWizardOutfits = {}

_G.ROWizardoutfitsModule = require(game.ReplicatedStorage.Modules.Outfits)

_G.ROWizardBrooms = {}

_G.ROWizardBroomModule = require(game.ReplicatedStorage.Modules.Broomstick)

for i,v in pairs(_G.ROWizardoutfitsModule.Outfits) do
	table.insert(_G.ROWizardOutfits, v.Name)
end

for i,v in pairs(_G.ROWizardwandModule.Wands) do
	table.insert(_G.ROWizardwands, v.Name)
end

for i,v in pairs(_G.ROWizardBroomModule.Brooms) do
	table.insert(_G.ROWizardBrooms, v.Name)
end
end

game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true

_G.plrCFrame = nil

local function addOutline(player)
	local Highlight = Instance.new("Highlight", folder)
	Highlight.OutlineColor = outlinecoloring
	Highlight.Adornee = player

	if outlinefill == true then
		Highlight.FillColor = fillcoloring
		Highlight.FillTransparency = fillopacity
	else
		Highlight.FillTransparency = 1
	end
end

local function AddNameTag(player)
end

game:GetService("Players").PlayerAdded:Connect(function(p)
	p.CharacterAdded:Connect(function(c)
		if _G.ESPEnabled == true then
		if outlines == true then
			addOutline(c)
		end
		if nametags == true then
			AddNameTag(c)
		end
	end
	end)
end)

if game.PlaceId == 2788229376 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/binwonk/BINSPLOIT/main/binsploit2.lua"))()
end

local function kickAttempt(Player, Reason)
    print("Kick Attempted for:", Reason)
end

local mt = getrawmetatable(game)
local old = mt.__namecall

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
  	local args = {...}
	local method = getnamecallmethod()
 
	if method == "Kick" or method == "kick" then
	kickAttempt(self, args[1])
    return
    end

    return old(self, ...)
end)
setreadonly(mt, true)

if game.PlaceId == 1962086868 then
	if game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("LocalScript2") then
		game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript2:Destroy()
	end
	if game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("LocalScript") then
		game:GetService("Players").LocalPlayer.PlayerScripts.LocalScript:Destroy()
	end
end

wait(0.1)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

loadstring(game:HttpGet("https://raw.githubusercontent.com/binwonk/BINSPLOIT/main/binsploitVersion.lua"))()
wait()
local currentVersion = _G.CurrentVersion
		if ScriptVersion == currentVersion then
			OrionLib:MakeNotification({
				Name = "Script Version",
				Content = "Script is up to date. Using " .. ScriptVersion,
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end
		if ScriptVersion ~= currentVersion then
			OrionLib:MakeNotification({
				Name = "Script Version",
				Content = "Script is outdated. Your version: " .. ScriptVersion .. ". Newest version: " .. currentVersion,
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end

OrionLib:MakeNotification({
	Name = "hi",
	Content = "omg welcome to best skidded rowizard cheat. Discord: discord.gg/4PUwnJ46yj",
	Image = "rbxassetid://4483345998",
	Time = 2
})

local BINSPLOIT = OrionLib:MakeWindow({Name = "BINSPLOIT V4", HidePremium = true, SaveConfig = true, ConfigFolder = "binwonksocool", IntroEnabled = false})

local Universal = BINSPLOIT:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Universal:AddButton({
	Name = "Rejoin",
	Callback = function()
			ts:Teleport(game.PlaceId, plr)
	end    
})

Universal:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 1024,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(ws)
		plr.Character.Humanoid.WalkSpeed = ws
	end    
})

Universal:AddTextbox({
	Name = "Custom Walkspeed",
	Default = "",
	TextDisappear = true,
	Callback = function(customws)
		plr.Character.Humanoid.WalkSpeed = customws
	end	  
})

Universal:AddSlider({
	Name = "Jumppower",
	Min = 0,
	Max = 1024,
	Default = defaultJP,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(jp)
		if jumppowerused == true then
			plr.Character.Humanoid.JumpPower = jp
		end
		if jumppowerused == false then
			plr.Character.Humanoid.JumpHeight = jp
		end
	end
})

Universal:AddTextbox({
	Name = "Custom Jumppower",
	Default = "",
	TextDisappear = true,
	Callback = function(customjp)
		if jumppowerused == true then
			plr.Character.Humanoid.JumpPower = customjp
		else
			plr.Character.Humanoid.JumpHeight = customjp
		end
	end
})

local ESPSection = Universal:AddSection({
	Name = "ESP"
})

ESPSection:AddButton({
	Name = "ESP (uses highlights) (sometimes doenst work)",
	Callback = function()
		_G.ESPEnabled = true
		for i,v in pairs(players:GetPlayers()) do
			if v ~= players.LocalPlayer then
				v.CharacterAdded:Connect(function(Character)
					if outlines == true then
						addOutline(Character)
					end
					if nametags == true then
						AddNameTag(Character)
					end
				end)
				if v.Character then
					if outlines == true then
						addOutline(v.Character)
					end
					if nametags == true then
						AddNameTag(v.Character)
					end
				end
			end
		end
	end
})

ESPSection:AddColorpicker({
	Name = "ESP Outline Colour (do this first)",
	Default = outlinecoloring,
	Callback = function(CIKIY)
		outlinecoloring = CIKIY
	end
})

ESPSection:AddColorpicker({
	Name = "ESP Fill Colour (do this first)",
	Default = fillcoloring,
	Callback = function(maongus)
		fillcoloring = maongus
	end
})

Universal:AddToggle({
	Name = "makes your screen blurry and shit",
	Default = false,
	Callback = function(blur)
		game:GetService("RunService"):SetRobloxGuiFocused(blur)
	end
})

Universal:AddButton({
	Name = "Infinite Jump (toggle later)",
	Callback = function()
		game:GetService("UserInputService").JumpRequest:connect(function()
			plr.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
		end)
	end
})

Universal:AddButton({
	Name = "Infinite Zoom",
	Callback = function()
		plr.CameraMaxZoomDistance = 1000000
	end
})

local function fullbright()
	while game:GetService("RunService").RenderStepped:wait() do
		game.Lighting.FogEnd = 1000000
		game:GetService("Lighting").ClockTime = 12
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
	end
end

Universal:AddButton({
	Name = "FullBright",
	Callback = function()
		fullbright()
	end
})

Universal:AddToggle({
	Name = "Freeze/Unfreeze Self",
	Default = false,
	Callback = function(freeze)
		plr.Character.HumanoidRootPart.Anchored = freeze
	end
})

Universal:AddTextbox({
	Name = "Chat Spam Message",
	Default = "Message Here",
	TextDisappear = true,
	Callback = function(msg)
		chatmessage = msg
		OrionLib:MakeNotification({
			Name = "Message Set",
			Content = "Message set to: " .. msg,
			Image = "rbxassetid://4483345998",
			Time = 2
		})
	end
})

Universal:AddTextbox({
	Name = "Chat Spam Delay",
	Default = "1",
	TextDisappear = true,
	Callback = function(spamDelay)
		cdelay = spamDelay
	end
})

local function chatSpamFunction()
while _G.ChatSpam do
	local args = {[1] = chatmessage, [2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	wait(cdelay)
end
end

Universal:AddToggle({
	Name = "Spam Chat",
	Default = false,
	Callback = function(spam)
		_G.ChatSpam = spam
		chatSpamFunction()
	end
})

local function autoclicker()
	while _G.AutoClicker do
		for i = 1, 2 do
		vim:SendMouseButtonEvent(mouse.X, mouse.Y, 0, i == 1, nil, 0)
		wait(_G.AutoClickerDelay)
		end
	end
end

local AutoClickerSection = Universal:AddSection({
	Name = "AutoClicker"
})

AutoClickerSection:AddButton({
	Name = "Switch Autoclicker Button",
	Callback = function()
		_G.MouseToClick = not _G.MouseToClick
		if _G.MouseToClick == true then
			OrionLib:MakeNotification({
				Name = "yes",
				Content = "mouse button to autoclick set to right click",
				Image = "rbxassetid://4483345998",
				Time = 1
			})
		else
			OrionLib:MakeNotification({
				Name = "yes",
				Content = "mouse button to autoclick set to left click",
				Image = "rbxassetid://4483345998",
				Time = 1
			})
		end
	end
})

AutoClickerSection:AddTextbox({
	Name = "AutoClicker Delay",
	Default = 0,
	TextDisappear = true,
	Callback = function(acDelay)
		_G.AutoClickerDelay = acDelay
	end
})

AutoClickerSection:AddBind({
	Name = "Autoclicker",
	Default = Enum.KeyCode.L,
	Hold = false,
	Callback = function()
		_G.AutoClicker = not _G.AutoClicker
		autoclicker()
		if _G.AutoClicker == true then
			OrionLib:MakeNotification({
				Name = "yes",
				Content = "AutoClicker is now on.",
				Image = "rbxassetid://4483345998",
				Time = 1
			})
		else
			OrionLib:MakeNotification({
				Name = "yes",
				Content = "AutoClicker is now off.",
				Image = "rbxassetid://4483345998",
				Time = 1
			})
		end
	end
})

local function addhitboxes()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= plr.Name then
			pcall(function()
			v.Character.HumanoidRootPart.Size = Vector3.new(_G.HitboxSize, _G.HitboxSize, _G.HitboxSize)
			v.Character.HumanoidRootPart.Transparency = 0.7
			v.Character.HumanoidRootPart.Color = _G.HitboxColor
			v.Character.HumanoidRootPart.Material = "Neon"
			v.Character.HumanoidRootPart.CanCollide = false
			end)
		end
	end
end
-- v3rmillion.net/showthread.php?tid=857618 for a little bit of the hitboxes XDDD
local function removehitboxes()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= plr.Name then
			pcall(function()
			v.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
			v.Character.HumanoidRootPart.Transparency = 1
			v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
			v.Character.HumanoidRootPart.Material = "Plastic"
			v.Character.HumanoidRootPart.CanCollide = true
			end)
		end
	end
end

local HitboxSection = Universal:AddSection({
	Name = "Hitboxes"
})

HitboxSection:AddToggle({
	Name = "Hitbox Extender",
	Default = false,
	Callback = function(hitboxes)
		if hitboxes == true then
			addhitboxes()
		else
			removehitboxes()
		end
	end
})

HitboxSection:AddColorpicker({
	Name = "Hitbox Colour",
	Default = Color3.fromRGB(0, 0, 255),
	Callback = function(colorpicked)
		_G.HitboxColor = colorpicked
	end	  
})

HitboxSection:AddSlider({
	Name = "Hitbox Size",
	Min = 3,
	Max = 200,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Size",
	Callback = function(hsize)
		_G.HitboxSize = hsize
	end    
})

game:GetService("Players").LocalPlayer.Idled:connect(function()
	if _G.AntiAfk == true then
	vu:Button2Down(Vector2.new(0,0), game:GetService("Workspace").CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0), game:GetService("Workspace").CurrentCamera.CFrame)
	end
end)

Universal:AddToggle({
	Name = "Anti-AFK",
	Default = false,
	Callback = function(antiafktoggle)
		_G.AntiAfk = antiafktoggle
	end
})

local function lagswitch()
	if _G.LagswitchStatus == true then
	settings().Network.IncomingReplicationLag = 10000
	else
	settings().Network.IncomingReplicationLag = 0
	end
end

Universal:AddToggle({
	Name = "Lagswitch",
	Default = false,
	Callback = function(lagswitchtoggle)
		_G.LagswitchStatus = lagswitchtoggle
		lagswitch()
	end,
})

Universal:AddBind({
	Name = "Lagswitch Keybind",
	Default = Enum.KeyCode.K,
	Hold = false,
	Callback = function()
		_G.LagswitchStatus = not _G.LagswitchStatus
		lagswitch()
	end
})

local GotoPlayer = ""

Universal:AddTextbox({
	Name = "Goto Player",
	Default = "",
	TextDisappear = true,
	Callback = function(PlayerGoto)
		for i,v in pairs(game.Players:GetChildren()) do
			if (string.sub(string.lower(v.Name), 1, string.len(PlayerGoto))) == string.lower(PlayerGoto) then
				GotoPlayer = v.Name
			end
		end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[GotoPlayer].Character.HumanoidRootPart.Position)
	end
})

Universal:AddButton({
	Name = "ChatSpy",
	Callback = function()
		local chatFrame = plr.PlayerGui.Chat.Frame
		chatFrame.ChatChannelParentFrame.Visible = true
	end
})

Universal:AddButton({
	Name = "Check Version",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/binwonk/BINSPLOIT/main/binsploitVersion.lua"))()
		wait()
		currentVersion = _G.CurrentVersion
		if ScriptVersion == currentVersion then
			OrionLib:MakeNotification({
				Name = "Script Version",
				Content = "Script is up to date. Using " .. ScriptVersion,
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end
		if ScriptVersion ~= currentVersion then
			OrionLib:MakeNotification({
				Name = "Script Version",
				Content = "Script is outdated. Your version: " .. ScriptVersion .. ". Newest version: " .. currentVersion,
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end
	end
})

Universal:AddButton({
	Name = "Get Latest Version",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/binwonk/BINSPLOIT/main/binsploit.lua", true))()
	end
})

local ROWizard = BINSPLOIT:MakeTab({
	Name = "RO-Wizard",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ROWizard:AddToggle({
	Name = "Hoop Autofarm (buggy)",
	Default = false,
	Callback = function(RoWizardHoopStatus)
		_G.ROWizHoopAutofarm = RoWizardHoopStatus
		while _G.ROWizHoopAutofarm == true do
			for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
				if v.Name == "Hoop" then
				firetouchinterest(plr.Character.HumanoidRootPart, v, 0)
				game:GetService("RunService").RenderStepped:wait()
				firetouchinterest(plr.Character.HumanoidRootPart, v, 1)
				wait()
				end
			end
		end
end})

ROWizard:AddToggle({
	Name = "Potion Autofarm (buggy)",
	Default = false,
	Callback = function(RoWizardPotionStatus)
		_G.ROWizPotionAutofarm = RoWizardPotionStatus
		while _G.ROWizPotionAutofarm == true do
			local args = {[1] = "Bottle", [2] = {[1] = {["Color"] = nil --[[Color3]],["MaxAmount"] = 5,["Name"] = "Filofia Mushroom",["Amount"] = 5},[2] = {} --[[DUPLICATE]],[3] = {["Color"] = nil --[[Color3]],["MaxAmount"] = 10,["Name"] = "Pumpkin Juice",["Amount"] = 7},[4] = {["Color"] = nil --[[Color3]],["MaxAmount"] = 5,["Name"] = "Honey",["Amount"] = 5}}}
			args[2][2] = args[2][1]
			game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
			wait(1)
		end
	end
})

ROWizard:AddDropdown({
	Name = "Select House",
	Default = "",
	Options = {"Ravens", "Badgers", "Lions", "Serpents"},
	Callback = function(house)
		CFRAME_SET = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local args = {
			[1] = "ChangeHouse",
			[2] = house
		}

		game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFRAME_SET
	end
})

ROWizard:AddButton({
	Name = "Mod Wand (BETTER THAN BLISSFUL)",
	Callback = function()
		for i,v in pairs(_G.ROWizardSpells.Spells) do
			v.MaxCharges = 10000
			v.Charges = 10000
			v.Range = 10000
			v.Safe = true
			v.ChargeCooldown = 0.01
			v.Cooldown = 0
			v.ShakeIntensity = 0
			end
			
		while wait() do
			for i,v in pairs(_G.ROWizardSpells.Spells) do
				if v.MaxCharges < 100 then
					v.MaxCharges = 10000
				end
				if v.Charges < 100 then
					v.Charges = 10000
				end
				if v.Safe == false then
					v.Safe = true
				end
				if v.Cooldown > 0 then
					v.Cooldown = 0
				end
				if v.ChargeCooldown > 0.02 then
					v.ChargeCooldown = 0.01
				end
				if v.ShakeIntensity > 0.1 then
					v.ShakeIntensity = 0
				end
			end
		end
	end
})

ROWizard:AddDropdown({
	Name = "Select Outfit",
	Default = "",
	Options = {"RobeUniform", "Usurper", "CommunitySlime", "InvisibilityCloak", "AgedWizard", "Alchemist", "ArcaneWarrior", "ArcaneWarrioress", "BallDress", "Befuddler", "Channeler", "Conjurer", "CoolRobe", "CrimsonLord", "CrimsonWitch", "DarkLord", "DarkRobes", "DeathDevourer", "Elegance", "Druid", "FlamboyantFraud", "FlightRobe", "Godfather", "IceQueen", "Incarcerous", "Influencer", "Inquisitor", "MadEye", "MagicSecurity", "MagicalEnforcer", "Magiologist", "Manipulator", "MercifulLord", "Merlin", "Ministry", "MrsWitch", "Oddball", "PrefectUniform", "Purple", "RedWizard", "ScarfUniform", "SchoolDefender", "SkirtUniform", "TragedyPrince", "Trickster", "VestUniform", "WisdomRobes", "WiseMentor", "WizardNobility"},
	Callback = function(outfit)
		local args = {
			[1] = "Equip",
			[2] = {
				["HouseColor"] = true,
				["Name"] = "School Uniform",
				["Owner"] = game:GetService("Players").LocalPlayer,
				["OutfitName"] = outfit,
				["Gems"] = 1,
				["Type"] = "Outfit",
				["Rarity"] = "Common"
			}
		}
		game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
	end
})

ROWizard:AddDropdown({
	Name = "Select Wand (requires wand to be purchased)",
	Default = "",
	Options = _G.ROWizardwands,
	Callback = function(freeWand)
		local args = {
			[1] = "Equip",
			[2] = {
				["Type"] = "Wand",
				["Rarity"] = "Common",
				["Gems"] = 1,
				["Owner"] = game:GetService("Players").LocalPlayer,
				["LastFired"] = {},
				["Name"] = freeWand,
				["Logs"] = {},
				["IdleAnimation"] = "WandIdle"
			}
		}
		game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
	end
})

ROWizard:AddDropdown({
	Name = "Teleports",
	Default = "",
	Options = {"Grand Hall", "Serpents", "Lions", "Badgers", "Ravens", "Library", "Potions", "Duelling Arena"},
	Callback = function(teleport)
		if teleport == "Grand Hall" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7.00000572, 3.30608892, -174.949982)
		end
		if teleport == "Serpents" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(349.369354, -58.8441048, 317.246582)
		end
		if teleport == "Lions" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(317.18457, 174.698257, -323.716461)
		end
		if teleport == "Badgers" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28.2390938, -148.428452, -229.102203)
		end
		if teleport == "Ravens" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(875.99054, 234.742966, -131.009552)
		end
		if teleport == "Library" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(902.627014, 8.80439758, -575.484863)
		end
		if teleport == "Potions" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(467.398132, -51.835537, 339.53595)
		end
		if teleport == "Duelling Arena" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-757.25238, -107.285576, -469.765472)
		end
	end
})

ROWizard:AddDropdown({
	Name = "Buy Wand (Requires 1 Gem)",
	Default = "",
	Options = _G.ROWizardwands,
	Callback = function(wand)
		local args = {
			[1] = "Buy",
			[2] = {
				["Data"] = {
					["Type"] = "Wand",
					["Rarity"] = "Common",
					["Gems"] = 1,
					["Owner"] = game:GetService("Players").LocalPlayer,
					["LastFired"] = {},
					["Name"] = wand,
					["Logs"] = {},
					["IdleAnimation"] = "WandIdle2"
				},
				["Type"] = "Gems"
			}
		}

		game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
	end
})

ROWizard:AddDropdown({
	Name = "Buy Outfit (Requires 1 gem)",
	Default = "",
	Options = _G.ROWizardOutfits,
	Callback = function(outfit)
		local args = {
			[1] = "Buy",
			[2] = {
				["Data"] = {
					["HouseColor"] = true,
					["Name"] = outfit,
					["Owner"] = game:GetService("Players").LocalPlayer,
					["OutfitName"] = "ScarfUniform",
					["Gems"] = 1,
					["Type"] = "Outfit",
					["Rarity"] = "Common"
				},
				["Type"] = "Gems"
			}
		}
		game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
	end
})

ROWizard:AddDropdown({
	Name = "Buy Broom (Requires 1 Gem)",
	Default = "",
	Options = _G.ROWizardBrooms,
	Callback = function(broom)
		local args = {
			[1] = "Buy",
			[2] = {
				["Data"] = {
					["Type"] = "Broom",
					["Rarity"] = "Rare",
					["Active"] = true,
					["Gems"] = 1,
					["Handling"] = 20,
					["Name"] = broom,
					["Speed"] = 120,
					["Points"] = 200,
					["Owner"] = game:GetService("Players").LocalPlayer
				},
				["Type"] = "Gems"
			}
		}
		game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
	end
})

local targetplr = ""

ROWizard:AddTextbox({
	Name = "Kill Player",
	Default = "",
	TextDisappear = true,
	Callback = function(KillPlayer)
		for i,v in pairs(game.Players:GetChildren()) do
			if (string.sub(string.lower(v.Name), 1, string.len(KillPlayer))) == string.lower(KillPlayer) then
				targetplr = v.Name
			end
		end
		for i = 1,6 do
			local args = {
				[1] = "HandleDamage",
				[2] = {
					["Character"] = game:GetService("Players")[targetplr].Character,
					["Hit"] = game:GetService("Players")[targetplr].Character.LeftHand,
					["Type"] = "Normal",
					["Norm"] = Vector3.new(0.7755845785140991, 0.035323500633239746, -0.6302545070648193),
					["Pos"] = Vector3.new(-731.4620971679688, -108.57284545898438, -495.60650634765625),
					["SpellName"] = "stupefy"
				}
			}
			game:GetService("ReplicatedStorage").Modules.Network.RemoteEvent:FireServer(unpack(args))
		end
	end
})

local TOH = BINSPLOIT:MakeTab({
	Name = "Tower of Hell",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TOH:AddButton({
	Name = "TP To Finish",
	Callback = function()
		plr.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes:GetChildren()[1].CFrame
	end
})

TOH:AddButton({
	Name = "Delete Kill Parts",
	Callback = function()
		for i,v in pairs(game:GetService("Workspace").tower:GetDescendants()) do
			if v:IsA("BoolValue") and v.Name == "kills" then
				v.Parent:Destroy()
			end
		end
	end
})


local OtherScripts = BINSPLOIT:MakeTab({
	Name = "Other Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OtherScripts:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end
})

OrionLib:Init()
