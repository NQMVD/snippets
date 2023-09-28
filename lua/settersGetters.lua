local mt = {
    __index = function(self, index)
        if index == "property" then
            return rawget(self, "__properties")
        end
        local tt = rawget(self, "__properties")[index]
        return tt.__get(tt)
    end,
    __newindex = function(self, index, value)
        local tt = rawget(self, "__properties")[index]
        tt.__set(tt, value)
    end
}

function list()
    local t = { __properties = {} }
    setmetatable(t, mt)
    return t
end

local t = list()

t.property.test = {
    __value = 33,
    __get = function(self)
        return self.__value.." | get"
    end,
    __set = function(self, value)
        self.__value = value * 2
    end
}

t.test = 5
print(t.test)