---@class example_class
---@field private __index any
---@field public public_property number
---@field private _private_property string
example_class = {}


---@param pub_number number to set into storage
---@return example_class
---@nodiscard
function example_class:new(pub_number) -- public static method, btw

    setmetatable({}, self)
    self.__index = self

    self.public_property = pub_number

    self._private_property = "secret"

    return self
end


---@public
---@return string
---@nodiscard
function example_class:get_private_property()
    assert(self.public_property)
    assert(self._private_property)

    if self.public_property == 32 then
        return "not private proprety"
    else
        return self._private_property
    end
end


---@public
---@param new_property string
---@return nil
function example_class:set_private_property(new_property)
    self._private_property = new_property
end


---@private
---@return nil
function example_class:private_function()
end
