local reg = getreg()
for i, Function in next, reg do
    if typeof(Function) == 'function' then
        local info = debug.getinfo(Function)

        if info.name == 'kick' then
            if (hookfunction(info.func, function(...)end)) then
                print'succesfully hooked the kick
            else
                print'kick failed to hook'
            end
        end
    end
end