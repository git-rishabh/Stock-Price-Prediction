 
 
dataset_orig=xlsread('NSE-CIPLA.xls');
dataset=normalize(dataset_orig);
GD=1;  % GD=1 is BAtch   % GD=0 is stochastic

%[parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,GD)
[parameters,prediction,MSE]=Linear_Regression(dataset,0.7,0.01,0,GD);

 disp(parameters);
 %disp(prediction);
 disp(MSE);
    
 
  
% parameters=Linear_Regression(X,0.1,0);
% disp(parameters);
% prediction=predictpolynomial(Y(:,1:end-1),parameters);
% disp(prediction);


%Simple regression %%%%%%%%%%%%%%
%    X=load('lin.txt');
%     max_itr=1000;
%     initial_del=0;
%     alpha=0.1;
%      [final_parameters,MSE]=linear_regression(X, max_itr,alpha,initial_del);
% disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%     plotfit(X,final_parameters);

%     X=load('sph.txt');
%     max_itr=1000;
%     initial_del=0;
%     alpha=0.1;
%     [final_parameters,MSE]=linear_regression(X, max_itr,alpha,initial_del);
% disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%     plotfit(X,final_parameters);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Ridge regression%%%%%%%%%%%%%%%%%%%%%%%%%%%

% X=load('lin.txt');
%     max_itr=1000;
%     initial_del=0.0001; % 0.0001/.0.001
%     alpha=0.1;
%     [final_parameters,MSE]=linear_regression(X, max_itr, alpha, initial_del);
% disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%     plotfit(X,final_parameters);

%     X=load('lin.txt');
%     max_itr=1000;
%     initial_del=0.0001; % 0.0001/.0.001
%     alpha=0.1;
%     [final_parameters,MSE]=polynomial_regression(X, max_itr, alpha, initial_del);
%         disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%     plotfitpoly(X,final_parameters);

    
%          X=load('sph.txt');
%     max_itr=1000;
%     initial_del=0.0001;   % 0.00001
%     alpha=0.1;
%     [final_parameters]=linear_regression(X,max_itr,alpha,initial_del);
% disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%    plotfitpoly(X,final_parameters);
% 
%     
%     X=load('sph.txt');
%     max_itr=1000;
%     initial_del=0.000001;   % 0.00001/0.000001
%     alpha=0.1;
%    [final_parameters]=polynomial_regression(X,max_itr,alpha,initial_del);
% disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%     plotfitpoly(X,final_parameters);
% % 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% polyniomial regression %%%%%%%%%%%%%%%%%%%%%%
%     X=load('lin.txt');
%     max_itr=1000;
%     alpha=0.1;
%     initial_del=0;
%     [final_parameters,MSE]=polynomial_regression(X,max_itr,alpha ,initial_del);
%     disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%      plotfitpoly(X,final_parameters);
% %      
%   
%     X=load('sph.txt');
%     max_itr=1000;
%     alpha=0.1;
%     initial_del=0;
%     [final_parameters,MSE]=polynomial_regression(X,max_itr,alpha ,initial_del);
%   disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
%      plotfitpoly(X,final_parameters);

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% UCI dataset regression %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   X=load('seeds_dataset.txt');
%     max_itr=1000;
%     alpha=0.01;
%     initial_del=0.001;
%     [final_parameters,MSE]=linear_regression(X,max_itr,alpha ,initial_del);
%      disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);

    
%     X=load('iris2.data');
%     max_itr=1000;
%     alpha=0.1;
%     initial_del=0.0001;
%     [final_parameters,MSE]=linear_regression(X,max_itr,alpha ,initial_del);
%      disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
     
% 
%     X=xlsread('AirQualityUCI.xlsx');
%    disp(X(1,:));
%     X=X(:,2:end);
%     a=11;b=13;
%     disp(size(X));
%     X = X(:,[1:a-1,b,a+1:b-1,a,b+1:end]);
%     max_itr=1000;
%     alpha=0.1;
%     initial_del=0;
%     [final_parameters,MSE]=linear_regression(X,max_itr,alpha ,initial_del);
%      disp('Parameters :');
%     disp(final_parameters);
%     disp('Minimum Error :');
%     disp(MSE(1,9));
%     plotMSE(MSE);
% % 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%   X=load('seeds_dataset.txt');
%     max_itr=1000;
%     alpha=0.001;
%     initial_del=0.001;
%     [final_parameters error]=CrossValidation(X,max_itr,alpha ,initial_del);
%      fprintf('MSE :\n');
%      disp('Error Array:---');
%     disp(error);
%     disp('Mean of Error:---');
%     disp(mean(error));
%     disp('standard deviation of error:---');
%     disp(std(error));
%     plotError(1:10,error);
    
%       X=load('iris2.data');
%      % X=load('lin.txt');
%     max_itr=1000;
%     alpha=0.01;
%     initial_del=0.01;
%     [final_parameters error]=CrossValidation(X,max_itr,alpha ,initial_del);
%      fprintf('MSE :\n');
%      disp('Error Array:---');
%     disp(error);
%     disp('Mean of Error:---');
%     disp(mean(error));
%     disp('standard deviation of error:---');
%     disp(std(error));
%     plotError(1:10,error);

%    X=xlsread('AirQualityUCI.xlsx');
%    disp(X(1,:));
%     X=X(:,2:end);
%     a=11;b=13;
%     X = X(:,[1:a-1,b,a+1:b-1,a,b+1:end]);
%     max_itr=1000;
%     alpha=0.001;
%     initial_del=0.1;
%     [final_parameters error]=CrossValidation(X,max_itr,alpha ,initial_del);
%      fprintf('MSE :\n');
%      disp('Error Array:---');
%     disp(error);
%     disp('Mean of Error:---');
%     disp(mean(error));
%     disp('standard deviation of error:---');
%     disp(std(error));
%     plotError(1:10,error);
%     
