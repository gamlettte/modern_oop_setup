require("example_class");

local instance = example_class_1.new(42)

-- Prints 42
print(instance.public_property)
local a = instance:get_private_property()
print(a)
instance:set_private_property("hello")
local b = instance:get_private_property()
print(a == b)

print("hello world")
