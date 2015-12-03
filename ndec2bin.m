clear;
clc;

num =128;

num = power(2,fix(log2(num))+2) - num;
dec2bin(num);
num
