#! ruby -Ku
require "kconv"

	size = 4
	div = size**(1/2.0)
	num = [1,2,3,4]
	vertical = Array.new(size)
        vertical[0] = [nil,nil,3,nil]
        vertical[1] = [nil,nil,2,nil]
        vertical[2] = [nil,nil,nil,nil]
        vertical[3] = [3,4,nil,nil]
	
	def printVer(vertical)
		for v in vertical do
			print("|")
                	for h in 0..v.size-1 do
				if v[h]==nil then
					print("X")
				else
                	        	print(v[h])
				end
                	end
			print("|")
                	print("\n")
        	end
	end
	printVer(vertical)
###########################################################	
	def check(ver,ve,ho,d,number)
		c=0
		for l in ver[ve] do
			if l == number then
				c = false
				return c
			end
		end
		
		for i in 0..ver.size-1 do
			if ver[i][ho]==number then
				c = false
				return c
			end
		end

		asize = d*d
		judge = Array.new(asize)
#		for j in judge do
#			j = Array.new(d*d)
#			for i in j do
#				i=nil
#			end
#		end
		areanum=ve/d*2+ho/d

	#	for j in judge[areanum] do
	#			if j==vertical[ve][ho] then
	#				c=false
	#			end
	#	end
		return c
	end

	
	k=0
	for v in 0..vertical.size-1 do
                for h in 0..vertical[v].size-1 do
			while true
				if check(vertical,v,h,div,num[k])
                   			vertical[v][h]=num[k]
					break
				else
					k=k+1
				end

				if k>size-1 then
					k=0
				end
			end
                end
		k=0
        end
	print("end\n")
###########################################################
	printVer(vertical)
