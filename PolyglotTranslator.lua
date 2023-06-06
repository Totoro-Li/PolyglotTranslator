--[[ --- START OF VERSION ---
MAJOR:1
MINOR:2
PATCH:0
CHANGELOG
- Fixed "Attempt to yield across a C-call boundary" error caused in bugs of ScaleformLib, now this library is no longer needed.
- Fixed bugs in loading script, which causes settings to revert to default.
- Fixed failure to load custom colors for message rendering.
- Added Polyglot Popup as another presentation mode for message, which is still under development to draw DirectX for input and presentation.
--- END OF VERSION --- ]]
package.preload['src.docs.CommandRef'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				---@class CommandRef
local CommandRef = {}

---@type boolean
CommandRef.visible = nil

---@type any
CommandRef.value = nil

---@type number
CommandRef.min_value = nil

---@type number
CommandRef.max_value = nil

---@type number
CommandRef.step_size = nil

---@type number
CommandRef.precision = nil

---@type string
CommandRef.indicator_type = nil

---@type any
CommandRef.target = nil

---@return boolean
function CommandRef:isValid() end

---@return CommandRef
function CommandRef:refByRelPath() end

function CommandRef:delete() end

function CommandRef:detach() end

function CommandRef:attach(...) end

function CommandRef:attachAfter(...) end

function CommandRef:attachBefore(...) end

function CommandRef:focus() end

---@return boolean
function CommandRef:isFocused() end

---@return table
function CommandRef:getApplicablePlayers() end

---@return any
function CommandRef:getParent() end

---@return string
function CommandRef:getType() end

---@return table
function CommandRef:getChildren() end

function CommandRef:trigger() end

function CommandRef:onTickInViewport(...) end

function CommandRef:onFocus(...) end

function CommandRef:onBlur(...) end

function CommandRef:removeHandler(...) end

---@return any
function CommandRef:getState() end

---@return any
function CommandRef:getDefaultState() end

function CommandRef:applyDefaultState() end

function CommandRef:setListActionOptions(...) end

function CommandRef:setTextsliderOptions(...) end

function CommandRef:addValueReplacement(...) end

function CommandRef:setTemporary() end

function CommandRef:list(...) end

function CommandRef:action(...) end

function CommandRef:toggle(...) end

function CommandRef:toggle_loop(...) end

function CommandRef:slider(...) end

function CommandRef:slider_float(...) end

function CommandRef:click_slider(...) end

function CommandRef:click_slider_float(...) end

function CommandRef:list_select(...) end

function CommandRef:list_action(...) end

function CommandRef:text_input(...) end

function CommandRef:colour(...) end

function CommandRef:rainbow(...) end

function CommandRef:divider(...) end

function CommandRef:readonly(...) end

function CommandRef:hyperlink(...) end

function CommandRef:textslider(...) end

function CommandRef:textslider_stateful(...) end

function CommandRef:link(...) end

---@class CommandUniqPtr
local CommandUniqPtr = {}

function CommandUniqPtr:ref() end

return CommandRef
 end)
package.preload['src.natives.natives'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				local HUD = {
    ["GET_HUD_COLOUR"]=--[[void]] function(--[[int]] hudColorIndex,--[[int* (pointer)]] r,--[[int* (pointer)]] g,--[[int* (pointer)]] b,--[[int* (pointer)]] a)native_invoker.begin_call()native_invoker.push_arg_int(hudColorIndex)native_invoker.push_arg_pointer(r)native_invoker.push_arg_pointer(g)native_invoker.push_arg_pointer(b)native_invoker.push_arg_pointer(a)native_invoker.end_call_2(0x7C9C91AB74A0360F)end,
}

local GRAPHICS = {
    ["REQUEST_SCALEFORM_MOVIE"]=--[[int]] function(--[[string]] scaleformName)native_invoker.begin_call()native_invoker.push_arg_string(scaleformName)native_invoker.end_call_2(0x11FE353CF9733E6F)return native_invoker.get_return_value_int()end,
    ["HAS_SCALEFORM_MOVIE_LOADED"]=--[[BOOL (bool)]] function(--[[int]] scaleformHandle)native_invoker.begin_call()native_invoker.push_arg_int(scaleformHandle)native_invoker.end_call_2(0x85F01B8D5B90570E)return native_invoker.get_return_value_bool()end,
    ["DRAW_SCALEFORM_MOVIE_FULLSCREEN"]=--[[void]] function(--[[int]] scaleform,--[[int]] red,--[[int]] green,--[[int]] blue,--[[int]] alpha,--[[int]] unk)native_invoker.begin_call()native_invoker.push_arg_int(scaleform)native_invoker.push_arg_int(red)native_invoker.push_arg_int(green)native_invoker.push_arg_int(blue)native_invoker.push_arg_int(alpha)native_invoker.push_arg_int(unk)native_invoker.end_call_2(0x0DF606929C105BE1)end,
    ["BEGIN_SCALEFORM_MOVIE_METHOD"]=--[[BOOL (bool)]] function(--[[int]] scaleform,--[[string]] methodName)native_invoker.begin_call()native_invoker.push_arg_int(scaleform)native_invoker.push_arg_string(methodName)native_invoker.end_call_2(0xF6E48914C7A8694E)return native_invoker.get_return_value_bool()end,
    ["SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT"]=--[[void]] function(--[[int]] value)native_invoker.begin_call()native_invoker.push_arg_int(value)native_invoker.end_call_2(0xC3D0841A0CC546A6)end,
    ["END_SCALEFORM_MOVIE_METHOD"]=--[[void]] function()native_invoker.begin_call()native_invoker.end_call_2(0xC6796A8FFA375E53)end,
    -- Pushes an integer for the Scaleform function onto the stack.
	["SCALEFORM_MOVIE_METHOD_ADD_PARAM_INT"]=--[[void]] function(--[[int]] value)native_invoker.begin_call()native_invoker.push_arg_int(value)native_invoker.end_call_2(0xC3D0841A0CC546A6)end,
	-- Pushes a float for the Scaleform function onto the stack.
	["SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT"]=--[[void]] function(--[[float]] value)native_invoker.begin_call()native_invoker.push_arg_float(value)native_invoker.end_call_2(0xD69736AAE04DB51A)end,
	-- Pushes a boolean for the Scaleform function onto the stack.
	["SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL"]=--[[void]] function(--[[BOOL (bool)]] value)native_invoker.begin_call()native_invoker.push_arg_bool(value)native_invoker.end_call_2(0xC58424BA936EB458)end,
	-- Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.
	-- 
	-- Examples:
	-- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER");
	-- HUD::ADD_TEXT_COMPONENT_INTEGER(MISC::ABSI(a_1));
	-- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	-- 
	-- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING");
	-- HUD::_ADD_TEXT_COMPONENT_STRING(a_2);
	-- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	-- 
	-- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2");
	-- HUD::_0x17299B63C7683A2B(v_3);
	-- HUD::_0x17299B63C7683A2B(v_4);
	-- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	-- 
	-- GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1");
	-- HUD::_0x17299B63C7683A2B(v_3);
	-- GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
	["BEGIN_TEXT_COMMAND_SCALEFORM_STRING"]=--[[void]] function(--[[string]] componentType)native_invoker.begin_call()native_invoker.push_arg_string(componentType)native_invoker.end_call_2(0x80338406F3475E55)end,
	["END_TEXT_COMMAND_SCALEFORM_STRING"]=--[[void]] function()native_invoker.begin_call()native_invoker.end_call_2(0x362E2D3FE93A9959)end,
	-- Same as END_TEXT_COMMAND_SCALEFORM_STRING but does not perform HTML conversion for text tokens.
	-- 
	-- END_TEXT_COMMAND_VIA_SPECIAL_MODIFIABLE_STRING?
	["END_TEXT_COMMAND_UNPARSED_SCALEFORM_STRING"]=--[[void]] function()native_invoker.begin_call()native_invoker.end_call_2(0xAE4E8157D9ECF087)end,
	-- Same as SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING
	-- Both SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING / _SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING_2 works, but _SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING_2 is usually used for "name" (organisation, players..).
	["SCALEFORM_MOVIE_METHOD_ADD_PARAM_LITERAL_STRING"]=--[[void]] function(--[[string]] string)native_invoker.begin_call()native_invoker.push_arg_string(string)native_invoker.end_call_2(0x77FE3402004CD1B0)end,
	["SCALEFORM_MOVIE_METHOD_ADD_PARAM_TEXTURE_NAME_STRING"]=--[[void]] function(--[[string]] string)native_invoker.begin_call()native_invoker.push_arg_string(string)native_invoker.end_call_2(0xBA7148484BD90365)end,
	["SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING"]=--[[void]] function(--[[string]] string)native_invoker.begin_call()native_invoker.push_arg_string(string)native_invoker.end_call_2(0xE83A3E3557A56640)end,
}

-- Export entire namespace
return {
    HUD = HUD,
    GRAPHICS = GRAPHICS
}
 end)
