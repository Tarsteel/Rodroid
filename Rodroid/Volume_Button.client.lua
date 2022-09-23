while (game:IsLoaded() == false) do
end

RootFolder = script.Parent.Parent
local exec = require(RootFolder.Functions)
PlayerGUI = game.Players.LocalPlayer.PlayerGui

function GetObject(ObjectPath)
	local Object = PlayerGUI
	ObjectPath = string.split(ObjectPath, ".")
	for startIndex = 1, #ObjectPath do
		if ObjectPath[startIndex] ~= nil then
			Object = Object[ObjectPath[startIndex]]
		end
	end
	return Object
end

VolumeButtonUp = GetObject(exec.Find_Path("VolumeUpButton", "Volume"))
VolumeButtonDown = GetObject(exec.Find_Path("VolumeDownButton", "Volume"))
VolumeLevel = RootFolder.VolumeLevel

VolumeButtonUp.MouseButton1Down:Connect(function()
	if VolumeLevel.Value ~= 100 then
		VolumeLevel.Value = VolumeLevel.Value + 20
	end
end)

VolumeButtonDown.MouseButton1Down:Connect(function()
	if VolumeLevel.Value ~= 0 then
		VolumeLevel.Value = VolumeLevel.Value - 20
	end
end)
