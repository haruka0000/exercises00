#! ruby -Ku
require "kconv"

	size = 4 #sudoku size
	div = size**(1/2.0) # to divide area 4
	num = [1,2,3,4] 
	vertical = Array.new(size)
        vertical[0] = [nil,nil,3,nil]
        vertical[1] = [nil,nil,1,nil]
        vertical[2] = [nil,nil,nil,nil]
        vertical[3] = [3,4,nil,nil]
	
	def printVer(vertical) #print sudoku
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
	def check(ver,ve,ho,d,number) #get array, v-number,h-number,area-div,number
		for l in 0..ver.size-1 do #check vertical
			if ver[ve][l]==number then
				return false
				break
			end
		end
		#print("1")
		for i in 0..ver.size-1 do #check horizontal
			if ver[i][ho]==number then
				return false
				break
			end
		end
		areanum = (ve/d).to_i * 2 + (ho/d).to_i
		asize = d*d
		judge = Array.new(asize)
		
		print(areanum)
		for j in judge do
			j = judge
			for i in j do
				i = nil
			end
		end
		if judge[areanum].nitems==0 then
			judge[areanum][0]=number
		end
		for j in judge[areanum] do #check area
		#	print(j)
			if j==number then
				return false
				break
			end
		end
		judge[areanum][judge[areanum].nitems]=number
		return true
	end

	
	k=0
	for v in 0..vertical.size-1 do #entering number
                for h in 0..vertical[v].size-1 do
			while k<size
				if check(vertical,v,h,div,num[k])
                   			vertical[v][h]=num[k]
					#print("checked")
					break
				end
				k=k+1
			end
			k=0
                end
	end
	print("end\n")
###########################################################
	printVer(vertical) #print sudoku
