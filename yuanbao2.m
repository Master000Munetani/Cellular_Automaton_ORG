%被感染的伤口的下一状态：长上菌丝
%正常组织的下一状态：长上菌丝 维持不变
%长上菌丝的组织的下一状态：生长出分支孢子 维持不变
%生长出分支孢子的下一状态：维持不变 
clear;
clc; 

n = 300;
P0= 1e-6;
P1= 0.8;%感染
P2= 0.7;%产生孢子
UL=[n,1:n-1];
DR=[2:n,1];

%0：正常组织
%1：长上菌丝的组织
%2：生长出分支孢子的组织
%3：被感染的伤口
o_R=zeros(n);
o_G=zeros(n);
o_B=zeros(n);
 o_R(o_R==0)=1;
 o_G(o_G==0)=0.38;
num_norm=zeros(1,240);
num_inf1=zeros(1,240);
num_inf2=zeros(1,240);
% imagesc(cat(3,o_R,o_G,o_B));
FT=zeros(n+2);
FT(FT==0)=0.38;
for i=1:240
    FT(2:n+1,2:n+1) = o_G;
    inFected=(FT(1:n,2:n+1)==0.98|FT(1:n,2:n+1)==0.73725)+(FT(2:n+1,1:n)==0.98|FT(2:n+1,1:n)==0.73725)+(FT(2:n+1,3:n+2)==0.98|FT(2:n+1,3:n+2)==0.73725)+(FT(3:n+2,2:n+1)==0.98|FT(3:n+2,2:n+1)==0.73725);
    for j=1:n
        for k=1:n
            if(o_G(j,k)==0.38 &((inFected(j,k)>0 & rand()<P1)|rand()<P0))
             o_R(j,k)=1.00;
             o_G(j,k)=0.98;
             o_B(j,k)=0.98;
            elseif(o_G(j,k)==0.98&rand()<P2)
               o_R(j,k)=0.56078;
             o_G(j,k)=0.73725;
             o_B(j,k)=0.56078; 
            elseif(o_G(j,k)==0.38 &inFected(j,k)==0&rand()<P0)
                o_R(j,k)=1.00;
             o_G(j,k)=0.98;
             o_B(j,k)=0.98;
            end
        end
    end
    num_norm(1,i)=sum(o_G(:)==0.38);
    num_inf1(1,i)=sum(o_G(:)==0.98);
    num_inf2(1,i)=sum(o_G(:)==0.73725);
    figure(1);
subplot(2,2,1),imagesc(cat(3,o_R,o_G,o_B))
     axis tight
     axis off
     drawnow
%      pause(0.1)
%      figure(2);
 subplot(2,2,2),plot(1:i,num_norm(1,1:i),'-r'),title('正常组织'),xlabel('时间/h'),ylabel('组织数目/个');
subplot(2,2,3),plot(1:i,num_inf1(1,1:i),'-g'),title('长上菌丝的组织'),xlabel('时间/h'),ylabel('组织数目/个');
subplot(2,2,4),plot(1:i,num_inf2(1,1:i),'-b'),title('产生孢子的组织'),xlabel('时间/h'),ylabel('组织数目/个');
pause(0.1)
     
end  

