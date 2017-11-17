function [approx, n] = simp(n, limA, limB, func, acc)
disp('Sipsons rule')
y0 = func(limA);
yn = func(limB);
q = 0.01*acc;
err = Inf;

while(err>q)
delX = (limB-limA)./n;
i = limA+2.*delX;
j = limA+delX;
fEven = 0;
fOdd = 0;

while(i<limB)
    fEven = fEven + func(i);
    i = i + 2.*delX;
end

while(j<limB)
    fOdd = fOdd + func(j);
    j = j + 2.*delX;
end

approx = (delX./3)*(y0 + 4*(fOdd) + 2*(fEven) + yn);
n = n+1;
err = abs(abs(approx) - abs(acc));
end
n = n-1;
approx = 5*1500*approx;
end