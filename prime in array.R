x<-c(2,3,4,5,6,7,8,9,10,11,12,13,14)
prime<-c()
not_prime<-c()
#flag=0 ---wrong initialization of flag
for (num in x){
flag = 0
if(num > 1) {
  
  for(i in 2:(num-1)) {
    if ((num %% i) == 0) {
      flag = 1
      break
    }
  }
} 

if(flag == 0) {
#  print(paste(num,"is a prime number"))
  prime<-append(prime,num)
  
} else {
#  print(paste(num,"is not a prime number"))
  not_prime<-append(not_prime,num)
}
}
print(prime)
print(not_prime)

