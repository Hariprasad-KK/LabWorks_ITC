clc;
clear all;
k= input('Enter The Message Word: ');
n=input('Enter The Code Word: ');
p=input('Enter The Parity Matrix: ')
G = [eye(k) p]
m=input('Enter The Message: ');
C=encode(m,n,k,'linear',G)

H= [p' eye(n-k )]
dtable=syndtable(H)
R=input('Enter The Recived Code Word: ');
S_B=rem(R*H',2)
S_D=bi2de(S_B,'left-msb')

if(S_D==0)
    disp('Code Word Is Valid')
else
    disp('Code Word Is InValid')
    E=dtable(S_D+1,:)
    CC=rem(R+E,2)
end

D=decode(C,n,k,'linear',G) 


