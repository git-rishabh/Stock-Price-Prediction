function [ prediction,MSE ] = Gaussian_regression( dataset,percent,alpha, delta,p,GD )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
D=size(dataset,2);
N=size(dataset,1);
f=ceil(N*percent);
 
train=dataset(1:f,:);
 test=dataset(f:N,:);
 
trainX=train(:,1:D-1);
trainY=train(:,D);

testX=test(:,1:D-1);
testY=test(:,D);

 trainX = [ones(length(trainX), 1) trainX];
 testX = [ones(length(testX), 1) testX];
 
 sigma0 = 0.002;

gprMdl = fitrgp(trainX,trainY,'Sigma',sigma0);

%%%loss on the training data
L = resubLoss(gprMdl);

%%%loss on test
L = loss(gprMdl,testX,testY);

ypred = predict(gprMdl,testX);
MSE=calculateMSE(testY,ypred);

prediction = ypred;

end

