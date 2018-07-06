args = commandArgs(trailingOnly=TRUE)

infile=args[1]
outfile=args[2]

#print(infile)
print(outfile)
#for(i in 1:num)
#{
read.table(infile)->temp
temp[,3]=temp[,3]/ ((temp[,2])/1000)
summation=sum(temp[,3])/(10^6)
temp[,3]=temp[,3]/summation
temp=temp[,-2]
write.table(temp,outfile,quote=F,sep='\t',row.names=F,col.names=F)
#}