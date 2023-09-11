local n, l = 0, 0
for line in io.lines() do
    if (string.find(line, ">")) then
        n = n + 1
    else
        l = l + #line -- string.len(line)
    end
end
print(l/n)
