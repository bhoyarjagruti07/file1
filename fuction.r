#syntax of function
#1
func_name<-function(x)
{
  for (i in 1:8){
    print(x=i+3)
  }
}

#calling the function
func_name(x)

#2  
hello<-function(name,a=5)
{
  print(name)
  print(a)
}

#calling the function
hello("Jagruti",a)
hello("Ayush",a)

#3 Addition  
hello<-function(x=10,y=15)
{
  sum=x+y
  print(sum)
}

#calling the function
hello(10,15)

