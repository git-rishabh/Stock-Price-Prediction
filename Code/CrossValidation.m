function [parameters,error]=CrossValidation(X,max_itr,alpha ,initial_del)
D=size(X,2);
cost=zeros(1,10);
for i=1:10
    [train,test]=KCV(X,i);
    
    x=train(:,1:D-1);
    y=train(:,D);
    
    xtest=test(:,1:D-1);
    ytest=test(:,D);
    [x,y]=normalize(x,y);
    %[xtest,ytest]=normalize(xtest,ytest);

    xtest = [ones(length(xtest), 1) xtest];
    x = [ones(length(x), 1) x];

    parameters=zeros(D,1);
    [parameters] = gradientDescent(x, y, parameters, alpha, max_itr,initial_del);
    %disp('parameters:--');
    %disp(parameters);    
    error(1,i) = ((xtest * parameters - ytest)' * (xtest * parameters - ytest)) / (2* length(ytest));
    
    

end

end
