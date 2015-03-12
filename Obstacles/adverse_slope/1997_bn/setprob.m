
% This routine is called after setplot2.m by plotclaw2.
%
% Set some additional things for ploting GeoClaw output.
%

%PlotType = 11;     % = 11 for colored surface plot
                   % = 12 for contour plot
quiverplot=0;
PlotFlow = 1;      % plot the surface of the flow
PlotTopo = 1;      % plot the topography
ContourValues = linspace(0.001,1.0,10);
topoContourValues = 30;   % Contour levels for topo. 
                          % Set to either a scalar or vector
                        


geo_setzcolormaps;    % set up some useful default colormaps for land, water

zWaterColorsMalpasset = [0  DarkBlue;
                          50 Blue;
                         100 LightBlue];
                     
zWaterColorsMalpasset = [98  LightBlue;
                          100 Blue;
                         102 DarkBlue];
                     
zWaterColorsMalpasset = [98  0 1 1;
                          100 Blue;
                         102 DarkBlue];

zLandColorsMalpasset = [   0  DarkGreen;
                           25  Green;
                           50  LightGreen;
                           100  Tan;
                           150 Brown;
                           200 White];
                       
zLandColorsMalpassetZoom = [   0  DarkGreen;
                           10  Green;
                           15  LightGreen;
                           25  Brown;
                           35 Tan;
                           ];
                       
zFlume = [ 1.117 Gray7;
            1.115 Gray8];
        
zRedWhiteBlue = [-10 Green
            -1 Red;
            0  White;
            1  Blue];
        
z_flumedepth = [.5 DarkBlue;
                .1 White;
                0.0 Red];

z_velocity = [-1 Red;
                0 White;
                10 Blue];
            
z_seg = [0 White;
                1 Red];

z_velocity2 = [-20 Blue;
                0 White;
                20 Red];
            
z_depth = [0. White
            0.125 Tan;
            0.25  Brown];
        
        
z_m = [0.0 Blue;
        0.61 White;
            0.68 Tan];
        
 zDigPressure = [0  White;
                10/18.5  LightGreen;
                1.0  Blue];
        
if mq==6
    flow_colormap = z_seg;
elseif mq==5
    flow_colormap =zDigPressure;
elseif mq == 1
    flow_colormap = z_depth;
elseif mq==4
    flow_colormap = z_m;
else
    flow_colormap = z_velocity2;
end
%flow_colormap = z_velocity;
%flow_colormap =zDigPressure;
%flow_colormap = z_depth;
%flow_colormap = z_m;
topo_colormap =zFlume;



% or for non default colormaps for the water 
% set flowcolormatrix to any colormap desired (ie any m by 3 rgb matrix) 
%[flowcolormatrix,ncolors]=deacolor; 
%[ncolors,n]=size(flowcolormatrix);
%flow_colormap=[linspace(-TsAmp,TsAmp,ncolors)',flowcolormatrix];

