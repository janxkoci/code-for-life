local n, l = 0, 0
for line in io.lines() do
    if (line:sub(1, 1) == '>') then -- line:sub(1, 1) == '>'; string.find(line, ">")
        n = n + 1
    else
        l = l + #line -- string.len(line)
    end
end
print(l/n)
