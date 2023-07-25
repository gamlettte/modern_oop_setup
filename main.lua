require("example_class");

---@type example_class
local instance = example_class:new(42)


---@type string
local a = instance:get_private_property()
assert(a)

---@type string
local test_string = "hello"

instance:set_private_property(test_string)

---@type string
local b = instance:get_private_property()

assert(a == "secret")
print(b)
assert(b == test_string)
