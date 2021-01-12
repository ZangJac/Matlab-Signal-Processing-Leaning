function IntDiffConvert()
% �źŵĻ��ֺ�΢��
syms t f2;
f2 = t * (2 * heaviside(t) - heaviside(t-1)) + heaviside(t-1);
t = -1:0.01:2;
figure;
subplot(121);

fplot(f2, [-10 10]);
title('ԭ����');
grid on;

f = diff(f2, 't', 1);
subplot(122)
fplot(f,[-10 10])
grid on;
title('΢�ֺ���')


syms z f1;
f1 = 2 * heaviside(z) - heaviside(z - 1) + heaviside(z-1)
z = -1:0.01:2
figure;
subplot(121)
fplot(f1, [-10 10])
title('ԭ����')
ylabel('x(t)')
grid on;

f = int(f1 ,'z')
subplot(122)
fplot(f, [-10 10])
grid on;
title('���ֺ���')
ylabel('x(z)')

end

