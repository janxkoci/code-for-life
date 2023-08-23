n = 0
l = 0

for line in io.lines() do
    --list = {next=list, value=line}
    if (string.find(line, ">")) then
        n = n + 1
    else
        l = l + string.len(line)
    end
end

print(l/n)
