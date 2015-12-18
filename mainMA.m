%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Class identified to Controller
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

previousClass = 1; % No movement class

for i=1:inf
    


%% Grip Table
% Command	Function	Description
% G0	Fist grip       All fingers and thumb move
% G1	Palm grip       Fingers move, thumb stays open 
% G2	Thumbs up       Fingers remain closed, thumb moves
% G3	Point           All fingers closed, index finger moves
% G4	Pinch grip      All fingers closed, thumb and index finger move
% G5	Tripod grip     All fingers closed, thumb, index and middle finger move
% 		
% G# O	Open grip       Open grip (# is a grip number)
% G# C	Close  grip     Close grip (# is a grip number)


%% Mapping
% Assuming Class 1 maps to 'No Movement'
% Class 2 maps to G0
% Class 3 maps to G1 and so on.. 

currentClass = classIdentified; % TODO : Get class identifed here somehow...
mappingTable = {'No movement ','G0', 'G1', 'G2', 'G3', 'G4', 'G5'};

%% Calling Termite (terminal)

 if (currentClass ~= previousClass && currentClass ~= 1)
    % Call terminal with new input string
    
    %First open previous grip
    termiteMA([mappingTable{previousClass}, ' O']);
    
    %Now close current crip
    termiteMA([mappingTable{currentClass}, ' C']);
    previousClass = currentClass; %update previous class for next iteration
 end
 
end


