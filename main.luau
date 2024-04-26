local IvSys = Instance.new("Folder")
IvSys.Name = "IvanSystem"
IvSys.Parent = game:GetService('RunService')

local a = Instance.new("NumberValue")
a.Name = "Width"
a.Parent = IvSys
a.Value = 6.25

local b = Instance.new("NumberValue")
b.Name = "Height"
b.Parent = game:GetService('RunService').IvanSystem
b.Value = 5.75

local function fatWidth()
    game:GetService('TweenService'):Create(
		a,
        TweenInfo.new(
            4,
            Enum.EasingStyle.Circular,
            Enum.EasingDirection.InOut,
            -1,
            true,
            0
        ),
        {Value = 5.75}
    ):Play()
end
local function tallHeight()
    game:GetService('TweenService'):Create(
		b,
        TweenInfo.new(
            4,
            Enum.EasingStyle.Circular,
            Enum.EasingDirection.InOut,
            -1,
            true,
            0
        ),
        {Value = 6.25}
    ):Play()
end

fatWidth()
tallHeight()

while wait() do
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Morph"):FireServer({"8944910530",a.Value,b.Value})
end
