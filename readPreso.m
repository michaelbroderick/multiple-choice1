function [code] = readPreso(filename)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
fid=fopen(filename,'r');

tline = fgetl(fid);
i=1;
while ischar(tline)
code{i}=tline;
tline = fgetl(fid);
i=i+1;
end
fclose(fid);


end

