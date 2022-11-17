clear; close all; clc; format long g
%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%TO-DO%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%
%1.Nahodne i         %
%2.Lepsi input       %
%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%

% % Structures

%cross_repeater = [0 1 0
%                  1 1 1
%                  0 0 0];
% 3x3
              
%cross_oscilator = [1 1 1];
% 1 x 3

%toad = [0 1 1 1
%        1 1 1 0];
% 2x4

%glider = [1 1 1
%          0 0 1
%v          0 1 0];
% 3x3

%clover = [0 0 0 1 0 1 0 0 0
%          0 1 1 1 0 1 1 1 0
%          1 0 0 0 1 0 0 0 1
%          1 0 1 0 0 0 1 0 1
%          0 1 1 0 1 0 1 1 0
%          0 0 0 0 0 0 0 0 0
%          0 1 1 0 1 0 1 1 0
%          1 0 1 0 0 0 1 0 1
%          1 0 0 0 1 0 0 0 1
%          0 1 1 1 0 1 1 1 0
%          0 0 0 1 0 1 0 0 0];
% 11x9

nic = [0];
% 1x1
fileID2 = fopen("gens.txt", "r");
gen = fscanf(fileID2,"%u");

fileID3 = fopen("rand.txt", "r");
rnd = fscanf(fileID3, "%u");  
% % % ----------------------------------------------
% % % Input
size_field = 50;     % Parameter čtvercove matici NxN
size_dot = 18;       % Pro grafiku - velkost bunek
i = rnd;               % Pocet nahodnych zivych bunek
pocet_iterace = gen;  % Pocet generaci
structure = importFileFinal();  % Vkladanie struktur (="name")
speed = 0.15;         % Predstavuje kolko jednotiek trva obnovenie okna[sec]

% --------------------------------------------------

A = zeros(size_field+1);
G = zeros(length(A));

for l = 1:i
    

j = round(rand(1,1) * ((size_field-1)-2));
if j <= 1
    j = j+2;
end

k = round(rand(1,1) * ((size_field-1)-2));
if k <= 1
    k = k+2;
end

   A(j,k) = 1;
    
end
    
% Placement struktur v poli
X_P = size_field/2;
Y_P = size_field/2;

[x_sz,y_sz] = size(structure);
        
A(X_P:X_P+(x_sz)-1,Y_P:Y_P+(y_sz)-1) = structure;



% Plot pred
Plot_pred = figure('Name','Life','NumberTitle','off','windowstate','fullscreen');
spy(A,'g',size_dot)
grid on; grid minor;

% axis([0 size_field 0 size_field])


                        % Zaciatok 1 iterace
                        for iterace = 1:pocet_iterace

% % Game of life
Y = 2;
X = 2;
n_alive = 0;
while X < length(A)

  % If (X,Y) = alive 
   if A(X,Y) == 1
       
       %black
       if A(X-1,Y) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X+1,Y) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X,Y-1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X,Y+1) == 1
       n_alive = n_alive + 1;
       end
       
       %green
       if A(X-1,Y-1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X-1,Y+1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X+1,Y-1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X+1,Y+1) == 1
       n_alive = n_alive + 1;
       end
       
       % Stay alive
switch n_alive
    case {0:1}
        G(X,Y) = 0;
    case {4:8}
        G(X,Y) = 0;
    case {2,3}     
        G(X,Y) = 1;
        
end
   end
      
   % If dead 
   if A(X,Y) == 0
       
       %black
       if A(X-1,Y) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X+1,Y) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X,Y-1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X,Y+1) == 1
       n_alive = n_alive + 1;
       end
       
       %green
       if A(X-1,Y-1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X-1,Y+1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X+1,Y-1) == 1
       n_alive = n_alive + 1;
       end
       
       if A(X+1,Y+1) == 1
       n_alive = n_alive + 1;
       end
       
       % Revive
switch n_alive
    case 3
    G(X,Y) = 1;    
    otherwise
    G(X,Y) = 0;    
end
   end

n_alive = 0;
   
% posun o riadok
if Y == length(A)-1
    X = X + 1;
    Y = 2;
    continue
end

Y = Y + 1;
end


% Plot po pravidlach

spy(G,'g',size_dot)
grid on; grid minor;
% axis([0 size_field 0 size_field])
drawnow
pause(speed)

A = G;
G = zeros(length(A));


                        end