package.preload['src.lib.utils'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				-- package.loaded["src.lib.utils"] = nil
local moduleExports = {}

function moduleExports.tableToUrlParams(t)
    local url_params = {}
    for k, v in pairs(t) do
        table.insert(url_params, moduleExports.url_encode(k) .. '=' .. moduleExports.url_encode(v))
    end
    return table.concat(url_params, "&")
end

function moduleExports.url_encode(text)
    if (text) then
        text = string.gsub(text, "\n", "\r\n")
        text = string.gsub(text, "([^%w ])", function(c)
            return string.format("%%%02X", string.byte(c))
        end)
        text = string.gsub(text, " ", "+")
    end
    return text
end

function moduleExports.url_decode(text)
    return string.gsub(text, "%+", " ")
end

function moduleExports.unicode_escape(unicode)
    return utf8.char(tonumber(unicode, 16))
end

function moduleExports.templateReplace(template, ...)
    local args = { ... }
    local result = template:gsub("{arg(%d+)}", function(n)
        return args[tonumber(n)]
    end)
    return result
end

function moduleExports.toast(template, ...)
    local args = { ... }
    local result = template:gsub("{arg(%d+)}", function(n)
        return args[tonumber(n)]
    end)
    util.toast(result, TOAST_ALL)
end

return moduleExports
 end)
package.preload['src.lib.updater'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				local LOC = require "src.lib.localization"
local polyglotUtils = require "src.lib.utils"
local moduleExports = {}

local mainGitHubPath = "/Totoro-Li/PolyglotTranslator/main/"
local mainFileName = "PolyglotTranslator.lua"

local function parseVersionInfoLegacy(content)
    local versionInfoPattern = "local%s+versionInfo%s*=%s*{(.-)}"
    local majorPattern = "major%s*=%s*(%d+)"
    local minorPattern = "minor%s*=%s*(%d+)"
    local patchPattern = "patch%s*=%s*(%d+)"

    local versionInfoStr = content:match(versionInfoPattern)
    if not versionInfoStr then return nil end

    local major = tonumber(versionInfoStr:match(majorPattern))
    local minor = tonumber(versionInfoStr:match(minorPattern))
    local patch = tonumber(versionInfoStr:match(patchPattern))

    if not major or not minor or not patch then return nil end

    return { major = major, minor = minor, patch = patch }
end

local function parseVersionInfo(content)
    local majorPattern = "MAJOR%s*:%s*(%d+)"
    local minorPattern = "MINOR%s*:%s*(%d+)"
    local patchPattern = "PATCH%s*:%s*(%d+)"
    local changelogPattern = "CHANGELOG%s*(.-)%-%-%-%s*END OF VERSION"

    local major = tonumber(content:match(majorPattern))
    local minor = tonumber(content:match(minorPattern))
    local patch = tonumber(content:match(patchPattern))
    local changelog = content:match(changelogPattern)

    if not major or not minor or not patch then 
        return parseVersionInfoLegacy(content)
    end

    local changelogLines = {}
    for line in changelog:gmatch("[^\r\n]+") do
        table.insert(changelogLines, line)
    end

    return {
        version = { major = major, minor = minor, patch = patch },
        changelog = changelogLines
    }
end


local function isUpdateNeeded(currentVersion, newVersion)
    if not newVersion then return false end
    util.log("Current version: " .. currentVersion.major .. "." .. currentVersion.minor .. "." .. currentVersion.patch)
    util.log("New version: " .. newVersion.major .. "." .. newVersion.minor .. "." .. newVersion.patch)

    if newVersion.major > currentVersion.major or
        (newVersion.major == currentVersion.major and newVersion.minor > currentVersion.minor) or
        (newVersion.major == currentVersion.major and newVersion.minor == currentVersion.minor and newVersion.patch > currentVersion.patch) then
        return true
    end

    return false
end


local function startUpdate(content, updateCallback)
    local newVersionInfo = parseVersionInfo(content)
    if not newVersionInfo then
        polyglotUtils.toast(LOC.unexpectedResponse)
        return
    end
    ---@type file*?
    local scriptFile = io.open(filesystem.scripts_dir() .. mainFileName, "wb")
    if scriptFile == nil then
        polyglotUtils.toast(LOC.failedToUpdate)
        return
    end
    -- Read current version info and match with parseVersionInfo
    local versionInfo = parseVersionInfo(scriptFile:read("*a"))
    scriptFile:close()
    if isUpdateNeeded(versionInfo, newVersionInfo) then
        updateCallback(newVersionInfo)
    else
        polyglotUtils.toast(LOC.noUpdatesAvailable)
    end
end

local State <const> =
{
    Idle = 0,
    DownloadingScript = 1
}
local state = State.Idle

function moduleExports.runUpdater(clickType)
    if state == State.DownloadingScript then
        polyglotUtils.toast(LOC.updateInProgress)
        return
    end
    async_http.init("https://raw.githubusercontent.com", mainGitHubPath .. mainFileName, function(resBody, _, statusCode)
        if statusCode >= 200 and statusCode < 300 and resBody and resBody:len() > 0 then
            startUpdate(resBody, function(newVersionInfo)
                state = State.DownloadingScript
                polyglotUtils.toast(LOC.updating)
                local scriptFile = io.open(filesystem.scripts_dir() .. mainFileName, "wb")
                if not scriptFile then
                    polyglotUtils.toast(LOC.unexpectedResponse)
                    state = State.Idle
                    return
                end

                scriptFile:write(resBody .. "\n")
                scriptFile:close()
                polyglotUtils.toast(LOC.templates.updateSuccessful,
                    newVersionInfo.major .. "." .. newVersionInfo.minor .. "." .. newVersionInfo.patch)
                polyglotUtils.toast(LOC.changelog .. "\n" .. table.concat(newVersionInfo.changelog, "\n"))
                util.restart_script()
            end)
        else
            polyglotUtils.toast(LOC.failedToUpdate)
        end
    end, function()
        polyglotUtils.toast(LOC.failedToDownloadFromGitHub)
    end)
    async_http.dispatch()
end

return moduleExports
 end)
package.preload['src.lib.config'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				-- package.loaded["src.lib.config"] = nil
local polyglotTranslation = require("src.lib.translation")
local polyglotChat = require("src.lib.chat")
local Config = {}

Config.__index = function(self, key)
    if key == "LangKeyList" then
        return polyglotTranslation.getLangKeyList()
    elseif key == "LangNameList" then
        return polyglotTranslation.getLangNameList()
    elseif key == "LangLookupByKey" then
        return polyglotTranslation.getLangLookupByKey()
    elseif key == "LangLookupByName" then
        return polyglotTranslation.getLangLookupByName()
    elseif key == "TranslationMethodOptions" then
        return polyglotTranslation.getTranslationMethodOptions()
    elseif key == "TranslatedMsgLocationOptions" then
        return polyglotChat.getTranslatedMsgLocationOptions()
    else
        return rawget(self, key)
    end
end

function Config:get(key)
    return self[key]
end

function Config:set(key, value)
    rawset(self, key, value)
end

Config.__newindex = function(self, key, value)
    -- TODO: Additional logic for setting values
    return Config.set(self, key, value)
end

function Config:new()
    local newConfig = {}
    setmetatable(newConfig, self)
    return newConfig
end

local moduleExports = {}
moduleExports.Config = Config

return moduleExports
 end)
