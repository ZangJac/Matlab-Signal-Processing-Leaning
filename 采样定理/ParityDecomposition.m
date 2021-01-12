function ParityDecomposition()
%% ��������ʱ���źŵ���ż�ֽ�
% ԭ���κ�һ���źź��������Ա�ʾ��һ��ż������һ���溯���ĺ�
% f(t) = 1/2[f(t) + f(t) + f(-t) - f(-t)]
% fe(t) = 1/2[f(t) + f(-t)]
% fo(t) = 1/2[f(t) - f(-t)]

syms t;
f = str2sym('cos(t+1)*cos(t+1) + sin(t)*sin(t)*sin(t)');
f1 = subs(f, t, -t);
g = 1/2 * (f + f1);
h = 1/2 * (f - f1);
subplot(311);fplot(f, [-8, 8]); title('ԭ�ź�');
subplot(312);fplot(g, [-8, 8]); title('ż����');
subplot(313);fplot(h, [-8, 8]); title('�����');
end

