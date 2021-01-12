function sincDiricGenerator()
% SINC º¯Êý
t = -3 * pi:pi/40:4*pi;
figure;
subplot(211)
plot(t, sinc(t))
title('sinc')
grid on;
xlabel('t')
ylabel('sinc(t)');
subplot(212)
plot(t, diric(t, 5))
title('Diric')
grid on;
xlabel('t')
ylabel('diric(t)')
end