package.preload['src.lib.translation'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				-- package.loaded["src.lib.translation"] = nil
local moduleExports = {}
local polyglotUtils = require "src.lib.utils"
local polyglotLocalization = require "src.lib.localization"

local Languages = {
    { Name = "Afrikaans",           Key = "af" },
    { Name = "Albanian",            Key = "sq" },
    { Name = "Arabic",              Key = "ar" },
    { Name = "Azerbaijani",         Key = "az" },
    { Name = "Basque",              Key = "eu" },
    { Name = "Belarusian",          Key = "be" },
    { Name = "Bengali",             Key = "bn" },
    { Name = "Bulgarian",           Key = "bg" },
    { Name = "Catalan",             Key = "ca" },
    { Name = "Chinese Simplified",  Key = "zh-cn" },
    { Name = "Chinese Traditional", Key = "zh-tw" },
    { Name = "Croatian",            Key = "hr" },
    { Name = "Czech",               Key = "cs" },
    { Name = "Danish",              Key = "da" },
    { Name = "Dutch",               Key = "nl" },
    { Name = "English",             Key = "en" },
    { Name = "Esperanto",           Key = "eo" },
    { Name = "Estonian",            Key = "et" },
    { Name = "Filipino",            Key = "tl" },
    { Name = "Finnish",             Key = "fi" },
    { Name = "French",              Key = "fr" },
    { Name = "Galician",            Key = "gl" },
    { Name = "Georgian",            Key = "ka" },
    { Name = "German",              Key = "de" },
    { Name = "Greek",               Key = "el" },
    { Name = "Gujarati",            Key = "gu" },
    { Name = "Haitian Creole",      Key = "ht" },
    { Name = "Hebrew",              Key = "iw" },
    { Name = "Hindi",               Key = "hi" },
    { Name = "Hungarian",           Key = "hu" },
    { Name = "Icelandic",           Key = "is" },
    { Name = "Indonesian",          Key = "id" },
    { Name = "Irish",               Key = "ga" },
    { Name = "Italian",             Key = "it" },
    { Name = "Japanese",            Key = "ja" },
    { Name = "Kannada",             Key = "kn" },
    { Name = "Korean",              Key = "ko" },
    { Name = "Latin",               Key = "la" },
    { Name = "Latvian",             Key = "lv" },
    { Name = "Lithuanian",          Key = "lt" },
    { Name = "Macedonian",          Key = "mk" },
    { Name = "Malay",               Key = "ms" },
    { Name = "Maltese",             Key = "mt" },
    { Name = "Norwegian",           Key = "no" },
    { Name = "Persian",             Key = "fa" },
    { Name = "Polish",              Key = "pl" },
    { Name = "Portuguese",          Key = "pt" },
    { Name = "Romanian",            Key = "ro" },
    { Name = "Russian",             Key = "ru" },
    { Name = "Serbian",             Key = "sr" },
    { Name = "Slovak",              Key = "sk" },
    { Name = "Slovenian",           Key = "sl" },
    { Name = "Spanish",             Key = "es" },
    { Name = "Swahili",             Key = "sw" },
    { Name = "Swedish",             Key = "sv" },
    { Name = "Tamil",               Key = "ta" },
    { Name = "Telugu",              Key = "te" },
    { Name = "Thai",                Key = "th" },
    { Name = "Turkish",             Key = "tr" },
    { Name = "Ukrainian",           Key = "uk" },
    { Name = "Urdu",                Key = "ur" },
    { Name = "Vietnamese",          Key = "vi" },
    { Name = "Welsh",               Key = "cy" },
    { Name = "Yiddish",             Key = "yi" },
}

local LangPairs = {} -- Aux for sorting
local LangKeyList = {}
local LangNameList = {}
local LangLookupByName = {}
local LangLookupByKey = {}

for i = 1, #Languages do
    local Language = Languages[i]
    LangPairs[i] = { key = Language.Key, name = Language.Name }
    LangLookupByName[Language.Name] = Language.Key
    LangLookupByKey[Language.Key] = Language.Name
end

table.sort(LangPairs, function(a, b)
    return a.name < b.name
end)

for i = 1, #LangPairs do
    LangKeyList[i] = LangPairs[i].key
    LangNameList[i] = LangPairs[i].name
end

function moduleExports.getLangNameList()
    return LangNameList
end

function moduleExports.getLangKeyList()
    return LangKeyList
end

function moduleExports.getLangLookupByKey()
    return LangLookupByKey
end

function moduleExports.getLangLookupByName()
    return LangLookupByName
end

local chatGPTPromptPresets = {
    ["Basic"] = "You are a professional translation engine, please translate the following text into {lang}: {text}",
    ["Cute with Emoticons"] = "You are a professional translation engine, please translate the following text into {lang}, in the style of game message scenario with cute emoticons, Internet slang and without the style of machine translation: {text}",
    ["Model Roleplay"] = "You are a translation model. Please translate the following text to {lang}: {text}",
    ["AI Self-aware"] = "As an AI language model, please convert the following text to {lang}: {text}",
}

function moduleExports.getChatGPTPromptPresetsOptions()
    local chatGPTPromptPresetsOptions = {}
    for name, preset in pairs(chatGPTPromptPresets) do
        chatGPTPromptPresetsOptions[#chatGPTPromptPresetsOptions + 1] = { name }
    end
    return chatGPTPromptPresetsOptions
end

local function createGoogleTranslateCall(config)
    return function(text, targetLang, onSuccess)
        local HEADERS = {
            ["User-Agent"] = "User-Agent",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15"
        }
        local params = {
            client = "dict-chrome-ex",
            sl = "auto",
            tl = targetLang,
            dt = "t",
            dj = "1",
            source = "input",
            q = polyglotUtils.url_encode(text),
        }

        async_http.init("translate.googleapis.com", "/translate_a/t?" .. polyglotUtils.tableToUrlParams(params),
            function(body, header_fields, status_code)
                if status_code == 200 and body ~= "" then
                    util.log("Google translate response: " .. body)
                    local translation, sourceLang = body:match('%[%["(.-)","(.-)"%]%]')
                    translation = translation:gsub("\\u(%x%x%x%x)", polyglotUtils.unicode_escape)
                    translation = translation:gsub(" <code> 0 </code> ", "\n")
                    translation = translation:gsub("<code>0</code>", "\n")
                    translation = translation:gsub("\\(.)", "%1")
                    onSuccess(translation, sourceLang)
                else
                    polyglotUtils.toast(polyglotLocalization.templates.errorTranslating, text, tostring(status_code))
                end
            end)
        for key, value in pairs(HEADERS) do
            async_http.add_header(key, value)
        end
        async_http.dispatch()
    end
end

local function generatePromptFromPreset(preset, text, targetLang)
    local prompt = chatGPTPromptPresets[preset]                 -- Get the preset string
    prompt = prompt:gsub("{lang}", LangLookupByKey[targetLang]) -- Replace {lang} placeholder
    prompt = prompt:gsub("{text}", text)                        -- Replace {text} placeholder
    return prompt
end

local function createChatGPTTranslateCall(config)
    return function(text, targetLang, onSuccess)
        local apiKey = config.apiKey
        if apiKey == nil or apiKey == "" then
            polyglotUtils.toast(polyglotLocalization.templates.apiKeyNotSet)
            return
        end

        local prompt = generatePromptFromPreset(config.chatGPTPromptPreset, text, targetLang)
        local postData = '{"model": "gpt-3.5-turbo", "messages": [{"role": "user", "content": "' ..
            prompt .. '"}], "stream": false}'
        async_http.init("api.openai.com", "/v1/chat/completions", function(body, header_fields, status_code)
            if status_code == 200 and body ~= "" then
                util.log("ChatGPT response: " .. body)
                local answer = body:match("\"content\":\"(.-)\"}")
                answer = answer:gsub("\\u0026", "&")
                answer = answer:gsub("\\\"", "\"")
                answer = answer:gsub("\\\\", "\\")
                answer = answer:gsub("~", " ")
                answer = answer:match("^%s*(.-)%s*$") -- Remove heading and trailing spaces
                onSuccess(answer, "no")
            else
                polyglotUtils.toast(polyglotLocalization.templates.errorTranslating, text, tostring(status_code))
            end
        end, function()
            polyglotUtils.toast(polyglotLocalization.templates.errorConnectingToChatGPTAPI)
        end)
        async_http.set_post("application/json", postData)
        async_http.add_header("Authorization", "Bearer " .. apiKey)
        async_http.dispatch()
        util.log("ChatGPT request sent with post data: " .. postData)
    end
end

local createMethods = {
    ["Google Translate"] = createGoogleTranslateCall,
    --["Bing"] = bingTranslateCall,
    ["ChatGPT"] = createChatGPTTranslateCall
}

function moduleExports.getTranslationMethodOptions()
    local options = {}
    for method, _ in pairs(createMethods) do
        table.insert(options, { method })
    end
    return options
end

function moduleExports.translateText(text, targetLang, translationMethod, config, onSuccess)
    if createMethods[translationMethod] then
        createMethods[translationMethod](config)(text, targetLang, function(translation, sourceLang)
            onSuccess(translation, sourceLang:lower())
        end)
    end
end

return moduleExports
 end)
package.preload['src.lib.chat'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				-- package.loaded["src.lib.chat"] = nil
local polyglotUtils = require("src.lib.utils")
local LOC = require("src.lib.localization")
local natives = require("src.natives.natives")

local scaleformHandleTable = {}
local scaleformTypes = {
    ["number"] = natives.GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_FLOAT,
    ["string"] = natives.GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_PLAYER_NAME_STRING,
    ["boolean"] = natives.GRAPHICS.SCALEFORM_MOVIE_METHOD_ADD_PARAM_BOOL
}

local checkScaleformAndLoad = function(scaleformName)
    if not scaleformHandleTable[scaleformName] or not natives.GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleformHandleTable[scaleformName]) then
        local scaleformHandle = natives.GRAPHICS.REQUEST_SCALEFORM_MOVIE(scaleformName)
        while not natives.GRAPHICS.HAS_SCALEFORM_MOVIE_LOADED(scaleformHandle) do
            util.yield()
        end
        scaleformHandleTable[scaleformName] = scaleformHandle
        natives.GRAPHICS.DRAW_SCALEFORM_MOVIE_FULLSCREEN(scaleformHandle, 255, 255, 255, 255, 1)
    end
end

local function callScaleformMethod(scaleformName, method, ...)
    local args = { ... }
    checkScaleformAndLoad(scaleformName)
    if natives.GRAPHICS.BEGIN_SCALEFORM_MOVIE_METHOD(scaleformHandleTable[scaleformName], method) then
        for i = 1, #args do
            local arg = args[i]
            local type = type(arg)
            local pushFunc = scaleformTypes[type]
            if pushFunc then
                pushFunc(arg)
            else
                error("Invalid type passed to scaleform method: " .. type)
            end
        end
        natives.GRAPHICS.END_SCALEFORM_MOVIE_METHOD()
    end
end

---@param player string
---@param message string
---@param scope string
---@param teamOnly boolean
---@param eHudColour number
local function drawScaleformMultiplayerChat(player, message, scope, teamOnly, eHudColour)    
    callScaleformMethod("MULTIPLAYER_CHAT", "ADD_MESSAGE", player, message, scope, teamOnly, eHudColour)
end

local moduleExports = {}

local colors = {
    topbar = { ["r"] = 50 / 255, ["g"] = 50 / 255, ["b"] = 50 / 255, ["a"] = 1.0 },       --grayish
    background = { ["r"] = 5 / 255, ["g"] = 5 / 255, ["b"] = 5 / 255, ["a"] = 0.5 },      --blackish
    subhead = { ["r"] = 1, ["g"] = 1, ["b"] = 1, ["a"] = 1.0 },                           --white
    label = { ["r"] = 1, ["g"] = 1, ["b"] = 1, ["a"] = 1.0 },                             --white
    highlight = { ["r"] = 160 / 255, ["g"] = 160 / 255, ["b"] = 160 / 255, ["a"] = 1.0 }, -- also grayish
}

local TranslatedMsgLocationOptions = {
    LOC.translatedMsgLocationOptions.teamChatNotNetworked,
    LOC.translatedMsgLocationOptions.teamChatNetworked,
    LOC.translatedMsgLocationOptions.globalChatNotNetworked,
    LOC.translatedMsgLocationOptions.globalChatNetworked,
    LOC.translatedMsgLocationOptions.notification,
    LOC.translatedMsgLocationOptions.popup
}

function moduleExports.getTranslatedMsgLocationOptions()
    local options = {}
    for i, v in ipairs(TranslatedMsgLocationOptions) do
        options[i] = v
    end
    return options
end

local messages = {}
local display_duration = 3000 -- Time in ms to display each message
local max_messages = 5        -- Maximum number of messages to display at a time

local function calculate_max_scale(text, max_width)
    local text_width, _ = directx.get_text_size(text)
    local scale = 1.0

    if text_width > max_width then
        scale = max_width / text_width
    end

    return scale
end

-- Helper function to wrap the text to fit the given width
local function wrap_text(text, width)
    local lines = {}
    local words = {}
    local line = ""
    local line_width

    for word in text:gmatch("%S+") do
        table.insert(words, word)
    end

    for i, word in ipairs(words) do
        if line == "" then
            line = word
        else
            line_width, _ = directx.get_text_size(line)
            if line_width < width then
                line = line .. " " .. word
            else
                table.insert(lines, line)
                line = word
            end
        end

        if i == #words then
            table.insert(lines, line)
        end
    end

    return lines
end

local function display_popup(sender, message, src_language)
    local current_time = util.current_time_millis()
    table.insert(messages, {
        sender = sender,
        message = message,
        src_language = src_language,
        banner_color = { r = math.random(), g = math.random(), b = math.random(), a = 1.0 },
        start_time = current_time
    })

    if #messages > max_messages then
        table.remove(messages, 1)
    end
end

util.create_tick_handler(function()
    local current_time = util.current_time_millis()

    for i, msg in ipairs(messages) do
        if current_time - msg.start_time > display_duration then
            table.remove(messages, i)
            break
        end

        local x, y, width, height = 0.75, 0.05 * (i - 1), 0.2, 0.05
        local padding = 0.005

        -- Calculate the maximum scale for sender name and message
        local sender_scale = calculate_max_scale(msg.sender, width * 0.4)
        local message_scale = calculate_max_scale(msg.message, width * 0.6)

        -- Draw the background rectangle
        directx.draw_rect(x, y, width, height, colors.background)
        directx.draw_rect(x, y, padding, height, msg.banner_color)

        -- Draw the sender name
        directx.draw_text(x + padding, y + padding / 2, msg.sender, ALIGN_TOP_LEFT, sender_scale, colors.label, true)

        -- Draw the message with word wrapping
        local wrapped_message = wrap_text(msg.message, width * 0.6)
        local line_spacing = 0.01
        local message_y = y + height / 2
        for _, line in ipairs(wrapped_message) do
            directx.draw_text(x + padding * 2 + width * 0.4, message_y, line, ALIGN_TOP_LEFT, message_scale,
                colors.subhead, true)
            message_y = message_y + line_spacing
        end

        -- Draw the source language
        directx.draw_text(x + width - padding, y + padding / 2, msg.src_language, ALIGN_TOP_RIGHT, 1.0, colors.highlight)
    end
end)


local botSend = false -- To avoid infinite loop
function moduleExports.createOnMessageCallback(config, translateTextCB)
    return function(sender, reserved, text, team_chat, networked, is_auto)
        if not config.translateOn then
            return
        end
        if not botSend then
            if not config.translateSelf and (sender == players.user()) then
                return
            else
                translateTextCB(text, config.targetLanguageIncoming, config.translationMethodIncoming, config,
                    function(translation, sourceLang)
                        ---@type string
                        local senderName = players.get_name(sender)
                        local resultText = translation
                        ---@type number
                        local colorFinal = config.colorSelect
                        local translatedMsgLocation = config.translatedMsgLocation
                        ---@type string
                        local teamChatLabel = config.teamChatLabel
                        ---@type string
                        local allChatLabel = config.allChatLabel
                        if config.blacklistedLanguages[sourceLang] == true then
                            return
                        end
                        -- "Team Chat not networked", "Team Chat networked", "Global Chat not networked", "Global Chat networked", "Notification"
                        if (translatedMsgLocation == 1) then
                            drawScaleformMultiplayerChat(senderName, resultText, teamChatLabel, false, colorFinal)
                        end
                        if (translatedMsgLocation == 2) then
                            botSend = true
                            -- void chat.send_message(string text, bool team_chat, bool add_to_local_history, bool networked)
                            -- add_to_local_history set to false so that the message doesn't appear twice
                            chat.send_message(senderName .. " : " .. resultText, true, false, true)
                            drawScaleformMultiplayerChat(senderName, resultText, teamChatLabel, false, colorFinal)
                        end
                        if (translatedMsgLocation == 3) then
                            drawScaleformMultiplayerChat(senderName, resultText, allChatLabel, false, colorFinal)
                        end
                        if (translatedMsgLocation == 4) then
                            botSend = true
                            -- Ref : void chat.send_message(string text, bool team_chat, bool add_to_local_history, bool networked)
                            chat.send_message(senderName .. " : " .. resultText, false, false, true)
                            drawScaleformMultiplayerChat(senderName, resultText, allChatLabel, false, colorFinal)
                        end
                        if (translatedMsgLocation == 5) then
                            polyglotUtils.toast(senderName .. " : " .. resultText)
                        end
                        if (translatedMsgLocation == 6) then
                            display_popup(senderName, resultText, sourceLang)
                        end
                    end)
            end
        end
        botSend = false
    end
end

function moduleExports.sendMessage(myText, config, translateTextCB)
    translateTextCB(myText, config.targetLanguageOutgoing, config.translationMethodOutgoing, config,
        function(translation, sourceLang)
            -- for _, pId in ipairs(players.list()) do
            --     chat.send_targeted_message(pId, players.user(), translation, false)
            -- end
            -- void chat.send_message(string text, bool team_chat, bool add_to_local_history, bool networked)
            chat.send_message(translation, false, true, true)
            util.log("Message sent: " .. translation)
        end)
end

return moduleExports
 end)
