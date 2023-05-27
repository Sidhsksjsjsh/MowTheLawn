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
local T3 = Window:AddTab("Obstacle")
local T4 = Window:AddTab("Boost")

local Dreamin = T3:AddDropdown("Select World Target", function(object)
        _G.WorldsTarget = object
end)

Dreamin:Add("1")
Dreamin:Add("2")
Dreamin:Add("3")

local Zones = T3:AddDropdown("Select Zone", function(object)
        _G.ZonesTarget = object
end)

Zones:Add("--- World 1 ---")
Zones:Add("1")
Zones:Add("2")
Zones:Add("3")
Zones:Add("4")
Zones:Add("5")
Zones:Add("6")
Zones:Add("7")
Zones:Add("8")
Zones:Add("9")
Zones:Add("10")
Zones:Add("--- World 2 ---")
Zones:Add("11")
Zones:Add("12")
Zones:Add("13")
Zones:Add("14")
Zones:Add("15")
Zones:Add("16")
Zones:Add("17")
Zones:Add("18")
Zones:Add("19")
Zones:Add("20")
Zones:Add("--- World 3 ---")
Zones:Add("21")
Zones:Add("22")
Zones:Add("23")
Zones:Add("24")
Zones:Add("25")
Zones:Add("26")
Zones:Add("27")
Zones:Add("28")
Zones:Add("29")
Zones:Add("30")

local Obstacle = T3:AddDropdown("Select Egg Target", function(object)
        _G.EggsTarget = object
end)

Obstacle:Add("Ant Egg")
Obstacle:Add("Striped Egg")
Obstacle:Add("Painted Egg")
Obstacle:Add("Flying Egg")
Obstacle:Add("Techno Egg")
Obstacle:Add("Cute Egg")
Obstacle:Add("Frozen Egg")
Obstacle:Add("Golden Egg")
Obstacle:Add("Cloudy Egg")
Obstacle:Add("Purple Ore Egg")
Obstacle:Add("Lucky Egg")
Obstacle:Add("Magma Egg")

local ObstacleEggs = {
      "Ant Egg",
      "Striped Egg",
      "Painted Egg",
      "Flying Egg",
      "Techno Egg",
      "Cute Egg",
      "Frozen Egg",
      "Golden Egg",
      "Cloudy Egg",
      "Purple Ore Egg",
      "Lucky Egg",
      "Magma Egg"
}

function GetRandomObstacle()
    return ObstacleEggs[math.random(1, #ObstacleEggs)]
end

T3:AddSwitch("Auto Destroy Selected Egg", function(bool)
        _G.Sniping = bool
        while wait() do
            if _G.Sniping == false then break end
               game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleDamageObstacle:FireServer(game:GetService("Workspace").Map.Zones:FindFirstChild(_G.WorldsTarget):FindFirstChild(_G.ZonesTarget).Obstacles:FindFirstChild(_G.EggsTarget), true)
      end
 end)

local ObstacleTable = {
      A = "Ant Egg",
      B = "Striped Egg",
      C = "Painted Egg",
      D = "Flying Egg",
      E = "Techno Egg",
      F = "Cute Egg",
      G = "Frozen Egg",
      H = "Golden Egg",
      I = "Cloudy Egg",
      J = "Purple Ore Egg",
      K = "Lucky Egg",
      L = "Magma Egg"
}

T3:AddSwitch("Auto Destroy All Eggs", function(bool)
        _G.AllEggs = bool
        while wait() do
            if _G.AllEggs == false then break end
               game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleDamageObstacle:FireServer(game:GetService("Workspace").Map.Zones:FindFirstChild(_G.WorldsTarget):FindFirstChild(_G.ZonesTarget).Obstacles:FindFirstChild(_G.EggsTarget), true)
      end
 end)

T3:AddSwitch("Auto Destroy Random Eggs", function(bool)
        _G.REggs = bool
        while wait() do
            if _G.REggs == false then break end
               game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleDamageObstacle:FireServer(game:GetService("Workspace").Map.Zones:FindFirstChild(_G.WorldsTarget):FindFirstChild(_G.ZonesTarget).Obstacles:FindFirstChild(GetRandomObstacle()), true)
      end
 end)

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

local Dream = T1:AddDropdown("Select World", function(object)
        _G.Worlds = object
end)

Dream:Add("1")
Dream:Add("2")
Dream:Add("3")

local Zone = T1:AddDropdown("Select Zone", function(object)
        _G.Zones = object
end)

Zone:Add("--- World 1 ---")
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
Zone:Add("--- World 2 ---")
Zone:Add("11")
Zone:Add("12")
Zone:Add("13")
Zone:Add("14")
Zone:Add("15")
Zone:Add("16")
Zone:Add("17")
Zone:Add("18")
Zone:Add("19")
Zone:Add("20")
Zone:Add("--- World 3 ---")
Zone:Add("21")
Zone:Add("22")
Zone:Add("23")
Zone:Add("24")
Zone:Add("25")
Zone:Add("26")
Zone:Add("27")
Zone:Add("28")
Zone:Add("29")
Zone:Add("30")

T1:AddSwitch("Auto Grass", function(bool)
        _G.Mawn = bool
        while wait() do
            if _G.Mawn == false then break end
            game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(_G.Zones)
    end
end)

T1:AddSwitch("Auto Fuel / gas", function(bool)
        _G.Gas = bool
        while wait(3) do
            if _G.Gas == false then break end
            game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleUseGasStation:FireServer(game:GetService("Workspace").Map.Zones:FindFirstChild(_G.Worlds):FindFirstChild(_G.Zones).GasStation.GasPumps, true)
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
        _G.Lawn = bool
        while wait() do
            if _G.Lawn == false then break end
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
