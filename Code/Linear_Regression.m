function [parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,p,GD)

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
 

    MSE=0;
    parameters = zeros(D,1);
   %if GD==0
    %    [parameters] = StochasticGD(trainX, trainY, parameters, alpha,delta,p);
   
  % elseif GD==1
   %     [parameters] = BatchGD(trainX, trainY, parameters, alpha,delta,p);
        
    %end
    %%%% commented by kush to chck outcome from inbuilt function
    Mdl = fitrlinear(trainX,trainY,'Learner','leastsquares', 'Regularization','lasso','Lambda',0.1);
        prediction= predict(Mdl,testX);
    MSE=calculateMSE(testY,prediction);
    


end