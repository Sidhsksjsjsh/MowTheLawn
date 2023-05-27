-- wait

local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local T1 = Window:AddTab("Farm")
local T2 = Window:AddTab("Egg")

local Egg = T2:AddDropdown("Select Egg", function(object)
        _G.Eggs = object
end)

Egg:Add("Ant Egg")
Egg:Add("Striped Egg")
Egg:Add("Painted Egg")
Egg:Add("Flying Egg")
Egg:Add("Techno Egg")
Egg:Add("Cute Egg")
Egg:Add("Frozen Egg")
Egg:Add("Golden Egg")
Egg:Add("Cloudy Egg")
Egg:Add("Purple Ore Egg")
Egg:Add("Lucky Egg")
Egg:Add("Magma Egg")

T2:AddSwitch("Auto Hatch", function(bool)
        _G.Breaker = bool
        while wait() do
            if _G.Breaker == false then break end
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyEgg:InvokeServer(_G.Eggs)
    end
end)

T2:AddSwitch("Auto Equip best", function(bool)
        _G.VBest = bool
        while wait() do
            if _G.VBest == false then break end
            game:GetService("ReplicatedStorage").Remotes.Game.Pet.ClientEquipBest:FireServer()
    end
end)

local Zone = T1:AddDropdown("Select Zone", function(object)
        _G.Zones = object
end)

Zone:Add("1")
Zone:Add("2")
Zone:Add("3")
Zone:Add("4")
Zone:Add("5")
Zone:Add("6")
Zone:Add("7")
Zone:Add("8")
Zone:Add("9")
Zone:Add("10")

T1:AddSwitch("Auto Grass", function(bool)
        _G.Mawn = bool
        while wait() do
            if _G.Mawn == false then break end
            game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(_G.Zones)
    end
end)

T1:AddSwitch("Auto Fuel / gas", function(bool)
        _G.Gas = bool
        while wait() do
            if _G.Gas == false then break end
            game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleUseGasStation:FireServer(game:GetService("Workspace").Map.Zones:FindFirstChild("1"):FindFirstChild(_G.Zones).GasStation.GasPumps, true)
    end
end)

T1:AddSwitch("Auto Collect Gifts", function(bool)
        _G.Gifts = bool
        while wait() do
            if _G.Gifts == false then break end
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(1)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(2)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(3)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(4)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(5)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(6)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(7)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientClaimPlaytimeGift:FireServer(8)
    end
end)

T1:AddSwitch("Auto Buy Gas Tank", function(bool)
        _G.Tank = bool
        while wait() do
            if _G.Tank == false then break end
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 1)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 2)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 3)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 4)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 5)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 6)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 7)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 8)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 9)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 10)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("GasTank", 11)
     end
end)

T1:AddSwitch("Auto Buy Lawn Mower", function(bool)
        _G.Tank = bool
        while wait() do
            if _G.Tank == false then break end
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 1)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 2)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 3)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 4)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 5)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 6)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 7)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 8)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 9)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 10)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 11)
            game:GetService("ReplicatedStorage").Remotes.Shop.ClientBuyGameItem:FireServer("Lawnmower", 12)
     end
end)
