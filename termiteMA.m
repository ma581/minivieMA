%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Calling Termite (terminal)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Setup .ini of Termite for the correct channel communications and
% COM port number
% See here http://www.compuphase.com/software_termite.htm


function [] = termiteMA(inputString)

    fname = tempname; %Temporary file
    while exist(fname, 'file')
        fname = tempname;
    end

    fid = fopen(fname, 'wt');

    fprintf(fid, inputString ) %write out the input parameters the program will need
    fclose(fid);

    system(['Termite.exe < ' fname]);
end




%SYSTEM COMMANDS
% help system 
% to check out how matlab can run system commands

% TAKING AND INPUT
% If it is straight-forward text input (as seems likely from your reference to a simple way
% to do it in IDL) then I suggest you create files containing the inputs, and use I/O
% redirection:
% 
% fname = tempname;
% while exist(fname, 'file')
%   fname = tempname;
% end
% 
% fid = fopen(fname, 'wt'); 
    % FID = fopen(FILENAME,PERMISSION) opens the file FILENAME in the
    %     mode specified by PERMISSION    
% fprintf(fid, .... ) %write out the input parameters the program will need
% fclose(fid);
% 
% system(['MyExecutable.exe < ' fname]); %run executable with content of fname as inputs