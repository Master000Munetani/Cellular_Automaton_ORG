clear;
clc; 
a = imread('a3.png');
b = graythresh(a);
imh = im2bw(a,b);
imshow(imh);

 o_R = double(imh);
 o_G = double(imh);
 o_B = double(imh);
 
 %RGB=[1,0.38.0]
 o_R(o_R==0)=1;
 o_G(o_G==0)=0.38;

 imagesc(cat(3,o_R,o_G,o_B));
 
 
 %¶ÔG½øÐÐÅÐ¶Ï
 for hour=1:240
     for i =2:434
         for j = 2:522
             if o_G(i,j)==1
                 %ÅÐ¶Ï¸÷¸öÁÚ¾ÓµÄÖµ
                 if o_G(i+1,j)==0.38 & rand(1)>0.6 %ÏÂ±ß
                     o_R(i+1,j)=1.00;
                     o_G(i+1,j)=0.98;
                     o_B(i+1,j)=0.98;
                 end
                 if o_G(i-1,j)==0.38 & rand(1)>0.5 %ÉÏ±ß
                     o_R(i-1,j)=1.00;
                     o_G(i-1,j)=0.98;
                     o_B(i-1,j)=0.98;
                 end
                 if o_G(i,j+1)==0.38 & rand(1)>0.7 %ÓÒ±ß
                     o_R(i,j+1)=1.00;
                     o_G(i,j+1)=0.98;
                     o_B(i,j+1)=0.98;
                 end
                 if o_G(i,j-1)==0.38 & rand(1)>0.35 %×ó±ß
                     o_R(i,j-1)=1.00;
                     o_G(i,j-1)=0.98;
                     o_B(i,j-1)=0.98;
                 end
                  if o_G(i+1,j)==0.98 & rand(1)>0.4 
                     o_R(i+1,j)=0.56078;
                     o_G(i+1,j)=0.73725;
                     o_B(i+1,j)=0.56078;
                 end
                 if o_R(i-1,j)==0.98 & rand(1)>0.38 
                    o_R(i-1,j)=0.56078;
                     o_G(i-1,j)=0.73725;
                     o_B(i-1,j)=0.56078;
                 end
                 if o_R(i,j+1)==0.98 & rand(1)>0.4 
                     o_R(i,j+1)=0.56078;
                     o_G(i,j+1)=0.73725;
                     o_B(i,j+1)=0.56078;
                 end
                 if o_G(i:j-1)==0.98 & rand(1)>0.8 
                     o_R(i,j-1)=0.56078;
                     o_G(i,j-1)=0.73725;
                     o_B(i,j-1)=0.56078;
                 end
             end
%              if o_G(i,j)==0.38
%                  if o_G(i+1,j)==0.98 & rand(1)>0.05 
%                      o_R(i,j-1)=1.00;
%                      o_G(i,j-1)=0.98;
%                      o_B(i,j-1)=0.98;
%                  end
%                  if o_R(i-1,j)==0.98 & rand(1)>0.05 
%                     o_R(i,j-1)=1.00;
%                      o_G(i,j-1)=0.98;
%                      o_B(i,j-1)=0.98;
%                  end
%                  if o_R(i,j+1)==0.98 & rand(1)>0.08 
%                      o_R(i,j-1)=1.00;
%                      o_G(i,j-1)=0.98;
%                      o_B(i,j-1)=0.98;
%                  end
%                  if o_G(i:j-1)==0.98 & rand(1)>0.08 
%                      o_R(i,j-1)=1.00;
%                      o_G(i,j-1)=0.98;
%                      o_B(i,j-1)=0.98;
%                  end
%              end
%          end
%      end
%      for i =2:434
%          for j = 2:522
%              
%          end
%      end
%      for i =2:434
%          for j = 2:522
              if o_G(i,j)==0.98
                 if o_G(i+1,j)==0.98 & rand(1)>0.2 
                     o_R(i+1,j)=0.56078;
                     o_G(i+1,j)=0.73725;
                     o_B(i+1,j)=0.56078;
                 end
                 if o_R(i-1,j)==0.94 & rand(1)>0.15 
                    o_R(i-1,j)=0.56078;
                     o_G(i-1,j)=0.73725;
                     o_B(i-1,j)=0.56078;
                 end
                 if o_R(i,j+1)==0.94 & rand(1)>0.25 
                     o_R(i,j+1)=0.56078;
                     o_G(i,j+1)=0.73725;
                     o_B(i,j+1)=0.56078;
                 end
                 if o_G(i:j-1)==0.94 & rand(1)>0.18 
                     o_R(i:j-1)=0.56078;
                     o_G(i:j-1)=0.73725;
                     o_B(i:j-1)=0.56078;
                 end
                 if o_G(i+1,j)==0.38 & rand(1)>0.62 %ÏÂ±ß
                     o_R(i+1,j)=1.00;
                     o_G(i+1,j)=0.98;
                     o_B(i+1,j)=0.98;
                 end
                 if o_G(i-1,j)==0.38 & rand(1)>0.63 %ÉÏ±ß
                     o_R(i-1,j)=1.00;
                     o_G(i-1,j)=0.98;
                     o_B(i-1,j)=0.98;
                 end
                 if o_G(i,j+1)==0.38 & rand(1)>0.62 %ÓÒ±ß
                     o_R(i,j+1)=1.00;
                     o_G(i,j+1)=0.98;
                     o_B(i,j+1)=0.98;
                 end
                 if o_G(i,j-1)==0.38 & rand(1)>0.55 %×ó±ß
                     o_R(i,j-1)=1.00;
                     o_G(i,j-1)=0.98;
                     o_B(i,j-1)=0.98;
                 end
              end
          end
     end
     imagesc(cat(3,o_R,o_G,o_B))
     axis tight
     axis off
     drawnow
     pause(1)
 end
 
 
 