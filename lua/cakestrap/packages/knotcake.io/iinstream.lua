local self = {}
IO.IInStream = Class (self, IO.IBaseStream)

function self:ctor ()
end

function self:Read (length)
	Error ("IInStream:Read : Not implemented.")
end

function self:ToStreamReader ()
	return IO.BufferedStreamReader (self)
end
