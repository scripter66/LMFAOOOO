print("Anonyme @ V2")
print("Welcome,"..game.Players.LocalPlayer.Name)
print("Owner @ sc.ripter | Flamby @ Second Owner @ heclome | Nova")

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Anonyme", -- Required
	Text = "Welcome,"..game.Players.LocalPlayer.Name, -- Required
})
getgenv().queue_on_teleport = function(scripttoexec) -- WARNING: MUST HAVE MOREUNC IN AUTO EXECUTE FOR THIS TO WORK.
 local newTPService = {
  __index = function(self, key)
   if key == 'Teleport' then
    return function(gameId, player, teleportData, loadScreen)
      teleportData = {teleportData, MOREUNCSCRIPTQUEUE=scripttoexec}
      return oldGame:GetService("TeleportService"):Teleport(gameId, player, teleportData, loadScreen)
    end
   end
  end
 

