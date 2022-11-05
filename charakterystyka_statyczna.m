f = @(u,y) u + y;

G = linspace(0.3,0.7, 1000).';
for i=1:length(G)
wart = fsolve(@(y)f(G(i),y),[0,1]);
y_wyj(i,:) = wart;
end 

plot(G,y_wyj(:,1))
title("Charakterystyka y(u)")
xlabel("u"); ylabel("y");
hold off;
% print("Charakterystyka",'-dpng','-r400');