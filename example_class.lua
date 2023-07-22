---@class example_class
---@field public_property number
---@field _private_property string
---@field get_private_property function
---@field set_private_property function
example_class_1 = {

}


---@param pub_number number
---@return example_class
---@nodiscard
example_class_1.new = function(pub_number) -- public static method, btw
    local self = {}


    ---@type number
    self.public_property = pub_number


    ---@private
    ---@type string
    local _private_property = "secret"


    ---@public
    ---@return string
    ---@nodiscard
    function self.get_private_property()
        if self.public_property == 32 then
            return "not private proprety"
        else
            return _private_property
        end
    end


    ---@public
    ---@param new_property string
    ---@return nil
    function self.set_private_property(new_property)
        _private_property = new_property
    end


    ---@private
    local function private_function()
        print("Inside Private Function")
    end

    return self
end
