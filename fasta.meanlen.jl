# julia shebang here

# mean fasta length
# non-fasta input may lead to division by zero !!
# use at your own risk

# add global constants for vars in loop below
# actually - requires julia v1.8+
nseq::Int = 0
len::Int = 0

# read STDIN
for line in eachline(stdin)
	#print("Found $line")
	if(occursin(">", line) == true)
		global nseq += 1
	else
		global len += length(line)
	end
end
println(len/nseq) # float, possibly

## apply function to a file
# function read_and_capitalize(f::IOStream)
#     return uppercase(read(f, String))
# end
## call
# open(read_and_capitalize, "hello.txt")


## OPEN FILE
# open("lom300tf.fasta", "r") do fasta
# 	for line in eachline(fasta)
#			#println(line)
# 		# the following block can be in a function
# 		if(occursin(">", line) == true)
# 			nseq += 1
# 		else
# 			len += length(line)
# 		end
# 	end
# 	println(len/nseq) # float, possibly
# end

## DOCS
## https://docs.julialang.org/en/v1/manual/networking-and-streams/
## https://docs.julialang.org/en/v1/manual/strings/#Common-Operations
## https://syl1.gitbook.io/julia-language-a-concise-tutorial/language-core/input-output
