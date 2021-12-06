clc;
clear all;

k=input('Length Of Message: ');
n=input('Length Of Codeword: ');
m=input('Enter The Message Word: ');
G=cyclpoly(n,k,'max')
gx=poly2sym(G)

disp('Encoding')
C = encode(m,n,k,'cyclic',G)
disp('Decoding')
D = decode(C,n,k,'cyclic',G)
