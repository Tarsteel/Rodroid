while (game:IsLoaded() == false) do
end

Root_Folder = script.Parent.Parent.Parent
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

NotificationBar = GetObject(exec.Find_Path("nil", "Notification"))
HomeScreen = GetObject(exec.Find_Path("Home_Screen","HomeLauncher"))
Boot_Script = GetObject(exec.Find_Path("boot_animation_script","BootLoader"))
Boot_Logo = GetObject(exec.Find_Path("rodroid_logo","BootLoader"))
Boot_Logo_Branding = GetObject(exec.Find_Path("rodroid_logo_branding","BootLoader"))
Boot_Loading_Icon = GetObject(exec.Find_Path("rodroid_loading_icon","BootLoader"))
--Power_Button = exec.Get_Object("Power","Power_Button")
PowerButton = script.Parent
Screen = GetObject(exec.Find_Path("nil", "Screen"))
rodroid_Status = false





function system_start()

	Screen.BackgroundColor3 = Color3.new(255,255,255)
	wait(3)
	Screen.BackgroundColor3 = Color3.new(0,0,0)
	Boot_Logo.Visible = true
	Boot_Logo_Branding.Visible = true
	wait(5)

	Boot_Loading_Icon.Visible = true
	Boot_Script.Disabled = false
	local boot_time = 0
	while boot_time < 10 do
		wait(1)
		boot_time = boot_time + 1
	end

	Boot_Logo.Visible = false
	Boot_Logo_Branding.Visible = false
	wait(2)
	Boot_Script.Disabled = true
	Boot_Loading_Icon.Visible = false
	HomeScreen.Visible = true
	NotificationBar.Visible = true
	Screen.BackgroundTransparency = 1
	rodroid_Status = true
end

function system_shutdown()
	Screen.BackgroundTransparency = 0
	Boot_Loading_Icon.Visible = true
	Boot_Script.Disabled = false
	wait(2)
	HomeScreen.Visible = false
	NotificationBar.Visible = false

	wait(5)

	Boot_Loading_Icon.Visible = false
	Boot_Script.Disabled = true
	rodroid_Status = false

end

PowerButton.MouseButton1Down:Connect(function()
	if rodroid_Status == true then
		print("Shutting Down Rodroid")
		system_shutdown()

	elseif rodroid_Status == false then
		print("Initialize Rodroid")
		system_start()
	end
end)
