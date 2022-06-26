local vu = game:GetService("VirtualUser")
       game:GetService("Players").LocalPlayer.Idled:connect(function()
          vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
          wait(1)
          vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
       end)
       
local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ExtremeAntonis/UI-Libraries/main/Solaris"))()
--[[SolarisLib:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = SolarisLib:New({
  Name = "PrivateScript",
  FolderToSave = "TheDevilMadeMeDoIT"
})

--win:Tab(title <string>)
local tab = win:Tab("Automation")

--tab:Section(title <string>)
local Exchange = tab:Section("Exchange")
local toggle = Exchange:Toggle("Toggle", false,"Toggle", function(bool)
    autoExchange = bool
    while autoExchange do
            wait()
            local args = {[1] = true}
            game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(unpack(args))
            wait()
            local args = {[1] = true}
            game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(unpack(args))
            wait()
            local args = {[1] = false}
            game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(unpack(args))
            wait()
            local args = {[1] = false}
            game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(unpack(args))
            wait()
    end
  end)
local Algorithm = tab:Section("Algorithm")
local toggle = Algorithm:Toggle("Toggle", false,"Toggle", function(bool)
    autoAlgorithm = bool
    
    while autoAlgorithm do
        wait()
        local a1 = game:GetService("ReplicatedStorage").Algo.Al1
        local a2 = game:GetService("ReplicatedStorage").Algo.Al2
        local a3 = game:GetService("ReplicatedStorage").Algo.Al3
        local a4 = game:GetService("ReplicatedStorage").Algo.Al4
         if a1.Value > a2.Value and a3.Value and a4.Value then

            local args = {
               [1] = 1
            }
            
            game:GetService("ReplicatedStorage").Events.ChangeAlg:FireServer(unpack(args))
            end
            if a2.Value > a1.Value and a3.Value and a4.Value then
            
            local args = {
               [1] = 2
            }
            
            game:GetService("ReplicatedStorage").Events.ChangeAlg:FireServer(unpack(args))
            end
            if a3.Value > a1.Value and a2.Value and a4.Value then
            
            
            local args = {
               [1] = 3
            }
            
            game:GetService("ReplicatedStorage").Events.ChangeAlg:FireServer(unpack(args))
            end
            if a4.Value > a1.Value and a2.Value and a3.Value then
            
            local args = {
               [1] = 4
            }
            
            game:GetService("ReplicatedStorage").Events.ChangeAlg:FireServer(unpack(args))
            end
    end
  end)
local OverClock = tab:Section("Overclock")
local toggle = OverClock:Toggle("Toggle", false,"Toggle", function(bool)
    autoOverClock = bool
    while autoOverClock do 
        wait()
        if autoOverClock then
        game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()
        end
    end
  end)
local BStars = tab:Section("Boost Stars")
local toggle = BStars:Toggle("Toggle", false,"Toggle", function(bool)
    autoBStars = bool
    while autoBStars do 
        wait()
        game:GetService("ReplicatedStorage").Events.ClaimFreeBoostStar:FireServer()
    end
  end)
local Loot = tab:Section("Loot Crates")
local toggle = Loot:Toggle("Toggle", false,"Toggle", function(bool)
    autoLoot = bool
    while autoLoot do 
        wait()
        local args = {
            [1] = true
        }
        
        game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
        local args = {
            [1] = false
        }
        
        game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
    end
  end)


local FCrystal = tab:Section("Crystals")
local label = FCrystal:Label("                               Automated Crystal Farming")
local toggle = FCrystal:Toggle("Toggle", false,"Toggle", function(bool)
    autoFCrystal = bool
    local Gem = game:GetService("Workspace").GemsSpawned:FindFirstChildOfClass("Model")

    while autoFCrystal == true do 
        wait()
        game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
        game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
        game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
        game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
        game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
        game:GetService("ReplicatedStorage").Events.PlaceCrystaliser:InvokeServer()
        if Gem then
            if game:GetService("Workspace").GemsSpawned:FindFirstChildOfClass("Model") then 
                function teleportTO(placeCFrame)
                    local plyr = game.Players.LocalPlayer;
                    if plyr.Character then
                        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
                    end
                end
                teleportTO(game:GetService("Workspace").GemsSpawned:FindFirstChildOfClass("Model").Part.CFrame)
                local virtualUser = game:GetService('VirtualUser')
                virtualUser:CaptureController()
                virtualUser:SetKeyDown('0x65')
                wait(.6)
                virtualUser:SetKeyUp('0x65')
                wait(.6)
            
            end
         end 
        end         
  end)
local tab2 = win:Tab("Player")
local Stats = tab2:Section("Player Stats")

-- CASH
local CCash = tab2:Section("CASH :")
local CASH = game.Players.LocalPlayer.leaderstats.Cash.Value
local UpdateCASH = CCash:Label(CASH)
task.spawn(function()
  while wait() do wait()
CASH = game.Players.LocalPlayer.leaderstats.Cash.Value
  UpdateCASH:Set(CASH)
  end
  end)

-- SCASH
local SSCash = tab2:Section("SCASH :")
local SCCASH = game.Players.LocalPlayer.leaderstats.SCash.Value
local UpdateSCASH = SSCash:Label(SCCASH)
task.spawn(function()
  while wait() do wait()
    SCCASH = game.Players.LocalPlayer.leaderstats.SCash.Value
  UpdateSCASH:Set(SCCASH)
  end
  end)

-- Bitcoin
local BTC = tab2:Section("BitCoins :")
local BBTC = game.Players.LocalPlayer.leaderstats.BitCoins.Value
local UpdateBCT = BTC:Label(BBTC)
task.spawn(function()
  while wait() do wait()
BTTC = game.Players.LocalPlayer.leaderstats.BitCoins.Value
  UpdateBCT:Set(BBTC)
  end
  end)

-- Solaris
local Solaris = tab2:Section("Solaris :")
local Sol = game.Players.LocalPlayer.leaderstats.Solaris.Value
local UpdateSol = Solaris:Label(Sol)
task.spawn(function()
  while wait() do wait()
Crystals = game.Players.LocalPlayer.leaderstats.Solaris.Value
UpdateSol:Set(Sol)
  end
  end)


--Crystal
local CRYSTLS = tab2:Section("Crystals :")
local Crystals = game.Players.LocalPlayer.CrystalEnergy.Value
local UpdateCrystal = CRYSTLS:Label(Crystals)
task.spawn(function()
  while wait() do wait()
Crystals = game.Players.LocalPlayer.CrystalEnergy.Value
  UpdateCrystal:Set(Crystals)
  end
  end)

local RedeemCode = tab2:Section("Redeem Codes")
RedeemCode:Button("Redeem Code", function(C)
    SolarisLib:Notification("Notification", "All Codes Are Redeemed")
    redeem = C
    while redeem do wait()
        local args = {[1] = "secretboost"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "leafwall"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "freelvl"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "extra"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "boostonsign"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "grasswall"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "notatrashcan"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "weirddeco"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = "extrabooster"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        local args = {[1] = ":)"}
        game:GetService("ReplicatedStorage").Events.CodeRedem:InvokeServer(unpack(args))
        print"Redeemed All Codes"
     end
  end)
--[[ 
    
local Gamepass = tab2:Section("GamePass")
  Gamepass:Button("Redeem Gamepass [TP]", function(C)
    SolarisLib:Notification("Notification", "NOT WORKING AS OF NOW")
    GP = C
    while GP do wait()
        gamePassId = 9256493
        market = game:GetService("MarketplaceService")
        http = game:GetService("HttpService")
        info = market:GetProductInfo(gamePassId, Enum.InfoType.GamePass)
        game:GetService("RunService").Stepped:connect(function()
        market:PerformPurchase(Enum.InfoType.Asset, info["ProductId"], info["PriceInRobux"], http:GenerateGUID(false))
end)
    end
  end)
  local WalkSpeed = tab2:Section("Speedhacks")
  local Default = game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed
  local toggle = WalkSpeed:Toggle("Toggle", false,"Toggle", function(bool)
    SpeedJACK = bool
    while SpeedJACK do 
        wait()
        Default = 80
    end
  end)]]

  --TAB3
local tab3 = win:Tab("Credits")
