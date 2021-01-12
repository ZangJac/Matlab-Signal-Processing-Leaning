function ParityDecomposition()
%% 常用连续时间信号的奇偶分解
% 原理：任何一个信号函数都可以表示成一个偶函数和一个奇函数的和
% f(t) = 1/2[f(t) + f(t) + f(-t) - f(-t)]
% fe(t) = 1/2[f(t) + f(-t)]
% fo(t) = 1/2[f(t) - f(-t)]

syms t;
f = str2sym('cos(t+1)*cos(t+1) + sin(t)*sin(t)*sin(t)');
f1 = subs(f, t, -t);
g = 1/2 * (f + f1);
h = 1/2 * (f - f1);
subplot(311);fplot(f, [-8, 8]); title('原信号');
subplot(312);fplot(g, [-8, 8]); title('偶分量');
subplot(313);fplot(h, [-8, 8]); title('奇分量');
end

