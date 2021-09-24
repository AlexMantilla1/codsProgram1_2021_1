%% Vamos a escribir un programa que haga un dibujo de un cuadrado azul sobre uno rojo, centrado en la posicion que hagamos clic
clc; clear all; close all;

%% Crear el cuadrado Rojo!
M = zeros(350,420,3);
for ix=1:420
    for jy=1:350
        M(jy,ix,1)=255; %Color Rojo
    end
end
%% Dibujar el cuadrado Rojo
figure(1); imshow(uint8(M))

%% Asignarle posisción del centro del cuadrado Azul
Ccentro = ginput(1);
%Ccentro = [175, 210];
%[Ccentro(2),Ccentro(1)] = ginput(1);

%% Darle las dimenciones al cuadrado
Acx = 100;
Acy = 60;
Axi = floor(Ccentro(1)-(Acx/2) + 1);
Axd = Ccentro(1)+(Acx/2);
Bya = floor(Ccentro(2)-(Acx/2) + 1);
Byab = Ccentro(2)+(Acx/2);

%%  Asignar el color al cuadrado azul y verificar que no se salga del cuadrado rojo.
for ix1=Axi:Axd
    for jy1=Bya:Byab
        if ix1>0 && ix1<=420 && jy1>0 && jy<=350
            M(jy1,ix1,1)=0;
            M(jy1,ix1,2)=0;
            M(jy1,ix1,3)=255;
        end
    end
end

%% Dibujamos el cuadrado azul
figure(1);imshow(uint8(M))

