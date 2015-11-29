function res = float2bin( n,m, f_num )
%FLOAT2BIN Summary of this function goes here
%   Detailed explanation goes here
res = '';
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

end