package.preload['src.lib.localization'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				-- package.loaded["src.lib.localization"] = nil
local engTranslations = {
	noInternetAccess = "To use Polyglot Translator, please enable internet access",
	checkForUpdates = "Check for updates",
	checkForUpdatesD = "Check for updates for Polyglot Translator",
	updateInProgress = "Update in progress...",
	updating = "Updating...",
	failedToUpdate = "Failed to update the script file.",
	unexpectedResponse = "Unexpected update file. Local file will stay unchanged.",
	failedToDownloadFromGitHub = "Failed to download from GitHub.",
	changelog = "Changelog",
	noUpdatesAvailable = "No updates available.",
	chatGPTSettings = "ChatGPT Settings",
	chatGPTSettingsD = "ChatGPT Settings",
	apiKeyInput = "API Key",
	apiKeyInputD = "Enter your API key",
	chatGPTPromptPreset = "ChatGPT Prompt Preset",
	chatGPTPromptPresetD = "Choose the prompt preset for ChatGPT",
	temperature = "Temperature",
	temperatureD =
	"What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or top p but not both. (Default: 1)",
	topP = "Top P",
	topPD =
	"Number between 0 and 1. An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered. We generally recommend altering this or temperature but not both. (Default: 1)",
	presencePenalty = "Presence Penalty",
	presencePenaltyD =
	"Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics. (Default: 0)",
	frequencyPenalty = "Frequency Penalty",
	frequencyPenaltyD =
	"Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim. (Default: 0)",

	translatorListenerOn = "Translator Listener On",
	translatorListenerOnD = "Translator will listen to incoming messages and translate",
	translateYourself = "Translate Own Messages",
	translateYourselfD = "Translate messages sent by yourself",
	translatedMessageDisplay = "Translated Message Display",
	translatedMessageDisplayD = "Location of translated Message. You need to click to apply change",
	scriptSettings = "Other Settings For Polyglot Translator",
	scriptSettingsD = "Including color settings and updates",
	playerNameColor = "Player Name Color",
	customLabelForTeamTranslationD = "Leaving it blank will revert it to the original label",
	customLabelForAllTranslationD = "Leaving it blank will revert it to the original label",
	translatorListenerBlacklist = "Translator Listener Blacklist",
	translatorListenerBlacklistD = "Ignore messages in languages toggled on in this list",
	translationMethod = "Translation Method",
	translationMethodD = "Choose the translation method",
	incomingMessages = "Incoming Messages",
	incomingMessagesD = "Choose the translation method for incoming messages",
	outgoingMessages = "Outgoing Messages",
	outgoingMessagesD = "Choose the translation method for outgoing messages",
	targetLanguageIncoming = "Target Language Incoming",
	targetLanguageIncomingD = "Language to translate incoming messages to. You need to click to apply change",
	sendTranslatedMessage = "Send Translated Message",
	targetLanguageOutgoing = "Target Language Outgoing",
	targetLanguageOutgoingD = "Language to translate your messages to. You need to click to apply change",
	sendMessage = "Send Message",
	sendMessageD = "Input the text for your message",
	inputMessage = "Please input your message",
	translatedMsgLocationOptions = {
		teamChatNotNetworked = "Team Chat not networked",
		teamChatNetworked = "Team Chat networked",
		globalChatNotNetworked = "Global Chat not networked",
		globalChatNetworked = "Global Chat networked",
		notification = "Stand Notification",
		popup = "Popup",
	},
	templates = {
		-- Example: "ChatGPT Prompt Preset changed to {arg1} "
		updateSuccessful = "Update successful, current version: {arg1}",
		apiKeyNotSet = "API key not set. Please enter your API key in the settings",
		errorTranslating = "Error translating, Original message: {arg1}, Status code: {arg2}",
		errorConnectingToChatGPTAPI = "Error connecting to ChatGPT API",
		chatGPTPromptChangedTo = "ChatGPT Prompt Preset changed to {arg1}",
		selectedColor = "Selected color: {arg1}",
		customLabelForTeamTranslation = "Custom Label For [{arg1}] Translation",
		customLabelForAllTranslation = "Custom Label For [{arg1}] Translation",
		translationMethodIncomingChangedTo = "Translation Method Incoming changed to {arg1}",
		translationMethodOutgoingChangedTo = "Translation Method Outgoing changed to {arg1}"
	}
}
local esTranslations  = {
	noInternetAccess = "Para usar Polyglot Translator, habilite el acceso a internet",
	checkForUpdates = "Buscar actualizaciones",
	checkForUpdatesD = "Buscar actualizaciones para Polyglot Translator",
	updateInProgress = "Actualización en curso...",
	updating = "Actualizando...",
	failedToUpdate = "Error al actualizar el archivo de script.",
	unexpectedResponse = "Archivo de actualización inesperado. El archivo local no cambiará.",
	failedToDownloadFromGitHub = "Error al descargar desde GitHub.",
	noUpdatesAvailable = "No hay actualizaciones disponibles.",
	changelog = "Registro de cambios",
	chatGPTSettings = "Ajustes de ChatGPT",
	chatGPTSettingsD = "Ajustes de ChatGPT",
	apiKeyInput = "Clave API",
	apiKeyInputD = "Ingrese su clave API",
	chatGPTPromptPreset = "Preajuste de indicaciones de ChatGPT",
	chatGPTPromptPresetD = "Elija el preajuste de indicaciones para ChatGPT",
	temperature = "Temperatura",
	temperatureD =
	"La temperatura de muestreo a utilizar, entre 0 y 2. Valores más altos como 0.8 harán que la salida sea más aleatoria, mientras que valores más bajos como 0.2 la harán más enfocada y determinista. Generalmente recomendamos alterar esto o el top p pero no ambos. (Por defecto: 1)",
	topP = "Top P",
	topPD =
	"Número entre 0 y 1. Una alternativa al muestreo con temperatura, llamada muestreo del núcleo, donde el modelo considera los resultados de los tokens con la masa de probabilidad top p. Entonces, 0.1 significa que solo se consideran los tokens que comprenden el 10% superior de la masa de probabilidad. Generalmente recomendamos alterar esto o la temperatura, pero no ambos. (Por defecto: 1)",
	presencePenalty = "Penalización de presencia",
	presencePenaltyD =
	"Número entre -2.0 y 2.0. Los valores positivos penalizan los nuevos tokens según si aparecen en el texto hasta ahora, aumentando la probabilidad del modelo de hablar sobre nuevos temas. (Por defecto: 0)",
	frequencyPenalty = "Penalización de frecuencia",
	frequencyPenaltyD =
	"Número entre -2.0 y 2.0. Los valores positivos penalizan los nuevos tokens según su frecuencia existente en el texto hasta ahora, disminuyendo la probabilidad del modelo de repetir la misma línea textual. (Por defecto: 0)",

	translatorListenerOn = "Escucha del traductor activada",
	translatorListenerOnD = "El traductor escuchará los mensajes entrantes y los traducirá",
	translateYourself = "Traducir mensajes propios",
	translateYourselfD = "Traducir mensajes enviados por usted mismo",
	translatedMessageDisplay = "Visualización del mensaje traducido",
	translatedMessageDisplayD = "Ubicación del mensaje traducido. Debe hacer clic para aplicar el cambio",
	scriptSettings = "Otros ajustes para Polyglot Translator",
	scriptSettingsD = "Incluyendo ajustes de color y actualizaciones",
	playerNameColor = "Color del nombre del jugador",
	customLabelForTeamTranslationD = "Dejar en blanco volverá a la etiqueta original",
	customLabelForAllTranslationD = "Dejar en blanco volverá a la etiqueta original",
	translatorListenerBlacklist = "Lista negra del escucha del traductor",
	translatorListenerBlacklistD = "Ignorar mensajes en idiomas activados en esta lista",
	translationMethod = "Método de traducción",
	translationMethodD = "Elija el método de traducción",
	incomingMessages = "Mensajes entrantes",
	incomingMessagesD = "Elija el método de traducción para mensajes entrantes",
	outgoingMessages = "Mensajes salientes",
	outgoingMessagesD = "Elija el método de traducción para mensajes salientes",
	targetLanguageIncoming = "Idioma objetivo entrante",
	targetLanguageIncomingD = "Idioma para traducir mensajes entrantes. Debe hacer clic para aplicar el cambio",
	sendTranslatedMessage = "Enviar mensaje traducido",
	targetLanguageOutgoing = "Idioma objetivo saliente",
	targetLanguageOutgoingD = "Idioma para traducir sus mensajes. Debe hacer clic para aplicar el cambio",
	sendMessage = "Enviar mensaje",
	sendMessageD = "Ingrese el texto para su mensaje",
	inputMessage = "Por favor ingrese su mensaje",
	translatedMsgLocationOptions = {
		teamChatNotNetworked = "Chat de equipo no conectado en red",
		teamChatNetworked = "Chat de equipo conectado en red",
		globalChatNotNetworked = "Chat global no conectado en red",
		globalChatNetworked = "Chat global conectado en red",
		notification = "Notificación estándar",
		popup = "Ventana emergente",
	},
	templates = {
		-- Example: "ChatGPT Prompt Preset changed to {arg1} "
		updateSuccessful = "Actualización exitosa, versión actual: {arg1}",
		apiKeyNotSet = "Clave API no establecida. Ingrese su clave API en la configuración",
		errorTranslating = "Error al traducir, Mensaje original: {arg1}, Código de estado: {arg2}",
		errorConnectingToChatGPTAPI = "Error al conectar con la API de ChatGPT",
		chatGPTPromptChangedTo = "Preajuste de indicaciones de ChatGPT cambiado a {arg1}",
		selectedColor = "Color seleccionado: {arg1}",
		customLabelForTeamTranslation = "Etiqueta personalizada para la traducción de [{arg1}]",
		customLabelForAllTranslation = "Etiqueta personalizada para la traducción de [{arg1}]",
		translationMethodIncomingChangedTo = "Método de traducción entrante cambiado a {arg1}",
		translationMethodOutgoingChangedTo = "Método de traducción saliente cambiado a {arg1}"
	}
}

local frTranslations  = {
	noInternetAccess = "Pour utiliser Polyglot Translator, veuillez activer l'accès à Internet",
	checkForUpdates = "Vérifier les mises à jour",
	checkForUpdatesD = "Vérifier les mises à jour pour Polyglot Translator",
	updateInProgress = "Mise à jour en cours...",
	updating = "Mise à jour...",
	failedToUpdate = "Échec de la mise à jour du fichier de script.",
	unexpectedResponse = "Fichier de mise à jour inattendu. Le fichier local restera inchangé.",
	failedToDownloadFromGitHub = "Échec du téléchargement depuis GitHub.",
	changelog = "Changelog",
	noUpdatesAvailable = "Aucune mise à jour disponible.",
	chatGPTSettings = "Paramètres ChatGPT",
	chatGPTSettingsD = "Paramètres ChatGPT",
	apiKeyInput = "Clé API",
	apiKeyInputD = "Entrez votre clé API",
	chatGPTPromptPreset = "Préréglage d'invite ChatGPT",
	chatGPTPromptPresetD = "Choisissez le préréglage d'invite pour ChatGPT",
	temperature = "Température",
	temperatureD =
	"Quelle température d'échantillonnage utiliser, entre 0 et 2. Des valeurs plus élevées comme 0,8 rendront la sortie plus aléatoire, tandis que des valeurs plus basses comme 0,2 la rendront plus concentrée et déterministe. Nous recommandons généralement de modifier cela ou top p mais pas les deux. (Par défaut: 1)",
	topP = "Top P",
	topPD =
	"Nombre entre 0 et 1. Une alternative à l'échantillonnage avec température, appelée échantillonnage de noyau, où le modèle considère les résultats des jetons avec une masse de probabilité de top p. Donc, 0,1 signifie que seuls les jetons représentant les 10% de masse de probabilité les plus élevés sont pris en compte. Nous recommandons généralement de modifier cela ou la température, mais pas les deux. (Par défaut: 1)",
	presencePenalty = "Pénalité de présence",
	presencePenaltyD =
	"Nombre entre -2,0 et 2,0. Les valeurs positives pénalisent les nouveaux jetons en fonction de leur apparition dans le texte jusqu'à présent, augmentant la probabilité que le modèle parle de nouveaux sujets. (Par défaut: 0)",
	frequencyPenalty = "Pénalité de fréquence",
	frequencyPenaltyD =
	"Nombre entre -2,0 et 2,0. Les valeurs positives pénalisent les nouveaux jetons en fonction de leur fréquence existante dans le texte jusqu'à présent, diminuant la probabilité que le modèle répète la même ligne mot pour mot. (Par défaut: 0)",

	translatorListenerOn = "Écouteur de traduction activé",
	translatorListenerOnD = "Le traducteur écoutera les messages entrants et les traduira",
	translateYourself = "Traduire ses propres messages",
	translateYourselfD = "Traduire les messages envoyés par vous-même",
	translatedMessageDisplay = "Affichage du message traduit",
	translatedMessageDisplayD = "Emplacement du message traduit. Vous devez cliquer pour appliquer le changement",
	scriptSettings = "Autres paramètres pour Polyglot Translator",
	scriptSettingsD = "Y compris les paramètres de couleur et les mises à jour",
	playerNameColor = "Couleur du nom du joueur",
	customLabelForTeamTranslationD = "Le laisser vide le rétablira à l'étiquette d'origine",
	customLabelForAllTranslationD = "Le laisser vide le rétablira à l'étiquette d'origine",
	translatorListenerBlacklist = "Liste noire de l'écouteur de traduction",
	translatorListenerBlacklistD = "Ignorer les messages dans les langues activées dans cette liste",
	translationMethod = "Méthode de traduction",
	translationMethodD = "Choisissez la méthode de traduction",
	incomingMessages = "Messages entrants",
	incomingMessagesD = "Choisissez la méthode de traduction pour les messages entrants",
	outgoingMessages = "Messages sortants",
	outgoingMessagesD = "Choisissez la méthode de traduction pour les messages sortants",
	targetLanguageIncoming = "Langue cible entrante",
	targetLanguageIncomingD =
	"Langue pour traduire les messages entrants. Vous devez cliquerpour appliquer le changement",
	sendTranslatedMessage = "Envoyer le message traduit",
	targetLanguageOutgoing = "Langue cible sortante",
	targetLanguageOutgoingD = "Langue pour traduire vos messages. Vous devez cliquer pour appliquer le changement",
	sendMessage = "Envoyer le message",
	sendMessageD = "Saisissez le texte de votre message",
	inputMessage = "Veuillez saisir votre message",
	translatedMsgLocationOptions = {
		teamChatNotNetworked = "Chat d'équipe non connecté",
		teamChatNetworked = "Chat d'équipe connecté",
		globalChatNotNetworked = "Chat global non connecté",
		globalChatNetworked = "Chat global connecté",
		notification = "Stand Notification",
		popup = "Popup",
	},
	templates = {
		-- Exemple: "Préréglage d'invite ChatGPT modifié en {arg1} "
		updateSuccessful = "Mise à jour réussie, version actuelle: {arg1}",
		apiKeyNotSet = "Clé API non définie. Veuillez entrer votre clé API dans les paramètres",
		errorTranslating = "Erreur de traduction, Message original: {arg1}, Code d'état: {arg2}",
		errorConnectingToChatGPTAPI = "Erreur de connexion à l'API ChatGPT",
		chatGPTPromptChangedTo = "Préréglage d'invite ChatGPT modifié en {arg1}",
		selectedColor = "Couleur sélectionnée: {arg1}",
		customLabelForTeamTranslation = "Étiquette personnalisée pour la traduction [{arg1}]",
		customLabelForAllTranslation = "Étiquette personnalisée pour la traduction [{arg1}]",
		translationMethodIncomingChangedTo = "Méthode de traduction entrante modifiée en {arg1}",
		translationMethodOutgoingChangedTo = "Méthode de traduction sortante modifiée en {arg1}"
	}
}

local zhTranslations  = {
	noInternetAccess = "要使用多语种翻译器，请启用互联网访问",
	checkForUpdates = "检查更新",
	checkForUpdatesD = "检查多语种翻译器的更新",
	updateInProgress = "更新进行中...",
	updating = "正在更新...",
	failedToUpdate = "无法更新脚本文件。",
	unexpectedResponse = "意外的更新文件。本地文件将保持不变。",
	failedToDownloadFromGitHub = "无法从GitHub下载。",
	changeLog = "更新日志",
	noUpdatesAvailable = "没有可用的更新。",
	chatGPTSettings = "ChatGPT 设置",
	chatGPTSettingsD = "ChatGPT 设置",
	apiKeyInput = "API 密钥",
	apiKeyInputD = "输入您的 API 密钥",
	chatGPTPromptPreset = "ChatGPT 提示预设",
	chatGPTPromptPresetD = "为 ChatGPT 选择提示预设",
	temperature = "温度",
	temperatureD =
	"使用的采样温度，介于 0 和 2 之间。较高的值（如 0.8）会使输出更随机，而较低的值（如 0.2）会使其更集中和确定性。我们通常建议更改此项或顶部 p，但不要同时更改两者。（默认值：1）",
	topP = "Top P",
	topPD =
	"介于 0 和 1 之间的数字。与使用温度采样的替代方法，称为核采样，其中模型考虑具有最高 p 概率质量的标记结果。因此，0.1 意味着仅考虑包含最高 10% 概率质量的标记。我们通常建议更改此项或温度，但不要同时更改两者。（默认值：1）",
	presencePenalty = "存在惩罚",
	presencePenaltyD =
	"介于 -2.0 和 2.0 之间的数字。正值会根据它们在迄今为止的文本中的出现情况对新标记进行惩罚，从而增加模型谈论新主题的可能性。（默认值：0）",
	frequencyPenalty = "频率惩罚",
	frequencyPenaltyD =
	"介于 -2.0 和 2.0 之间的数字。正值会根据它们在迄今为止的文本中的频率对新标记进行惩罚，从而降低模型重复相同行的可能性。（默认值：0）",

	translatorListenerOn = "翻译器监听器已开启",
	translatorListenerOnD = "翻译器将监听传入的消息并进行翻译",
	translateYourself = "翻译自己的消息",
	translateYourselfD = "翻译您自己发送的消息",
	translatedMessageDisplay = "已翻译消息显示",
	translatedMessageDisplayD = "翻译后的消息位置。您需要点击以应用更改",
	scriptSettings = "多语种翻译器的其他设置",
	scriptSettingsD = "包括颜色设置和更新",
	playerNameColor = "玩家名字颜色",
	customLabelForTeamTranslationD = "将其留空将还原为原始标签",
	customLabelForAllTranslationD = "将其留空将还原为原始标签",
	translatorListenerBlacklist = "翻译器监听器黑名单",
	translatorListenerBlacklistD = "在此列表中切换为开启的语言的消息将被忽略",
	translationMethod = "翻译方法",
	translationMethodD = "选择翻译方法",
	incomingMessages = "传入的消息",
	incomingMessagesD = "选择传入消息的翻译方法",
	outgoingMessages = "发出的消息",
	outgoingMessagesD = "选择发出消息的翻译方法",
	targetLanguageIncoming = "传入消息的目标语言",
	targetLanguageIncomingD = "您需要点击以应用更改",
	sendTranslatedMessage = "发送翻译后的消息",
	targetLanguageOutgoing = "发出消息的目标语言",
	targetLanguageOutgoingD = "您发送的消息的最终语言。您需要点击以应用更改",
	sendMessage = "发送消息",
	sendMessageD = "输入您要发送的消息文本",
	inputMessage = "请输入您的消息",
	translatedMsgLocationOptions = {
		teamChatNotNetworked = "团队聊天未联网",
		teamChatNetworked = "团队聊天已联网",
		globalChatNotNetworked = "全球聊天未联网",
		globalChatNetworked = "全球聊天已联网",
		notification = "Stand通知",
		popup = "气泡弹窗",
	},
	templates = {
		-- 示例："ChatGPT 提示预设更改为 {arg1} "
		updateSuccessful = "更新成功，当前版本：{arg1}",
		apiKeyNotSet = "API 密钥未设置。请在设置中输入您的 API 密钥",
		errorTranslating = "翻译错误，原始消息：{arg1}，状态代码：{arg2}",
		errorConnectingToChatGPTAPI = "连接 ChatGPT API 错误",
		chatGPTPromptChangedTo = "ChatGPT 提示预设更改为 {arg1}",
		selectedColor = "已选择颜色：{arg1}",
		customLabelForTeamTranslation = "自定义 [{arg1}] 翻译标签",
		customLabelForAllTranslation = "自定义 [{arg1}] 翻译标签",
		translationMethodIncomingChangedTo = "传入消息的翻译方法更改为 {arg1}",
		translationMethodOutgoingChangedTo = "发出消息的翻译方法更改为 {arg1}"
	}
}

local jaTranslations  = {
	noInternetAccess = "Polyglot Translatorを使用するには、インターネットアクセスを有効にしてください",
	checkForUpdates = "更新を確認",
	checkForUpdatesD = "Polyglot Translatorの更新を確認",
	updateInProgress = "更新中...",
	updating = "更新しています...",
	failedToUpdate = "スクリプトファイルの更新に失敗しました。",
	unexpectedResponse = "予期しない更新ファイル。ローカルファイルは変更されません。",
	failedToDownloadFromGitHub = "GitHubからのダウンロードに失敗しました。",
	changeLog = "変更履歴",
	noUpdatesAvailable = "利用可能な更新はありません。",
	chatGPTSettings = "ChatGPT設定",
	chatGPTSettingsD = "ChatGPT設定",
	apiKeyInput = "APIキー",
	apiKeyInputD = "APIキーを入力してください",
	chatGPTPromptPreset = "ChatGPTプロンプトプリセット",
	chatGPTPromptPresetD = "ChatGPTのプロンプトプリセットを選択",
	temperature = "温度",
	temperatureD =
	"0から2までの範囲でサンプリング温度を使用します。0.8のような高い値は出力をランダムにし、0.2のような低い値は出力を集中的かつ決定的にします。一般的に、これまたはトップpを変更することをお勧めしますが、両方は変更しないでください。(デフォルト：1)",
	topP = "トップP",
	topPD =
	"0から1までの数値。温度でサンプリングする代わりに、核サンプリングと呼ばれる方法で、モデルはトップp確率質量のトークンの結果を検討します。したがって、0.1は、トップ10％の確率質量を構成するトークンのみが考慮されることを意味します。一般的に、これまたは温度を変更することをお勧めしますが、両方は変更しないでください。(デフォルト：1)",
	presencePenalty = "出現ペナルティ",
	presencePenaltyD =
	"-2.0から2.0までの数値。正の値は、これまでのテキストに表示されるかどうかに基づいて新しいトークンにペナルティを与え、モデルが新しいトピックについて話す可能性を高めます。(デフォルト：0)",
	frequencyPenalty = "頻度ペナルティ",
	frequencyPenaltyD =
	"-2.0から2.0までの数値。正の値は、これまでのテキストでの既存の頻度に基づいて新しいトークンにペナルティを与え、モデルが同じ行を逐語的に繰り返す可能性を減らします。(デフォルト：0)",

	translatorListenerOn = "翻訳リスナーオン",
	translatorListenerOnD = "翻訳者は着信メッセージをリッスンして翻訳します",
	translateYourself = "自分のメッセージを翻訳する",
	translateYourselfD = "自分が送信したメッセージを翻訳する",
	translatedMessageDisplay = "翻訳されたメッセージの表示",
	translatedMessageDisplayD = "翻訳されたメッセージの場所。変更を適用するにはクリックする必要があります",
	scriptSettings = "Polyglot Translatorのその他の設定",
	scriptSettingsD = "カラー設定や更新を含む",
	playerNameColor = "プレイヤー名の色",
	customLabelForTeamTranslationD = "空白にすると、元のラベルに戻ります",
	customLabelForAllTranslationD = "空白にすると、元のラベルに戻ります",
	translatorListenerBlacklist = "翻訳リスナーブラックリスト",
	translatorListenerBlacklistD = "このリストでオンに切り替えられた言語のメッセージを無視する",
	translationMethod = "翻訳方法",
	translationMethodD = "翻訳方法を選択してください",
	incomingMessages = "受信メッセージ",
	incomingMessagesD = "受信メッセージの翻訳方法を選択してください",
	outgoingMessages = "送信メッセージ",
	outgoingMessagesD = "送信メッセージの翻訳方法を選択してください",
	targetLanguageIncoming = "受信メッセージのターゲット言語",
	targetLanguageIncomingD = "受信メッセージを翻訳する言語。変更を適用するにはクリックする必要があります",
	sendTranslatedMessage = "翻訳されたメッセージを送信",
	targetLanguageOutgoing = "送信メッセージのターゲット言語",
	targetLanguageOutgoingD = "あなたのメッセージを翻訳する言語。変更を適用するにはクリックする必要があります",
	sendMessage = "メッセージを送信",
	sendMessageD = "メッセージのテキストを入力してください",
	inputMessage = "メッセージを入力してください",
	translatedMsgLocationOptions = {
		teamChatNotNetworked = "ネットワーク化されていないチームチャット",
		teamChatNetworked = "ネットワーク化されたチームチャット",
		globalChatNotNetworked = "ネットワーク化されていないグローバルチャット",
		globalChatNetworked = "ネットワーク化されたグローバルチャット",
		notification = "スタンド通知",
		popups = "ポップアップ",
	},
	templates = {
		-- 例："ChatGPTプロンプトプリセットが{arg1}に変更されました"
		updateSuccessful = "更新が成功しました、現在のバージョン：{arg1}",
		apiKeyNotSet = "APIキーが設定されていません。設定でAPIキーを入力してください",
		errorTranslating = "翻訳エラー、元のメッセージ：{arg1}、ステータスコード：{arg2}",
		errorConnectingToChatGPTAPI = "ChatGPT APIへの接続エラー",
		chatGPTPromptChangedTo = "ChatGPTプロンプトプリセットが{arg1}に変更されました",
		selectedColor = "選択された色：{arg1}",
		customLabelForTeamTranslation = "[{arg1}]翻訳のカスタムラベル",
		customLabelForAllTranslation = "[{arg1}]翻訳のカスタムラベル"
	}
}
local languages       = { "en", "es", "fr", "zh", "ja" }
local translations    = {
	en = engTranslations,
	es = esTranslations,
	fr = frTranslations,
	zh = zhTranslations,
	ja = jaTranslations
}
function merge(t1, t2)
	for k, v in pairs(t2) do
		if (type(v) == "table") and (type(t1[k] or false) == "table") then
			merge(t1[k], t2[k])
		else
			t1[k] = v
		end
	end
	return t1
end

if table.contains(languages, lang.get_current()) then
	return merge(translations.en, translations[lang.get_current()])
else
	return translations.en
end
 end)
