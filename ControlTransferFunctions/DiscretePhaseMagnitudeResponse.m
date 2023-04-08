x = [2 2 0 0];
N = length(x);
X = zeros(4,1)
for k = 0:N-1
    for n = 0:N-1
        X(k+1) = X(k+1) + x(n+1)*exp(-j*pi/2*n*k);
    end
end

t = 0:N-1
subplot(311)
stem(t,x);
ylabel('Amplitude');
title('Input sequence')

subplot(312)
stem(t,X)
ylabel('|X(k)|');
title('Magnitude response')

subplot(313)
stem(t,angle(X))
ylabel('Phase');
title('Phase response')

X         % to check |X(k)|
%angle(X)  to check phase