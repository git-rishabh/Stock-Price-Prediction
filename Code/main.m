 
 
dataset_orig=xlsread('NSE-CIPLA.xlsx');
dataset=normalize(dataset_orig);
GD=1;  % GD=1 is Batch   % GD=0 is stochastic
alpha=0.01;
delta=0.1;
percent=0.7;
p=2;

%[parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,GD)
%[parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,p,GD);
%[prediction,MSE]=Gaussian_regression(dataset,percent,alpha, delta,p,GD);
[prediction,MSE]=SVR(dataset,percent,alpha, delta,p,GD);
 %disp(parameters);
 %disp(prediction);
 disp(MSE);
 
 
    
 
  
