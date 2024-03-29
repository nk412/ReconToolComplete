function [ ] = display_occupancy( model_params, checker )
%display_occupancy(model_params, checker)
%   Displays a graphical representation of the spatial occupancy matrix.
%
% 	Input -
% model_params  - Cell array containing parameters such as firing rates and
%                 occupancy matrices. This object is generated by the training
%                 method, given the spiking and positinal data.
%
% Optional inputs
%   checker		- If set to 1, will display the result in a checkered grid.
% 				  By defualt, it is set to 0.

if(nargin<1)
    error('Call function with parameter model.');
end
if(nargin==1)
    checker=1;
end

spatial_occupancy=model_params{3};
map=rot90(spatial_occupancy);
if(checker==1)
    pcolor(flipud(map));
else
    imagesc(map);
end
colorbar;

end

