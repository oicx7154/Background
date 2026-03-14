
local Config = {}

Config.Themes = {
    {
        ImageID = "rbxassetid://87147077197726", -- 赛博朋克夜景
        theme = {
            Name = "1",
            -- 您可以在这里自由混合使用 fromHex 或 fromRGB
            Accent = Color3.fromHex("#00E5FF"),      
            Background = Color3.fromHex("#110E15"),  
            Outline = Color3.fromHex("#2A2433"),     
            Text = Color3.fromHex("#00E5FF"),    -- 比如这里使用 fromRGB
            Placeholder = Color3.fromHex("#7A7085"), 
            Button = Color3.fromHex("#1A1523"),      
            Icon = Color3.fromHex("#E0D8EA")  
        }
    },
    {
        ImageID = "rbxassetid://139022825397143", -- 深海幽蓝
        theme = {
            Name = "2",
            Accent = Color3.fromHex("#FF9A8B"),
            Background = Color3.fromHex("#18181A"),
            Outline = Color3.fromHex("#2C2C30"),
            Text = Color3.fromHex("#FF9A8B"),
            Placeholder = Color3.fromHex("#888890"),
            Button = Color3.fromHex("#222226"),
            Icon = Color3.fromHex("#D0D0D5")
        }
    },
}
function Config.GetImage()
    -- 随机抽取一个配置包
    math.randomseed(os.time())
    local randomIndex = math.random(1, #Config.Themes)
    return Config.Themes[randomIndex]
end

return Config
