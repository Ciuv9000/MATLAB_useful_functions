clear all;close all;clc;
n = 3; 
m = 5;
f_num = 0.57251;
res = ''
integ = fix(f_num); 
fract = abs(f_num - integ);
bin_integ = dec2bin(integ,n);
res = strcat(res,bin_integ,',');
temp = fract;
for i = 1:1:m
    temp  = 2* temp;
    res = strcat(res, num2str(fix(temp)));
    if temp >1
        temp = temp - 1;
    end
    
end