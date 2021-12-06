clear all
x=input('enter the number of symbols:');
N=1:x;
disp('The number of symbols are N:');
disp(N);
P=input('Enter the probabilities:');
disp('The probabilities are:');
disp(P);
S=sort(P,'descend');
disp('The sorted probabilities are:');
disp(S);
[dict,avglen]=huffmandict(N,S);
disp('The average length of the code is:');
disp(avglen);
H=0;
for i=1:x
    H=H+(P(i)*log2(1/P(i)));
end
disp('Entropy is:');
disp(H);
disp('bits/msg');
E=(H/avglen)*100;
disp('Efficiency is:')
disp(E);
codeword=huffmanenco(N,dict);
disp('The codewords are:');
disp(codeword);
decode=huffmandeco(codeword,dict);
disp('Decoded output is:');
disp(decode);