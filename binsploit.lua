local ScriptVersion = "v1.0.05"

_G.ESPEnabled = false
_G.ChatSpam = false
_G.AutoClicker = false
_G.MouseToClick = false
_G.AutoClickerDelay = 0
_G.HitboxSize = 5
_G.Hitboxes = false
_G.HitboxColor = Color3.fromRGB(0, 0, 255)
_G.AntiAfk = false
_G.LagswitchStatus = false
_G.ROWizHoopAutofarm = false
_G.ROWizPotionAutofarm = false
_G.Noclip = false
_G.InfiniteJump = false
_G.AntiKick = false



-- THE CODE SUCKS I'LL FIX THAT SOON --
-- uses that stupid fucking orion thing or whatever its called github.com/shlexware/Orion/blob/main/Documentation.md ok bye --

local outlines = true
local outlinecoloring = Color3.fromRGB(255, 17, 0)
local outlinefill = true
local fillopacity = 0.7
local fillcoloring = Color3.fromRGB(255, 17, 0)
local nametags = true
local textfont = Enum.Font.RobotoMono
local namecolor = Color3.fromRGB(255, 255, 255)
local namepositioning = true

local ts = game:GetService("TeleportService")

local players = game:GetService("Players")
local plr = game.Players.LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid

local rs = game:GetService("RunService")

local CFRAME_SET = nil

local jumppowerused = true
local defaultJP = 50

local storage = {}
local folder = Instance.new("Folder", game:GetService("CoreGui"))
folder.Name = ""

