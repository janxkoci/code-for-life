-- count uniq values in a column of a file

-- https://stackoverflow.com/a/20067270/5184574
-- https://stackoverflow.com/a/6620957/5184574
local hash = {}

for line in io.lines() do
    if (not hash[line]) then 
    	hash[line] = 1
    else
    	hash[line] = hash[line] + 1
    end
end
for i in pairs(hash) do print(hash[i] .. "\t" .. i) end
