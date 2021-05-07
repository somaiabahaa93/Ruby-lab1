class ComplexNumber
    attr_reader :real, :imaginary
    @@counterOfAdds=0
    @@counterOfMuls=0
    def initialize(real, imaginary)
      @real = real
      @imaginary = imaginary
    end

    def +(no1)
       
            new_real = real+no1.real 
            new_imaginary = imaginary+no1.imaginary
            print("the addtion is ")
            resSum=print(new_real,"+",new_imaginary,"i")
            print("\n")
            @@counterOfAdds+=1 
           
    end

    def *(no1)
       
        new_real = real * no1.real - imaginary * no1.imaginary
        new_imaginary =  imaginary * no1.real + real * no1.imaginary
        print("the multiplacation is ")
        resMul=print(new_real,"+",new_imaginary,"i") 
        print("\n") 
        @@counterOfMuls+=1
       
    end

    def bulk_add(nos)
      new_real=0
      new_imaginary=0
      nos.each do |num|
          new_real=new_real+num.real 
          new_imaginary=new_imaginary+num.imaginary  
      end
      puts("the summution of the array")
      sum=print(new_real,"+",new_imaginary,"i")
      @@counterOfAdds+=1
      
    end

    def bulk_multiply(nos)
    new_real=1
    new_imaginary=1
    nos.each do |num|
        new_real=(1 * num.real) - (1 * num.imaginary)
        new_imaginary = (1 * num.real) + (1 * num.imaginary)
      end
    puts("\n")
    puts("the multiplication of the array")
    multiply=print(new_real, "+",new_imaginary,"i")
    @@counterOfMuls+=1
    end


 def get_stats()
  print("\n")
  print("the no of  adds functions have been entered :")
  print( @@counterOfAdds) 
  print("\n")

  print("the no of muls functions have been entered :")
  print( @@counterOfMuls) 
  print("\n")
  
  
 end

end

no1=ComplexNumber.new(1,1)
no2= no1.+(1+1i)
no3=no1.*(1+1i)
# no8=no1.*(1+1i) for test 
no4=no1.bulk_add([2+4i,2+5i,4+1i,2+3i])
no5=no1.bulk_multiply([1+1i,1+1i])
no6=no1.get_stats()