local cdelay = 1
local chatmessages = {"Use Binsploit V4 today! // .gg/4PUwnJ46yj", "Did you know Binsploit V4 raises your IQ by math.huge? // .gg/4PUwnJ46yj", "This message has been hacked by Binsploit V4 // .gg/4PUwnJ46yj"}
local chatmessage1 = math.random(1, #chatmessages)
local chatmessage = chatmessages[chatmessage1]

local vim = game:GetService("VirtualInputManager")
local uis = game:GetService("UserInputService")
local vu = game:GetService("VirtualUser")

local inc = {Unlocked = false, Id = 4}

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

		ROWizardShake = require(game.ReplicatedStorage.Modules.CameraShaker)

		ROWizardRequire = require(game:GetService("ReplicatedStorage").Modules.PlayerData)
end

if game.PlaceId ~= 286090429 then
	game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
else
	game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = false
end

_G.plrCFrame = nil

local function updateESP(player)
    if _G.ESPEnabled == true then
    local Highlight = Instance.new("Highlight", folder)
	Highlight.OutlineColor = outlinecoloring
	Highlight.Adornee = player
	if outlinefill == true then
		Highlight.FillColor = fillcoloring
		Highlight.FillTransparency = fillopacity
	else
		Highlight.FillTransparency = 1
	end
	else
		for i,v in pairs(folder:GetChildren()) do
			v:Destroy()
		end
	end
end

game:GetService("Players").PlayerAdded:Connect(function(p)
	p.CharacterAdded:Connect(function(c)
		updateESP(c)
	end)
end)

if game.PlaceId == 2788229376 then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/binwonk/BINSPLOIT/main/binsploit2.lua"))()
end

if game.PlaceId == 286090429 then
	defaultJP = 3.2
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
	
	if _G.AntiKick == true then
	if method == "Kick" or method == "kick" then
	kickAttempt(self, args[1])
    return
    end
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

local function presskey(key)
    vim:SendKeyEvent(true, key, false, game)
end

local function releasekey(key)
    vim:SendKeyEvent(false, key, false, game)
end

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

if game.PlaceId ~= 286090429 then
Universal:AddTextbox({
	Name = "Custom Jumppower",
	Default = "",
	TextDisappear = true,
	Callback = function(customjp)
		if game.PlaceId == 286090429 then
		if jumppowerused == true then
			plr.Character.Humanoid.JumpPower = customjp
		else
			plr.Character.Humanoid.JumpHeight = customjp
		end
	end

	end
})
end

local ESPSection = Universal:AddSection({
	Name = "ESP"
})

ESPSection:AddToggle({
	Name = "ESP (uses highlights) (sometimes doenst work)",
	Default = false,
	Callback = function(ESP)
		_G.ESPEnabled = ESP
		for i,v in pairs(players:GetPlayers()) do
			if v ~= players.LocalPlayer then
				v.CharacterAdded:Connect(function(Character)
					updateESP(Character)
				end)
				if v.Character then
					updateESP(v.Character)
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

mouse.KeyDown:Connect(function(Key)
	if _G.InfiniteJump == true and Key == " " then
		players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
	end
end)

Universal:AddToggle({
	Name = "Infinite Jump",
	Default = false,
	Callback = function(infjump)
		_G.InfiniteJump = infjump
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

Universal:AddButton({
	Name = "Client-Sided BTools",
	Callback = function()
		local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
		local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
		local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
		local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
		local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
		tool1.BinType = "Clone"
		tool2.BinType = "GameTool"
		tool3.BinType = "Hammer"
		tool4.BinType = "Script"
		tool5.BinType = "Grab"
	end
})

Universal:AddButton({
	Name = "Ball (skidded)",
	Callback = function()
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
        local Camera = workspace.CurrentCamera
                
        local SPEED_MULTIPLIER = 30
        local JUMP_POWER = 60
        local JUMP_GAP = 0.3
                
        local character = game.Players.LocalPlayer.Character
        
        for i,v in ipairs(character:GetDescendants()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end
        end
        
        local ball = character.HumanoidRootPart
        ball.Shape = Enum.PartType.Ball
        ball.Size = Vector3.new(5,5,5)
        local humanoid = character:WaitForChild("Humanoid")
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Blacklist
        params.FilterDescendantsInstances = {character}
        
        local tc = RunService.RenderStepped:Connect(function(delta)
        ball.CanCollide = true
        humanoid.PlatformStand = true
        if UserInputService:GetFocusedTextBox() then return end
        if UserInputService:IsKeyDown("W") then
        ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
        end
        if UserInputService:IsKeyDown("A") then
        ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
        end
        if UserInputService:IsKeyDown("S") then
        ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER
        end
        if UserInputService:IsKeyDown("D") then
        ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER
        end
        --ball.RotVelocity = ball.RotVelocity - Vector3.new(0,ball.RotVelocity.Y/50,0)
        end)
               
        UserInputService.JumpRequest:Connect(function()
        local result = workspace:Raycast(
        ball.Position,
        Vector3.new(
        0,
        -((ball.Size.Y/2)+JUMP_GAP),
        0
        ),
        params
        )
        if result then
        ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)
        end
        end)
        
        Camera.CameraSubject = ball
        humanoid.Died:Connect(function() tc:Disconnect() end)
	end
})

local function clipno()
	while _G.Noclip do
		for i,v in pairs(plr.Character:GetDescendants()) do
			pcall(function()
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end)
		end
		game:GetService("RunService").Stepped:wait()
	end
end


Universal:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(noclip)
		_G.Noclip = noclip
		clipno()
	end
})

_G.Speed = 5

Universal:AddToggle({
	Name = "Fly (skidded)",
	Default = false,
	Callback = function(flystatus)
		getgenv().Fly = flystatus
		local Max = 0
		local Players = game:GetService("Players")
		local LP = Players.LocalPlayer
		local Mouse = LP:GetMouse()
		Max = Max + 1
		if Fly then
		local T =
			LP.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R6 and
			LP.Character:FindFirstChild("HumanoidRootPart") or
			LP.Character:FindFirstChildWhichIsA("Humanoid").RigType == Enum.HumanoidRigType.R15 and
				LP.Character:FindFirstChild("UpperTorso")
		local S = {
			F = 0,
			B = 0,
			L = 0,
			R = 0
		}
		local S2 = {
			F = 0,
			B = 0,
			L = 0,
			R = 0
		}
		local SPEED = _G.Speed
		local function FLY()
			local BodyGyro = Instance.new("BodyGyro", T)
			local BodyVelocity = Instance.new("BodyVelocity", T)
			BodyGyro.P = 9e4
			BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BodyGyro.cframe = T.CFrame
			BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
			BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(
				function()
					repeat
						wait()
						LP.Character.Humanoid.PlatformStand = true
						if S.L + S.R ~= 0 or S.F + S.B ~= 0 then
							SPEED = _G.Speed + 100
						elseif not (S.L + S.R ~= 0 or S.F + S.B ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (S.L + S.R) ~= 0 or (S.F + S.B) ~= 0 then
							BodyVelocity.velocity =
								((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (S.F + S.B)) +
								((game:GetService("Workspace").CurrentCamera.CoordinateFrame *
									CFrame.new(S.L + S.R, (S.F + S.B) * 0.2, 0).p) -
									game:GetService("Workspace").CurrentCamera.CoordinateFrame.p)) *
								SPEED
							S2 = {
								F = S.F,
								B = S.B,
								L = S.L,
								R = S.R
							}
						elseif (S.L + S.R) == 0 and (S.F + S.B) == 0 and SPEED ~= 0 then
							BodyVelocity.velocity =
								((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (S2.F + S2.B)) +
								((game:GetService("Workspace").CurrentCamera.CoordinateFrame *
									CFrame.new(S2.L + S2.R, (S2.F + S2.B) * 0.2, 0).p) -
									game:GetService("Workspace").CurrentCamera.CoordinateFrame.p)) *
								SPEED
						else
							BodyVelocity.velocity = Vector3.new(0, 0.1, 0)
						end
						BodyGyro.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame
					until not Fly
					S = {
						F = 0,
						B = 0,
						L = 0,
						R = 0
					}
					S2 = {
						F = 0,
						B = 0,
						L = 0,
						R = 0
					}
					SPEED = 0
					BodyGyro:destroy()
					BodyVelocity:destroy()
					LP.Character.Humanoid.PlatformStand = false
				end
			)
		end
		Mouse.KeyDown:connect(
			function(k)
				if k:lower() == "w" then
					S.F = 1
				elseif k:lower() == "s" then
					S.B = -1
				elseif k:lower() == "a" then
					S.L = -1
				elseif k:lower() == "d" then
					S.R = 1
				end
			end
		)
		Mouse.KeyUp:connect(
			function(k)
				if k:lower() == "w" then
					S.F = 0
				elseif k:lower() == "s" then
					S.B = 0
				elseif k:lower() == "a" then
					S.L = 0
				elseif k:lower() == "d" then
					S.R = 0
				end
			end
		)
		if Fly then
			FLY()
		end
		if not Fly then
			FLY()
		end
		if Max == 2 then
			Fly = false
			Max = 0
		end
		end
	end
})

Universal:AddSlider({
	Name = "Fly Speed",
	Min = 0,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(fs)
		_G.Speed = fs
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

chatmessage = chatmessages[chatmessage1]

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
	if game.PlaceId ~= 286090429 then
	local args = {[1] = chatmessage, [2] = "All"}
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
	wait(cdelay)
	else
		local args = {
			[1] = "Hah!",
			[2] = chatmessage,
			[3] = false,
			[5] = false,
			[6] = true
		}
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(args))
		wait(cdelay)
	end
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

local function addhitbox(player)
	if _G.Hitboxes == true then
		if player.Name ~= plr.Name then
			pcall(function()
			player.Character.HumanoidRootPart.Size = Vector3.new(_G.HitboxSize, _G.HitboxSize, _G.HitboxSize)
			player.Character.HumanoidRootPart.Transparency = 0.7
			player.Character.HumanoidRootPart.Color = _G.HitboxColor
			player.Character.HumanoidRootPart.Material = "Neon"
			player.Character.HumanoidRootPart.CanCollide = false
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

if game.PlaceId == 286090429 then
	originalSizes = {LowerTorso=plr.Character.LowerTorso.Size,HumanoidRootPart=plr.Character.HumanoidRootPart.Size,HeadHB=plr.Character.HeadHB.Size}
else
	originalSizes = {HumanoidRootPart=plr.Character.HumanoidRootPart.Size}
end

local isVisible = true

if isVisible then
	isVisible = 0.7
else
	isVisible = 1
end

local bighead = true -- im lazy so arsenal hitboxes are skidded lol

function hitboxupdate(player)
	if not player or not player.Character then return end
	if game.PlaceId == 286090429 then
		if _G.Hitboxes and player ~= plr and player.Status.Team.Value ~= plr.Status.Team.Value then
			--[[ if bighead ~= true then
				player.Character.LowerTorso.Size = Vector3.new(_G.HitboxSize,_G.HitboxSize,_G.HitboxSize)
				player.Character.LowerTorso.Transparency = isVisible
			else
				print("hi")
			end ]]
			--[[ player.Character.HumanoidRootPart.Size = Vector3.new(size,size,size)
			player.Character.HumanoidRootPart.Transparency = isVisible ]]
		else
			--[[ player.Character.LowerTorso.Size = originalSizes.LowerTorso
			player.Character.HumanoidRootPart.Size = originalSizes.HumanoidRootPart ]]
		end
else
	if _G.Hitboxes and player ~= plr and (player.Character:FindFirstChild("HumanoidRootPart") or player.Character:WaitForChild("HumanoidRootPart")) then
		player.Character.HumanoidRootPart.Size = Vector3.new(_G.HitboxSize, _G.HitboxSize, _G.HitboxSize)
		player.Character.HumanoidRootPart.Transparency = 0.7
		player.Character.HumanoidRootPart.Color = _G.HitboxColor
		player.Character.HumanoidRootPart.Material = "Neon"
		player.Character.HumanoidRootPart.CanCollide = false
	else
		if player ~= plr and (player.Character:WaitForChild("HumanoidRootPart") or player.Character:FindFirstChild("HumanoidRootPart")) then
		player.Character.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
		player.Character.HumanoidRootPart.Transparency = 1
		player.Character.HumanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
		player.Character.HumanoidRootPart.Material = "Plastic"
		player.Character.HumanoidRootPart.CanCollide = true
		end
	end
end
end


function onjoin(player)
	if player then player = game.Players[player.Name] else return end
	if game.PlaceId == 286090429 then
	player.Status.Team:GetPropertyChangedSignal("Value"):Connect(function()
		hitboxupdate(player)
	end)
	hitboxupdate(player)
else
	hitboxupdate(player)
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
			_G.Hitboxes = true
			for i,v in pairs(game:GetService("Players"):GetChildren()) do
				if game.PlaceId == 286090429 then
				v.Status.Team:GetPropertyChangedSignal("Value"):Connect(function()
					if v == game.Players.LocalPlayer then
						for x,b in pairs(game:GetService("Players"):GetChildren()) do
							if b ~= game.Players.LocalPlayer then
								hitboxupdate(b)
							end
						end
					else
						hitboxupdate(v)
					end
				end)
				if v ~= game.Players.LocalPlayer then
					hitboxupdate(v)
				end
			else
				if v ~= game.Players.LocalPlayer then
					hitboxupdate(v)
				end
			end
		end
		else
			_G.Hitboxes = false
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
	Default = 5,
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
			elseif (string.sub(string.lower(v.DisplayName), 1, string.len(PlayerGoto))) == string.lower(PlayerGoto) then
				GotoPlayer = v.Name
			end
		end
		plr.Character.HumanoidRootPart.CFrame = game.Players[GotoPlayer].Character.HumanoidRootPart.CFrame
	end
})

Universal:AddButton({
	Name = "ChatSpy",
	Callback = function()
		local chatFrame = plr.PlayerGui.Chat.Frame
		chatFrame.ChatChannelParentFrame.Visible = true
	end
})

local bp = nil
local cam = game:GetService("Workspace").CurrentCamera
local mouse = plr:GetMouse()
		_G.teams = false
		local function WTSP(object)
			local objectvector = cam:WorldToScreenPoint(object.Position)
			return Vector2.new(objectvector.X, objectvector.Y)
		end		
		local function postoray(origin, target)
			return Ray.new(origin, (target - origin).Unit * 600)
		end
		local function filter(object)
			if string.find(object.Name, "Gun") then
				return
			end
			if object:IsA("Part") or object:IsA("MeshPart") then
				return true
			end
		end
		local function mousepostovector2()
			return Vector2.new(mouse.X, mouse.Y)
		end
		local function isonscreen(object)
			local isonscreen = cam:WorldToScreenPoint(object.Position)
			return isonscreen
		end
		
		local function getclosestbodypartfromcursor()
			local closestdistance = math.huge
			for i,v in next, players:GetPlayers() do
				if _G.teams == true then
				if v ~= plr and v.Team ~= plr.Team and v.Character and v.Character:FindFirstChild("Humanoid") then
					for x, d in next, v.Character:GetChildren() do
						if filter(d) and isonscreen(d) then
							local distance = (WTSP(d) - mousepostovector2()).Magnitude
							if distance < closestdistance then
								closestdistance = distance
								bp = d
							end
						end
					end
				end
			elseif _G.teams == false then
				if v ~= plr and v.Character and v.Character:FindFirstChild("Humanoid") then
					for x, d in next, v.Character:GetChildren() do
						if filter(d) and isonscreen(d) then
							local distance = (WTSP(d) - mousepostovector2()).Magnitude
							if distance < closestdistance then
								closestdistance = distance
								bp = d
							end
						end
					end
				end
			end
		end
		end
		
		local oldnamecall;
		oldnamecall = hookmetamethod(game, "__namecall", function(Self, ...)
			local Method = getnamecallmethod()
			local Args = {...}
			if Method == "FindPartOnRayWithIgnoreList" and bp ~= nil then
				Args[1] = postoray(cam.CFrame.Position, bp.Position)
				return oldnamecall(Self, unpack(Args))
			end
			return oldnamecall(Self, ...)
		end)

Universal:AddButton({
	Name = "Univesal Silent Aim",
	Callback = function()
		rs:BindToRenderStep("binwonk silent aim", 120, getclosestbodypartfromcursor)
	end
})

Universal:AddToggle({
	Name = "Silent Aim Teams Toggle",
	Default = false,
	Callback = function(toggle)
		_G.teams = toggle
	end
})

Universal:AddTextbox({
	Name = "View Player",
	Default = "",
	TextDisappear = true,
	Callback = function(playerToView)
		for i,v in pairs(game.Players:GetChildren()) do
			if (string.sub(string.lower(v.Name), 1, string.len(playerToView))) == string.lower(playerToView) then
				playerToView = v.Name
			elseif (string.sub(string.lower(v.DisplayName), 1, string.len(playerToView))) == string.lower(playerToView) then
				playerToView = v.Name
			end
		end
			game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players[playerToView].Character.Humanoid
		end
})

Universal:AddButton({
	Name = "Unview",
	Callback = function()
		game:GetService("Workspace").CurrentCamera.CameraSubject = plr.Character.Humanoid
	end
})

Universal:AddSlider({
	Name = "Field Of View",
	Min = 1,
	Max = 120,
	Default = 70,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(fovamount)
		game:GetService("Workspace").Camera.FieldOfView = fovamount
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
		loadstring(game:HttpGet("https://raw.githubusercontent.com/binwonk/BINSPLOIT/main/binsploit.lua"))()
	end
})

Universal:AddButton({
	Name = "Join Discord (sets clipboard to discord invite)",
	Callback = function()
		setclipboard("https://discord.gg/4PUwnJ46yj")
		OrionLib:MakeNotification({
			Name = "yes",
			Content = "Copied server invite!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})



local ROWizard = BINSPLOIT:MakeTab({
	Name = "RO-Wizard",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

ROWizard:AddToggle({
	Name = "Hoop Autofarm",
	Default = false,
	Callback = function(RoWizardHoopStatus)
		_G.ROWizHoopAutofarm = RoWizardHoopStatus
		while _G.ROWizHoopAutofarm == true and wait() do
			CFRAME_SET = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			for i,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
				if v.Name == "Hoop" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFRAME_SET
				end
			end
		end
end})

ROWizard:AddToggle({
	Name = "Potion Autofarm",
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
	Name = "Mod Wand",
	Callback = function()
		for i,v in pairs(_G.ROWizardSpells.Spells) do
			v.MaxCharges = 10000
			v.Charges = 10000
			v.Range = 10000
			v.Safe = true
			v.ChargeCooldown = 0.01
			v.Cooldown = 0
			hookfunction(ROWizardShake.Shake, function(...)
			end)
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

ROWizard:AddButton({
	Name = "Free Store (Requires 1 Gem)",
	Callback = function(wand)
		for i,v in pairs(getgc(true)) do
			if type(v) == "table" and rawget(v, "Gems") and rawget(v, "Rarity") then
				v.Gems = 0.00000001
			end
		end
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
			elseif (string.sub(string.lower(v.DisplayName), 1, string.len(KillPlayer))) == string.lower(KillPlayer) then
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

local function crashWalk()
	while wait() do
		hum.WalkToPoint = Vector3.new(223.2034454345703, -57.915584564208984, 281.34619140625)
		wait(0.1)
		hum.WalkToPoint = Vector3.new(223.96920776367188, -58.33555221557617, 272.5313720703125)
	end
end
local function crashPress()
	while wait(0.01) do
		presskey(Enum.KeyCode.E)
		wait()
		releasekey(Enum.KeyCode.E)
	end
end

ROWizard:AddButton({
	Name = "Crash Server (Instructions pinned in #script) (By Pyronym)",
	Callback = function()
		local settings = {repeatamount = 40, exceptions = {"SayMessageRequest"}}
		local mt = getrawmetatable(game)
		local old = mt.__namecall
		setreadonly(mt, false)
		mt.__namecall = function(uh, ...)
		local args = {...}
		local method = getnamecallmethod()
		for i,o in next, settings.exceptions do
			if uh.Name == o then
				return old(uh, ...)
			end
		end
		if method == "FireServer" or method == "InvokeServer" then
			for i = 1,settings.repeatamount do
				old(uh, ...)
			end
		end
		return old(uh, ...)
		end
		setreadonly(mt, true)
		wait()
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(223.30227661132812, -57.77378845214844, 280.24627685546875)
		wait(0.1)
		spawn(crashWalk)
		spawn(crashPress)
	end
})

local incendi;

ROWizard:AddButton({
	Name = "Get Incendio (re-execute when you rejoin the game)",
	Callback = function()
		for i,v in pairs(getgc(true)) do
			if type(v) == "table" and rawget(v, "RPName") then
				table.insert(v["KnownSpells"], inc)
			end
		end
	end
})

ROWizard:AddButton({
	Name = "Get All Spells (re-execute when you rejoin the game)",
	Callback = function()
		for i,v in pairs(getgc(true)) do
			if type(v) == "table" and rawget(v, "RPName") then
				for x = 1,100 do
				table.insert(v["KnownSpells"], {Unlocked = true, Id = x})
				end
			end
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

local ARSENAL = BINSPLOIT:MakeTab({
	Name = "Arsenal",
	Icon = "rbxassetid://44833b45998",
	PremiumOnly = false
})

ARSENAL:AddButton({
	Name = "Infinite Ammo",
	Callback = function()
		game:GetService('RunService').Stepped:connect(function()
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
		end)
	end
})

ARSENAL:AddButton({
	Name = "Wallbang",
	Callback = function()
	local mt = getrawmetatable(game)
	local oldindex = mt.__index
	setreadonly(mt, false)
	mt.__index = newcclosure(function(A, B)
    if B == "Clips" then
    return workspace.Map
    end
    return oldindex(A, B)
	end)
	end
})

ARSENAL:AddButton({
	Name = "FireRate",
	Callback = function()
		for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
			if v.Name == "FireRate" then
				v.Value = 0.02
			end
		end
	end
})

ARSENAL:AddButton({
	Name = "Always Auto",
	Callback = function()
		for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
			if v.Name == "Auto" then
				v.Value = true
			end
		end
	end
})

ARSENAL:AddButton({
	Name = "No Recoil",
	Callback = function()
		for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
			if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "RecoilControl" then
				v.Value = 0
			end
		end
	end
})

ARSENAL:AddButton({
	Name = "No Equip Time",
	Callback = function()
		for i,v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
			if v.Name == "EquipTime" then
				v.Value = 0
			end
		end
	end
})

local bloxfruits = BINSPLOIT:MakeTab({
	Name = "Blox Fruits",
	Icon = "rbxassetid://44833b45998",
	PremiumOnly = false
})

bloxfruits:AddButton({
	Name = "Infinite Dodges",
	Callback = function()
		local dodges;
		dodges = hookmetamethod(game, "__namecall", function(self, ...)
		local args = {...}
		local method = getnamecallmethod()
			if not checkcaller() and method == "FireServer" then
				if args[1] == "Dodge" then
					args[3] = 0
				end
			end
		return dodges(self, unpack(args))
		end)
	end
})

local OtherScripts = BINSPLOIT:MakeTab({
	Name = "Other Scripts",
	Icon = "rbxassetid://44833b45998",
	PremiumOnly = false
})

OtherScripts:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
	end
})

game.Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(onjoin)
end)

OrionLib:Init()
