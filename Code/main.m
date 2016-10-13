 
 
dataset_orig=xlsread('NSE-CIPLA.xlsx');
dataset=normalize(dataset_orig);
GD=0;  % GD=1 is Batch   % GD=0 is stochastic
alpha=0.0001;
delta=0;
percent=0.7;

%[parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,GD)
[parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,GD);

 disp(parameters);
 %disp(prediction);
 disp(MSE);
 
 
    
 
  
