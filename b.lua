
local Config = {}

Config.Themes = {
    {
        ImageID = "rbxassetid://87147077197726", -- 赛博朋克夜景
        theme = {
            Name = "Sunset Canvas",  -- 落日画卷
            Accent = "#FF9A8B",      -- [高亮色] 极为绝美的珊瑚橘粉色，给人温暖、治愈的感觉
            Background = "#18181A",  -- [底色] 带有极微弱暖灰倾向的黑，中和粉色的甜腻
            Outline = "#2C2C30",     -- [边框] 干净的深灰色
            Text = "#FAFAFA",        -- [文字] 极浅的灰白，比纯白更柔和，不刺眼
            Placeholder = "#888890", -- [提示词] 中立的冷灰色
            Button = "#222226",      -- [按钮] 极简的深灰底色
            Icon = "#D0D0D5"         -- [图标] 柔和的浅灰色
        }
    },
    {
        ImageID = "rbxassetid://139022825397143", -- 深海幽蓝
        theme = {
            Name = "Midnight Phantom", -- 午夜幻影
            Accent = "#00E5FF",      -- [高亮色] 极其清透的赛博青色，在暗背景上极具科技感
            Background = "#110E15",  -- [底色] 极深的紫黑色。比纯黑 (#000000) 看起来更高级、更透气
            Outline = "#2A2433",     -- [边框] 略微比底色亮一点的紫灰，勾勒出精致的边界
            Text = "#FFFFFF",        -- [文字] 纯白，保证绝对的阅读清晰度
            Placeholder = "#7A7085", -- [提示词] 优雅的紫灰色，不会抢走正文的注意力
            Button = "#1A1523",      -- [按钮] 微微凸起于背景的深色，增加层级感
            Icon = "#E0D8EA"         -- [图标] 偏白的浅灰色
        }
    },
    }
}

function Config.GetImage()
    -- 随机抽取一个配置包
    math.randomseed(os.time())
    local randomIndex = math.random(1, #Config.Themes)
    return Config.Themes[randomIndex]
end

return Config