package.preload['src.lib.menus'] = (function (...)
					local _ENV = _ENV;
					local function module(name, ...)
						local t = package.loaded[name] or _ENV[name] or { _NAME = name };
						package.loaded[name] = t;
						for i = 1, select("#", ...) do
							(select(i, ...))(t);
						end
						_ENV = t;
						_M = t;
						return t;
					end
				-- package.loaded["src.lib.menus"] = nil
util.keep_running()
local polyglotUpdater = require "src.lib.updater"
local polyglotUtils = require "src.lib.utils"
local LOC = require "src.lib.localization"
local polyglotChat = require "src.lib.chat"
local polyglotTranslation = require "src.lib.translation"
local Config = require("src.lib.config").Config
local config = Config:new()

local natives = require "src.natives.natives"

---@type CommandRef
local CommandRef = require("src.docs.CommandRef")

if not async_http.have_access() then
    polyglotUtils.toast(LOC.noInternetAccess)
    util.stop_script()
end

polyglotUpdater.runUpdater(0)

config.translationMethodIncoming = "Google Translate"
config.translationMethodOutgoing = "Google Translate"
config.targetLanguageIncoming = "af"
config.targetLanguageOutgoing = "af"

config.blacklistedLanguages = {}

config.chatGPTPromptPreset = "Basic"
config.temperature = 1.0
config.topP = 1.0
config.presencePenalty = 0.0
config.frequencyPenalty = 0.0

config.translateOn = true
config.translateSelf = false

config.translatedMsgLocation = 5

config.colorSelect = 1
config.allChatLabel = util.get_label_text("MP_CHAT_ALL")
config.teamChatLabel = util.get_label_text("MP_CHAT_TEAM")

local focusRef = {}
local isFocused = false

menu.toggle(menu.my_root(), LOC.translatorListenerOn, { "translateon" },
    LOC.translatorListenerOnD, function(on)
        config.translateOn = on
    end, true)

menu.toggle(menu.my_root(), LOC.translateYourself, { "translateself" }, LOC.translateYourselfD, function(on)
    config.translateSelf = on
end)

menu.my_root():list_select(LOC.translatedMessageDisplay, {},
    LOC.translatedMessageDisplayD, config.TranslatedMsgLocationOptions, #config.TranslatedMsgLocationOptions,
    function(index, option, prevIndex, clickType)
        config.translatedMsgLocation = index
    end)

-- CommandRef|CommandUniqPtr menu.list(CommandRef parent, Label menu_name, table<any, string> command_names = {}, Label help_text = "", ?function on_click = nil, ?function on_back = nil, ?function on_active_list_update = nil)
local settingTranslationMenu = menu.list(menu.my_root(), LOC.scriptSettings, {},
    LOC.scriptSettingsD)
local colorTranslation = menu.list(settingTranslationMenu, LOC.playerNameColor)
menu.on_focus(colorTranslation, function()
    util.yield(50)
    isFocused = false
end)
local selectMenu = menu.action(colorTranslation,
    polyglotUtils.templateReplace(LOC.templates.selectedColor, config.colorSelect), {},
    "", function()
        menu.focus(focusRef[tonumber(config.colorSelect)])
    end)
menu.on_focus(selectMenu, function()
    util.yield(50)
    isFocused = false
end)
for i = 1, 234 do
    focusRef[i] = menu.action(colorTranslation, "Color : " .. i, {}, "", function()
        menu.set_menu_name(selectMenu, "Selected : " .. "Color : " .. i)
        config.colorSelect = i
    end)
    menu.on_focus(focusRef[i], function()
        isFocused = false
        util.yield(50)
        isFocused = true
        while isFocused do
            if not menu.is_open() then
                isFocused = false
            end
            ptr1 = memory.alloc()
            ptr2 = memory.alloc()
            ptr3 = memory.alloc()
            ptr4 = memory.alloc()
            natives.HUD.GET_HUD_COLOUR(i, ptr1, ptr2, ptr3, ptr4)
            directx.draw_text(0.5, 0.5, "example", 5, 0.75,
                {
                    r = memory.read_int(ptr1) / 255,
                    g = memory.read_int(ptr2) / 255,
                    b = memory.read_int(ptr3) / 255,
                    a = memory.read_int(ptr4) / 255
                }, true)
            util.yield()
        end
    end)
end

menu.text_input(settingTranslationMenu,
    polyglotUtils.templateReplace(LOC.templates.customLabelForTeamTranslation,
        string.upper(util.get_label_text("MP_CHAT_TEAM"))), { "labelteam" },
    LOC.customLabelForTeamTranslationD, function(s, click_type)
        if (s == "") then
            config.teamChatLabel = util.get_label_text("MP_CHAT_TEAM")
        else
            config.teamChatLabel = s
        end
    end)
if not (config.teamChatLabel == util.get_label_text("MP_CHAT_TEAM")) then
    menu.trigger_commands("labelteam " .. config.teamChatLabel)
end

menu.text_input(settingTranslationMenu,
    polyglotUtils.templateReplace(LOC.templates.customLabelForAllTranslation,
        string.upper(util.get_label_text("MP_CHAT_ALL"))), { "labelall" },
    LOC.customLabelForAllTranslationD, function(s, click_type)
        if (s == "") then
            config.allChatLabel = util.get_label_text("MP_CHAT_ALL")
        else
            config.allChatLabel = s
        end
    end)
if not (config.teamChatLabel == util.get_label_text("MP_CHAT_TEAM")) then
    menu.trigger_commands("labelall " .. config.allChatLabel)
end
-- CommandRef|CommandUniqPtr menu.action(CommandRef parent, Label menu_name, table<any, string> command_names, Label help_text, function on_click, ?function on_command = nil, ?string syntax = nil, int perm = COMMANDPERM_USERONLY)
local updateActionRef = menu.action(settingTranslationMenu, LOC.checkForUpdates, {}, "", polyglotUpdater.runUpdater)

local blacklistMenu = menu.list(menu.my_root(), LOC.translatorListenerBlacklist, {},
    LOC.translatorListenerBlacklistD)
-- CommandRef|CommandUniqPtr menu.toggle(CommandRef parent, Label menu_name, table<any, string> command_names, Label help_text, function on_change, bool default_on = false)
for i, langKey in ipairs(config.LangKeyList) do
    config.blacklistedLanguages[langKey] = false
    blacklistMenu:toggle(config.LangLookupByKey[langKey], {}, "", function(on)
        config.blacklistedLanguages[langKey] = on
    end, false)
end

local translationMethodMenu = menu.list(menu.my_root(), LOC.translationMethod, {}, LOC.translationMethodD)


translationMethodMenu:list_select(LOC.incomingMessages, {},
    LOC.incomingMessagesD, config.TranslationMethodOptions, 1,
    function(index, option, prevIndex, clickType)
        polyglotUtils.toast(LOC.templates.translationMethodIncomingChangedTo, option)
        config.translationMethodIncoming = option
    end)

local translationMethodOutgoingMenu = menu.list_select(translationMethodMenu, LOC.outgoingMessages, {},
    LOC.outgoingMessagesD, config.TranslationMethodOptions, 1,
    function(index, option, prevIndex, clickType)
        polyglotUtils.toast(LOC.templates.translationMethodOutgoingChangedTo, option)
        config.translationMethodOutgoing = option
    end)

local targetLanguageIncomingMenu = menu.list_select(menu.my_root(), LOC.targetLanguageIncoming, { "inlang" },
    LOC.targetLanguageIncomingD,
    config.LangNameList, 1, function(index, option, prevIndex, clickType)
        config.targetLanguageIncoming = config.LangLookupByName[option]
    end)

---@type CommandRef
local translateMyMsg = menu.list(menu.my_root(), LOC.sendTranslatedMessage)

translateMyMsg:list_select(LOC.targetLanguageOutgoing, { "outlang" },
    LOC.targetLanguageOutgoingD, config.LangNameList, 1,
    function(index, option, prevIndex, clickType)
        config.targetLanguageOutgoing = config.LangLookupByName[option]
    end)

translateMyMsg:action(LOC.sendMessage, { "Sendmessage" }, LOC.sendMessageD, function(on_click)
    polyglotUtils.toast(LOC.inputMessage)
    menu.show_command_box("Sendmessage ")
end, function(on_command)
    local myText = on_command
    polyglotChat.sendMessage(myText, config, polyglotTranslation.translateText)
end)
-- int chat.on_message(function callback)
--     Registers a function to be called when a chat message is sent:

--     chat.on_message(function(sender, reserved, text, team_chat, networked, is_auto)
--         -- Do stuff...
--     end)
chat.on_message(polyglotChat.createOnMessageCallback(config, polyglotTranslation.translateText))

local chatGPTSettingsMenu = menu.list(menu.my_root(), LOC.chatGPTSettings, {},
    LOC.chatGPTSettingsD)

chatGPTSettingsMenu:text_input(LOC.apiKeyInput, { "gptkey" },
    LOC.apiKeyInputD,
    function(value, click_type)
        config.apiKey = value
    end)

chatGPTSettingsMenu:list_select(LOC.chatGPTPromptPreset,
    {},
    LOC.chatGPTPromptPresetD, polyglotTranslation.getChatGPTPromptPresetsOptions(), 1,
    function(index, option, prevIndex, click_type)
        config.chatGPTPromptPreset = option
        polyglotUtils.toast(LOC.templates.chatGPTPromptChangedTo, config.chatGPTPromptPreset)
    end)

--CommandRef|CommandUniqPtr menu.slider_float(CommandRef parent, Label menu_name, table<any, string> command_names, Label help_text, int min_value, int max_value, int default_value, int step_size, function on_change)
--Your on_change function will be called with value, prev_value and click_type.
--
--Note that the float variant is practically identical except the last 2 digits are indicated to be numbers after the decimal point.

chatGPTSettingsMenu:slider_float(LOC.temperature, {},
    LOC.temperatureD,
    0, 200, 100, 10, function(value, prev_value, click_type)
        config.temperature = value / 100
    end)

chatGPTSettingsMenu:slider_float(LOC.topP, {},
    LOC.topPD,
    0, 100, 100, 5, function(value, prev_value, click_type)
        config.topP = value / 100
    end)

chatGPTSettingsMenu:slider_float(LOC.presencePenalty, {},
    LOC.presencePenaltyD,
    -200, 200, 0, 10, function(value, prev_value, click_type)
        config.presencePenalty = value / 100
    end)

chatGPTSettingsMenu:slider_float(LOC.frequencyPenalty, {},
    LOC.frequencyPenaltyD,
    -200, 200, 0, 10, function(value, prev_value, click_type)
        config.frequencyPenalty = value / 100
    end)
 end)
local menus = require "src.lib.menus"