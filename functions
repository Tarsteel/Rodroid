local functions = {}

while (game:IsLoaded() == false) do
end

Player = game.Players.LocalPlayer
Root_Folder = script.Parent
VolumeButton = Root_Folder.Volume_Button
PowerButton = Root_Folder.Power_Button
PhoneGUI = Root_Folder.Phone
PhoneBody = Root_Folder.Phone.Phone_Body
Bottom_Button = Root_Folder.Phone.Phone_Body.Bottom_Button
Speaker = Root_Folder.Phone.Phone_Body.Speaker
Screen = Root_Folder.Phone.Phone_Body.Screen
Boot_Loader = Screen.Boot_Loader
Home_Launcher = Screen.Home_Launcher
Notification_Bar = Screen.Notification_Bar

local Dictionary = {
	["Root"] = Root_Folder,
	["Volume"] = VolumeButton,
	["Power"] = PowerButton,
	["Phone"] = PhoneGUI,
	["TouchButton"] = Bottom_Button,
	["Speaker"] = Speaker,
	["Screen"] = Screen,
	["BootLoader"] = Boot_Loader,
	["HomeLauncher"] = Home_Launcher,
	["Notification"] = Notification_Bar
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
