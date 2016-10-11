function [ parameters ] = BatchGD( x, y, parameters, alpha,delta)
    
    D=size(x,2);
    N=size(x,1);
    N=100;
    m = length(y);
   % fprintf('Size of x = %d %d \n',size(x));
   % fprintf('Size of parameters = %d %d \n',size(parameters));

    repetition=2000;
    for i = 1:repetition
         
          for j = 1:D
              temp=zeros(D,1);
              for k= 1:N
                h = (x(k,:) * parameters  - y(k,:))';
                temp(j)=temp(j)+ h * x(k, j);
              end
                parameters(j) = parameters(j) - (alpha * temp(j))-(delta*parameters(j));
          
              
          end
                 
    end
   
       
end

