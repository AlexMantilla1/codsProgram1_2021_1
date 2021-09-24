clear all; close all; clc


%% Discreta de Fourier DFT
clear all; close all; clc
I = imread ('Gato_triste.png');
A=double(I);

% A=[100 200 300 ;555 664 790;82 0 10];
[W, H]=size(A);
F=zeros(W,H);
s=0;

fA=fft2(A);
paso = 100/(W*H);
total = 0;
for a=0:W-1
    for b=0:H-1
        for x=0:W-1
            for y=0:H-1
                 s = s + (A(x+1,y+1)*(exp((-2*pi*x*a)*i/W)*exp((-2*pi*y*b)*i/H))) ;
                 
%                 naranja=exp((-2*pi*y*b)*1i/H);
%                 verde=exp((-2*pi*x*a)*1i/W);
%                 azul=A(x+1,y+1);
%                 termino = azul * verde * naranja;
%                 s = s + termino;
                
            end
        end
        clc;
        total = total + paso;
        disp(['total hasta el momento: ' num2str(total)])
        F(a+1,b+1)=s; %DFT(A)
        s=0;
    end
end

%% Inversa de Fourier IDFT
Ai=zeros(W,H);
S1=0;
for x=0:W-1
    for y=0:H-1
        for a=0:W-1
            for b=0:H-1
                S1 =  S1 + (F(a+1,b+1)*(exp((2*pi*x*a*i)/W)*exp((2*pi*y*b*i)/H))) ;
               
              
            end
        end
        
        Ai(x+1,y+1)=S1*(1/(W*H)); %IDFT(F)
        S1=0;
    end
end
PRAi=round(real(Ai));
 

% Grafica de magnitud A y B
% figure;imagesc(abs(fftshift(F)))
% t=(0:1:3);
% PRF=real(F);
% PIF=imag(F);
% magF=sqrt((PRF.^2)+(PIF.^2));
% faseF=atan(PIF./PRF);
% figure;plot(t,magF);title('magnitud');figure;plot(t,faseF);title('fase')


% Convolucion

Msc=[1 1 2; 2 4 4; 1 2 2].*1/16;     %mascara gaussiana
[fM, cM]=size(Msc);
M=zeros(fM,cM);
s2=0;
for a=0:fM-1
    for b=0:cM-1
        for x=0:fM-1
            for y=0:cM-1
                s2 = s2 + (Msc(x+1,y+1)*(exp((-2*pi*x*a)*1i/fM)*exp((-2*pi*y*b)*i/cM))) ;
              
            end
        end
        
        M(a+1,b+1)=s2;  %DFT(Msc)
        s2=0;
    end
end


Bprod= F.*M; % DFT(A)*DFT(Msc)
[fBprod, cBprod]=size(A);
B=zeros(fBprod,cBprod);
s3=0;
for x=0:fBprod-1
    for y=0:cBprod-1
        for a=0:fBprod-1
            for b=0:cBprod-1
                s3 =  s3 + (Bprod(a+1,b+1)*(exp((2*pi*x*a*i)/fBprod)*exp((2*pi*y*b*i)/cBprod))) ;
                 
              
            end
        end
        
        B(x+1,y+1)=s3*(1/fBprod*cBprod); % IDFT(Bprod)= conv de MxA
        s3=0;
    end
end

Bconv= conv2(A,M);

% Desconvolucion

%  K=DFT(B)  M=DFT(Msc)  G=DFT(A)
%  Ac=IDFT(G)=IDFT(DFT(B)/DFT(Msc)

[fB, cB]=size(B);
K=zeros(fB,cB);
s4=0;
for a=0:fB-1
    for b=0:cB-1
        for x=0:fB-1
            for y=0:cB-1
                s4 = s4 + (B(x+1,y+1)*(exp((-2*pi*x*a)*i/fB)*exp((-2*pi*y*b)*i/cB))) ;
              
            end
        end
        
        K(a+1,b+1)=s4;  %DFT(B)
        s4=0;
    end
end

BdivM= K./M;

[fBdivM, cBdivM]=size(BdivM);
Ac=zeros(fBdivM,cBdivM);
s5=0;
for x=0:fBdivM-1
    for y=0:cBdivM-1
        for a=0:fBdivM-1
            for b=0:cBdivM-1
                s5 =  s5 + (BdivM(a+1,b+1)*(exp((2*pi*x*a*i)/fBdivM)*exp((2*pi*y*b*i)/cBdivM))) ;
                 
              
            end
        end
        
        Ac(x+1,y+1)=s3*(1/fBdivM*cBdivM); % IDFT(G)= Ac imagen original
        s5=0;
    end
end


