--- @since 26.1.22
--- @class Options Plugin options
--- @field linemodes table List of linemodes to cycle

local DEFAULT_LINEMODES = { "size", "btime", "mtime", "owner", "permissions", "none" }

--- @sync entry
local function entry(self, _)
	self.linemode = (self.linemode + 1 % #self.linemodes)
	ya.emit("linemode", { self.linemodes[self.linemode] })
end

--- @param opts Options
local function setup(self, opts)
	self.linemode = 0
	self.linemodes = opts and opts.linemodes or DEFAULT_LINEMODES
	ya.dbg("linemodes", self.linemodes)
end

return { entry = entry, setup = setup }
