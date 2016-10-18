 
dataset_orig=csvread('Datasets\NSE-CIPLA_new.csv');
dataset=normalize(dataset_orig);
GD=0;  % GD=1 is Batch   % GD=0 is stochastic
alpha=0.1;
delta=0;
percent=0.8;
p=1;

dvalues=[0,0.1,0.05,0.01,0.005,0.001,0.0005,0.0001,0.00005,0.00001];
avalues=[0.1,0.05,0.01,0.005,0.001,0.0005,0.0001,0.00005,0.00001];
min_alpha=100000000;
min_delta=10000000;
min_MSE=100000000;
for delta = dvalues,
    for alpha = avalues,
        [parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,p,GD);
        %[parameters,error]=CrossValidation(dataset,2000,alpha, delta,p);
        fprintf('delta = %f  ,  alpha = %f ---- MSE = %f\n',delta,alpha,MSE);
        if(MSE<min_MSE)       
            min_alpha=alpha;
            min_delta=delta;
            min_MSE=MSE;
        end
        
    end
end
fprintf('\n');
fprintf('Minimum error at alpha = %f ,  delta = %f --- MSE = %f \n',min_alpha,min_delta,min_MSE);

        
        
        

%[parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,GD)
%[parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,p,GD);
%[prediction,MSE]=Gaussian_regression(dataset,percent,alpha, delta,p,GD);
%[prediction,MSE]=SVR(dataset,percent,alpha, delta,p,GD);
 %disp(parameters);
 %disp(prediction);
 %disp(MSE);
 
 
    
 
  
