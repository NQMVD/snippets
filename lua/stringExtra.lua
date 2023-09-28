local meta = getmetatable("") -- get the string metatable

meta.__add = function(a,b) -- the + operator
    return a..b
end

meta.__sub = function(a,b) -- the - operator
    return a:gsub(b,"")
end

meta.__mul = function(a,b) -- the * operator
    return a:rep(b)
end

-- if you have string.explode (check out the String exploding snippet) you can also add this:
meta.__div = function(a,b) -- the / operator
    return a:explode(b)
end

meta.__index = function(a,b) -- if you attempt to do string[id]
    if type(b) ~= "number" then
        return string[b]
    end
    return a:sub(b,b)
end

print("foo" + "bar") --> foobar
print("foo the bar" - " the ") --> foobar
print("repetition is repetetive " * 3) --> repetition is repetetive repetition is repetetive repetition is repetetive 
tbl = "foo bar" / " "
print(tbl[1]) --> foo
mystring = "abc"
print(mystring[2]) --> b
