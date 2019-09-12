n = 2000; 
x = linspace(0,pi,n);
x0 = pi/2;

for i=1:n
    f(i)=cos(x(i));
end

 for nterm = 1:10
    for i=1:n
     sum = 0; 
     for j=0:nterm
        sum = sum + deriv(j,x0)*(x(i)-x0)^j/factorial(j);
     end
   
         if nterm == 1
          t1(i) = sum;
         elseif nterm == 3
          t3(i) = sum;    
         elseif nterm == 9
          t9(i) = sum;
         end  
    end
 end
plot(x,f,'r',x,t1,'--b'); 
hold on;
 plot(x,t3,'--green');
 plot(x,t9,'--cyan');



function val = deriv(j,x)

    k = mod(j,4);
       
    switch k
        case 0
            val = cos(x);
        case 1
            val = -sin(x);
        case 2
            val = -cos(x);
        case 3
            val = sin(x);
    end
end