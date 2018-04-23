function A = abovetoleft(n,m)
A=[n,m];
for r=1:n
for c=1:m
    if r==1
        A(r,c)=c;
    elseif c==1
        A(r,c)=r;
    else
        A(r,c)=r+c;
    end
end
end