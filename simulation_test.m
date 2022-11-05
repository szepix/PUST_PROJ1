clear all

%% Inicjalizacja zmienych

T = 0.5; %Czas próbkowania
t_sym = 200; %Czas symulacji (w sekundach)

kp = 12; %Krok początkowy startu symulacji
kk = t_sym/T; %Krok końcowy

Upp = 0.5;
Ypp = 4;

Umin = 0.3;
Umax = 0.7;

U(1:kp,1) = Upp;
Y(1:kp,1) = Ypp;


%% Symulacja obiektu

for k = kp:kk
    Y(k) = symulacja_obiektu1Y_p1(U(k-10),U(k-11),Y(k-1),Y(k-2));
    U(k) = Upp+0.1;
end

%% Plot 
plot(1:kk,Y)