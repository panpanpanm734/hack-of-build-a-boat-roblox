
-- Obfuscated Script (corrigiendo medidas y tiempos exactos)
local a=game.Players.LocalPlayer
local b=a:WaitForChild("PlayerGui"):FindFirstChild("TeleportGui")if b then b:Destroy()end
local c=Instance.new("ScreenGui")c.Name="TeleportGui"c.ResetOnSpawn=false c.Parent=a:WaitForChild("PlayerGui")
local d=Instance.new("Frame",c)d.Size=UDim2.new(0,150,0,100)d.Position=UDim2.new(0,10,0.25,-50)d.BackgroundColor3=Color3.fromRGB(80,80,80)
local e=Instance.new("TextLabel",d)e.Size=UDim2.new(1,0,0.3,0)e.Position=UDim2.new(0,0,0,0)e.Text="Teletransporte"e.BackgroundTransparency=1
e.TextColor3=Color3.new(1,1,1)e.Font=Enum.Font.SourceSansBold e.TextScaled=true
local f=Instance.new("TextButton",d)f.Size=UDim2.new(1,0,0.5,0)f.Position=UDim2.new(0,0,0.5,0)f.Text="Ir"
f.BackgroundColor3=Color3.fromRGB(150,150,150)f.TextColor3=Color3.new(0,0,0)f.Font=Enum.Font.SourceSans f.TextScaled=true
local function g()local h=game.Workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages"):WaitForChild("CaveStage1")return h:WaitForChild("DarknessPart")end
local function i()return game.Workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages"):WaitForChild("TheEnd"):WaitForChild("GoldenChest"):WaitForChild("Trigger")end
f.MouseButton1Click:Connect(function()local j=a.Character local k=g()local l=i()if j and k and l then for m=1,5 do j.HumanoidRootPart.CFrame=k.CFrame task.wait(0.4)end j.HumanoidRootPart.CFrame=l.CFrame end end)
local n=Instance.new("Frame",c)n.Size=UDim2.new(0,150,0,60)n.Position=UDim2.new(0,10,-0.05,70)n.BackgroundColor3=Color3.fromRGB(60,60,60)
local o=Instance.new("TextLabel",n)o.Size=UDim2.new(1,0,0.5,0)o.Position=UDim2.new(0,0,0,0)o.Text="Auto Farm"o.BackgroundTransparency=1
o.TextColor3=Color3.new(1,1,1)o.Font=Enum.Font.SourceSansBold o.TextScaled=true
local p=Instance.new("TextButton",n)p.Size=UDim2.new(1,0,0.5,0)p.Position=UDim2.new(0,0,0.5,0)p.Text="Activar"
p.BackgroundColor3=Color3.fromRGB(100,100,100)p.TextColor3=Color3.new(1,1,1)p.Font=Enum.Font.SourceSans p.TextScaled=true
local q=false
local function r()while q do local j=a.Character local k=g()if j and k then for m=1,3 do if not q then return end j.HumanoidRootPart.CFrame=k.CFrame task.wait(0.4)end if j:FindFirstChild("Humanoid")then j.Humanoid.Health=0 end task.wait(1.5)end end end
p.MouseButton1Click:Connect(function()q=not q p.Text=q and"Desactivar"or"Activar"if q then task.spawn(r)end end)

