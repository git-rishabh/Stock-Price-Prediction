dataset_orig=csvread('Datasets\NSE-HDFCBANK_new.csv');
dataset=normalize(dataset_orig);
GD=0;  % GD=1 is Batch   % GD=0 is stochastic
alpha=0.05;
delta=0;
percent=0.8;
p=2;

% dvalues=[0,0.1,0.05,0.01,0.005,0.001,0.0005,0.0001,0.00005,0.00001];
% avalues=[0.1,0.05,0.01,0.005,0.001,0.0005,0.0001,0.00005,0.00001];
% dvalues=[0];
% avalues=[0.1];
% min_alpha=100000000;
% min_delta=10000000;
% min_MSE=100000000;
% MSE=0;
% sigma=[0.00001,0.0001,0.];
% %for delta = dvalues,
%     for alpha = avalues,
%         %[parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,p,GD);
%        % [parameters,MSE]=CV_gaussian(dataset,percent,alpha,sigma);
%         %fprintf('alpha = %f  ,  sigma = %f ---- MSE = %f\n',sigma,MSE);
%         %if(MSE<min_MSE)       
%          %   min_alpha=alpha;
%           %  min_delta=delta;
%            % min_MSE=MSE;
%         end
%         
%     end
% end
% fprintf('\n');
%fprintf('Minimum error at alpha = %f ,  delta = %f --- MSE = %f \n',min_alpha,min_delta,min_MSE);
% 
% min_sigma=100000000;
% min_MSE=100000000;
% sigma=[0.00001,0.0001,0.001,0.01,0.1];
% for s = sigma,
%         %[parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,p,GD);
%         [MSE]=Gaussian_regression(dataset,percent,s);
%          fprintf(' sigma = %f ---- MSE = %f\n',s,MSE);
%         
%     
% end

% model = svmtrain(y(1:N/2),x(1:N/2,:),['-s 4 -t 2 -n ' num2str(ii/2) ' -c ' num2str(1)]);toc
% tic;zz=svmpredict(y(N/2+1:end),x(N/2+1:end,:),model);toc
% 
% svrMSE=SVR(dataset,percent);

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
svr_C=[0.00002,0.0002,0.002,0.02,0.2];
minMSE=1000000;
minC=0.00002;
for a = svr_C,
    
    parameters=[' -s 4 -t 2 -c ',num2str(a)];
    model = svmtrain(trainY,trainX,parameters);
    [x,b,c]=svmpredict(testY,testX,model);
    %disp(b);
    svrMSE = calculateMSE(testY,x);
    if(svrMSE<minMSE)
        minC=a;
        minMSE = svrMSE;
    end
end
    fprintf('Least MSE %f is --- %f\n: ',minC,minMSE);
%end
        

%[parameters,prediction,MSE] = Linear_Regression(dataset, percent,alpha, delta,GD)
%[parameters,prediction,MSE]=Linear_Regression(dataset,percent,alpha, delta,p,GD);
%[prediction,MSE]=Gaussian_regression(dataset,percent,alpha, delta,p,GD);
%[prediction,MSE]=SVR(dataset,percent,alpha, delta,p,GD);
 %disp(parameters);
 %disp(prediction);
 %disp(MSE);
     
 
  
