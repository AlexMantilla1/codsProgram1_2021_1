clear;
close all;
clc;

% % Parametros requeridos:
% Rac = input('Ingrese el valor del radio del anillo circular: ') ;   % Radio del anillo circular
% n =  input('Ingrese el valor del numero de cargas a calcular: ') ;  % Numero de cargas
% Vc =  input('Ingrese el valor de las cargas: ')  ;                  % Valor de las cargas

% Parametros requeridos:
Rac = 2 ;    % Radio del anillo circular
n =  12 ;     % Numero de cargas
Vc =  60  ;  % Valor de las cargas

% Valores constantes
a = 0.4;               % Radio de la carga
eps0 = 8.854e-12;      % Valor del Epsilon subcero
kC = 1/(4*pi*eps0);    % Valor de la Constante de Coulomb

% Valores iniciales
Vx = 0 ;
Vy = 0 ;

% Creacion del grid
N = 20;
minX = -Rac-Rac/5 ; maxX = Rac+Rac/5 ;
minY = -Rac-Rac/5 ; maxY = Rac+Rac/5 ;
x = linspace(minX,maxX,N) ;
y = linspace(minY,maxY,N) ;
[xG,yG] = meshgrid(x,y) ;


for region = (0:(2*pi/n):2*pi)+pi/2
    
    % Posicion de la particula negativa
    xCn = Rac*cos(region);    % Punto x de cada carga
    yCn = Rac*sin(region);    % Punto y de cada carga
    
    Rx = xG - xCn;
    Ry = yG - yCn;
    R = sqrt(Rx.^2 + Ry.^2).^2;
    Vx = Vx + kC .* Vc .* Rx ./ R;
    Vy = Vy + kC .* Vc .* Ry ./ R;
    
end
Vp = sqrt(Vx.^2 + Vy.^2);
% Componentes en x, y
u = Vx./Vp;
v = Vy./Vp;
% Grafica de las lineas de campo
h=figure();
sub = subplot(1,2,1);
j=quiver(xG,yG,u,v,'autoscalefactor',0.6);
set(j,'color',[1 0 0],'linewidth',1.2);
axis equal;
axis( [min(x) max(x) min(y) max(y)] );


% ESTO SE DEJA QUIETICO
for region = (0:(2*pi/n):2*pi)+pi/2
    
    % Posicion de la particula negativa
    xCn = Rac*cos(region);    % Punto x de cada carga
    yCn = Rac*sin(region);    % Punto y de cada carga
    
    h=rectangle('Position',[xCn-a/2,yCn-a/2,a,a],'curvature',[1 1]);        %Posicion de la carga positiva centrada y esfera
    set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);                         %Color de relleno y de borde
    
end

%% Para las lineas equipotenciales

% Creacion del grid
N = 50;
minX = -Rac-Rac/5 ; maxX = Rac+Rac/5 ;
minY = -Rac-Rac/5 ; maxY = Rac+Rac/5 ;
x = linspace(minX,maxX,N) ;
y = linspace(minY,maxY,N) ;
[xG,yG] = meshgrid(x,y) ;

% Valores iniciales
Vx = 0 ;
Vy = 0 ;
for region = (0:(2*pi/n):2*pi)+pi/2
    
    % Posicion de la particula negativa
    xCn = Rac*cos(region);    % Punto x de cada carga
    yCn = Rac*sin(region);    % Punto y de cada carga
    
    Rx = xG - xCn;
    Ry = yG - yCn;
    R = sqrt(Rx.^2 + Ry.^2).^2;
    Vx = Vx + kC .* Vc .* Rx ./ R;
    Vy = Vy + kC .* Vc .* Ry ./ R;
    
end



sub2 = subplot(1,2,2);

axis equal;
axis( [min(x) max(x) min(y) max(y)] );

% ESTO SE DEJA QUIETICO
for region = (0:(2*pi/n):2*pi)+pi/2
    
    % Posicion de la particula negativa
    xCn = Rac*cos(region);    % Punto x de cada carga
    yCn = Rac*sin(region);    % Punto y de cada carga
    
    h=rectangle('Position',[xCn-a/2,yCn-a/2,a,a],'curvature',[1 1]);        %Posicion de la carga positiva centrada y esfera
    set(h,'Facecolor',[0 0 1],'Edgecolor',[0 0 1]);                         %Color de relleno y de borde
    
end

hold on;
Vp = sqrt(Vx.^2 + Vy.^2);
cnt = 1;

for i = 1:length(Vp)

    for j = 1:length(Vp)
        
        for k = 1:length(Vp)

            for l = 1:length(Vp)

                if Vp(i,j) == Vp(k,l)
                    
                    xGraficar(cnt) = xG(k,l);
                    yGraficar(cnt) = yG(k,l);
                    cnt = cnt + 1;
                    
                    
                end

            end
            
            plot(xGraficar,yGraficar,'Color',[0 0 1]);

        end
        
    end

end



clc ;
texto2 = ('El color de la carga es azul, debido a que su valor es positivo') ;
disp(texto2)