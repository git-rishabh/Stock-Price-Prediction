 
 
dataset_orig=xlsread('NSE-CIPLA.xls');
dataset=normalize(dataset_orig);
GD=1;  % GD=1 is BAtch   % GD=0 is stochastic

%[parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,GD)
[parameters,prediction,MSE]=Linear_Regression(dataset,0.7,0.01,0,GD);

 disp(parameters);
 %disp(prediction);
 disp(MSE);
    
 
  
