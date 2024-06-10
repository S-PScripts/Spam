-- From Jotunn

local spam = false
getgenv().prefix = "-" 

local plr = game.Players.LocalPlayer

function notify(msg)
    game.StarterGui:SetCore("SendNotification",  {
         Title = "KahSpam";
         Text = msg;
         Duration = 1;
         Callback = NotificationBindable;
    })
end

function chat(msg)
        game.Players:Chat(msg)
end

notify("KahSpam Loaded! Cmds have been printed into the dev console.")

print("Prefix is set to " .. getgenv().prefix)
print("")
print("commands:")
print("")
print("spam")
print("unspam")

plr.Chatted:connect(function(msg)
            local args = string.split(msg, " ")

            if args[1] == getgenv().prefix .. "spam" then  
                command = args[2]
                spam = true
                while spam do
                    task.wait()
                    chat(command)
                    chat(command)
                    chat(command)
                end
            end
end)

plr.Chatted:connect(function(msg)
            local args = string.split(msg, " ")

            if args[1] == getgenv().prefix .. "unspam" then
                spam = false
            end
end)
    
