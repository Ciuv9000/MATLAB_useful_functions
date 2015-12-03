function res = nfloat2bin( n,m, f_num )
%FLOAT2BIN Summary of this function goes here
%   Detailed explanation goes here
res = '';
if f_num < 0
    f_num = abs(f_num);
    f_num = power(2,fix(log2(f_num))+2) - f_num;
    %is_neg = True;
end

res = '';
integ = fix(f_num); 
fract = abs(f_num - integ);
bin_integ = dec2bin(integ,n);
res = strcat(res,bin_integ,',');
temp = fract;
for i = 1:1:m
    temp  = mod(2* temp,2);
    res = strcat(res, num2str(fix(temp)));
    if temp >1
        temp = temp - 1;
    end    
end

end