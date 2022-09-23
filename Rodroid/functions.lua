local functions = {}

while (game:IsLoaded() == false) do
end

Player = game.Players.LocalPlayer
RootFolder = script.Parent
VolumeButton = RootFolder.VolumeButton
PowerButton = RootFolder.PowerButton
PhoneGUI = RootFolder.Phone
PhoneBody = RootFolder.Phone.PhoneBody
BottomButton = RootFolder.Phone.PhoneBody.BottomButton
Speaker = RootFolder.Phone.PhoneBody.Speaker
Screen = RootFolder.Phone.PhoneBody.Screen
BootLoader = PhoneBody.BootLoader
HomeLauncher = Screen.HomeLauncher
NotificationBar = Screen.NotificationBar

local Dictionary = {
	["Root"] = RootFolder,
	["Volume"] = VolumeButton,
	["Power"] = PowerButton,
	["Phone"] = PhoneGUI,
	["TouchButton"] = BottomButton,
	["Speaker"] = Speaker,
	["Screen"] = Screen,
	["BootLoader"] = BootLoader,
	["HomeLauncher"] = HomeLauncher,
	["Notification"] = NotificationBar
}

function functions.Find_Path(FindItem, ParentFolder)
	local result
	if FindItem == "nil" then
		result = Dictionary[ParentFolder]
		local Root_Path = "Players."..Player.Name..".PlayerGui."
		result = string.split(result:GetFullName(),Root_Path)
		return result[2]
	elseif FindItem ~= "nil" then
		local deepsearch = Dictionary[ParentFolder]
		deepsearch = deepsearch:GetDescendants()

		for partIndex = 1,#deepsearch do
			if deepsearch[partIndex].Name == FindItem then
				result = deepsearch[partIndex]
				break
			end
		end

		if result ~= nil then
			local Root_Path = "Players."..Player.Name..".PlayerGui."
			result = string.split(result:GetFullName(),Root_Path)
			return result[2]
		elseif result == nil then	
			print("System Message: Item not Found", FindItem)
		end
	end
end

return functions
