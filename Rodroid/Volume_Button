while (game:IsLoaded() == false) do
end

Root_Folder = script.Parent.Parent
local exec = require(Root_Folder.Functions)
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

VolumeButtonUp = GetObject(exec.Find_Path("Volume_Up_Button", "Volume"))
VolumeButtonDown = GetObject(exec.Find_Path("Volume_Down_Button", "Volume"))
VolumeLevel = Root_Folder.Volume_Level

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
