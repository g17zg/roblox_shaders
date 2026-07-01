--https://github.com/g17zg/roblox_shaders/new/main
--sunset_bright.lua

--Enjoy :3
task.wait(0.1)
print("loading sunset_bright shader (rejoin to disable)...")
for _, instance in game.Workspace:GetDescendants() do
    if instance:IsA("BasePart") then
        instance.CastShadow = true
    end
end
local Lighting = game:GetService("Lighting")
for i,v in Lighting:GetChildren() do
	v:Destroy()
end
Lighting.Ambient = Color3.fromRGB(140, 90, 70)
Lighting.Brightness = 1.6
Lighting.ColorShift_Bottom = Color3.fromRGB(120, 70, 50)
Lighting.ColorShift_Top = Color3.fromRGB(255, 150, 100)
Lighting.EnvironmentDiffuseScale = 1
Lighting.EnvironmentSpecularScale = 0.9
Lighting.GlobalShadows = true
Lighting.LightingStyle = Enum.LightingStyle.Realistic
Lighting.OutdoorAmbient = Color3.fromRGB(200, 100, 60)
Lighting.ShadowColor = Color3.fromRGB(0,0,0)
Lighting.ShadowSoftness = 1
Lighting.Technology = Enum.Technology.Future
Lighting.ClockTime = 17.6
Lighting.GeographicLatitude = 41.733
Lighting.ExposureCompensation = 0.15
Lighting.FogColor = Color3.fromRGB(192, 192, 192)
Lighting.FogEnd = 1000000
Lighting.FogStart = 0

local Atmosphere = Lighting:FindFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere", Lighting)
Atmosphere.Density = 0.45
Atmosphere.Offset = 0.28
Atmosphere.Color = Color3.fromRGB(255, 180, 130)
Atmosphere.Decay = Color3.fromRGB(130, 80, 50)
Atmosphere.Glare = 0.25
Atmosphere.Haze = 1.1

local Sky = Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky", Lighting)
Sky.CelestialBodiesShown = true
Sky.MoonAngularSize = 8
Sky.MoonTextureId = "rbxassetid://62326944"
Sky.SkyboxBk = "rbxassetid://9544505500"
Sky.SkyboxDn = "rbxassetid://9544547905"
Sky.SkyboxLf = "rbxassetid://9544547694"
Sky.SkyboxOrientation = Vector3.new(0, 0, 0)
Sky.SkyboxRt = "rbxassetid://9544547542"
Sky.SkyboxUp = "rbxassetid://9544547398"
Sky.StarCount = 200
Sky.SunAngularSize = 9
Sky.SunTextureId = "rbxassetid://5392574622"

local Bloom = Lighting:FindFirstChild("Bloom") or Instance.new("BloomEffect")
Bloom.Name = "Bloom"
Bloom.Parent = Lighting
Bloom.Enabled = true
Bloom.Intensity = 0.2
Bloom.Size = 34
Bloom.Threshold = 0.85

local ColorCorrection = Lighting:FindFirstChild("ColorCorrection") or Instance.new("ColorCorrectionEffect")
ColorCorrection.Name = "ColorCorrection"
ColorCorrection.Parent = Lighting
ColorCorrection.Brightness = 0.1
ColorCorrection.Contrast = 0.4
ColorCorrection.Enabled = true
ColorCorrection.Saturation = 0.22
ColorCorrection.TintColor = Color3.fromRGB(255, 190, 130)

local DepthOfField = Lighting:FindFirstChild("DepthOfField") or Instance.new("DepthOfFieldEffect")
DepthOfField.Name = "DepthOfField"
DepthOfField.Parent = Lighting
DepthOfField.Enabled = true
DepthOfField.FarIntensity = 0.28
DepthOfField.FocusDistance = 0
DepthOfField.InFocusRadius = 50
DepthOfField.NearIntensity = 0.7

local SunRays = Lighting:FindFirstChild("SunRays") or Instance.new("SunRaysEffect")
SunRays.Name = "SunRays"
SunRays.Parent = Lighting
SunRays.Enabled = true
SunRays.Intensity = 0.1
SunRays.Spread = 1
