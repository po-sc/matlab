M=zeros(6,6);
a=input(' Entrer 1, if you want random numbers, or 2 if you want manual input    ');
if a==1
    M=round(rand(6,6)*100)
elseif a==2
    M(1:numel(M))=input('Enter 6x6 matrix manually, all elements in  []      ')
    k=find(M>100|M<0);
    l=find(M(2:2:6,:)==0);
    if isempty(k)==0||isempty(l)==0
         M(1:numel(M))=input('Enter 6x6 matrix manually, all elements in  []      ')
    else
    end 

else disp('Error, restart the programm')
end
M1=zeros(3,6);
for m=1:3
M1(m,:)=M(2*m,:)./M(2*m-1,:)
end
n=find(M1(:,1:2:5)==0);
M2=zeros(3,3);
if isempty(n)==0
    disp('Incorrect matrix entry')
else
    for p=1:3
    M2(p,:)=M1(:,2*p)./M1(:,2*p-1)
    end
end

sort(M2)