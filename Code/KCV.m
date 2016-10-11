function [train,test]= KCV(X,i)

k=10;
N=size(X,1);
D=size(X,2);
p=floor(N/k);
if(i==1)
    test=X(1:p,:);
    train=X(p+1:end,:);
end
if(i==10)
    test=X(9*p+1:end,:);
    train=X(1:9*p,:);
end
if(i~=1 || i~=10)
    test=X((i-1)*p+1:i*p,:);
    temp1=X(1:(i-1)*p,:);
    temp2=X(i*p+1:end,:);
    train=[temp1;temp2];
end


end