%% Author: Rodrigo de Barros Vimieiro
% Date: April, 2018
% rodrigo.vimieiro@gmail.com
% =========================================================================
%{
% 
%     DESCRIPTION:
%     This is the configuration file for the tomosynthesis acquisition 
%     geometry. This geometry is specified for the virtual phantom.
% 
%     ---------------------------------------------------------------------
%     Copyright (C) <2018>  <Rodrigo de Barros Vimieiro>
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>. 
%  
%}
% =========================================================================
%% Physical Parameters Settings

parameter.type = 'shepplogan';

% Breast voxels density 
parameter.nx = 128;    % number of voxels (columns)
parameter.ny = 128;    % number of voxels (rows)
parameter.nz = 128;    % number of voxels (slices)

% Detector panel pixel density
parameter.nu = 280;    % number of pixels (columns)
parameter.nv = 350;    % number of pixels (rows)

% Single voxel real size (mm)
parameter.dx = 1; 
parameter.dy = 1;
parameter.dz = 10;

% Single detector real size (mm)
parameter.du = 1;   
parameter.dv = 1;

% X-ray source and detector distances
parameter.DSD = 6600;                           % Distance from source to detector (mm)
parameter.DSO = 5100;                           % Distance from source to the top of object (mm)
parameter.DDR = 400;                            % Distance from detector to pivot (mm)
parameter.DSR = parameter.DSD - parameter.DDR;  % Distance from source to pivot (mm)
parameter.DAG = 220;                            % Distance of Air Gap (mm)         

% Detector and object full real sizes (mm)
parameter.sx = parameter.nx.*parameter.dx;  
parameter.sy = parameter.ny.*parameter.dy;  
parameter.sz = (parameter.nz.*parameter.dz)+parameter.DAG;  
parameter.su = parameter.nu.*parameter.du;	
parameter.sv = parameter.nv.*parameter.dv;  


% Detector and object Volume grid settings 
parameter.xs = (parameter.nx-1:-1:0)*parameter.dx;
parameter.ys = (-(parameter.ny-1)/2:1:(parameter.ny-1)/2)*parameter.dy;
parameter.zs = (0:1:parameter.nz-1)*parameter.dz + parameter.DAG;
parameter.us = (parameter.nu-1:-1:0)*parameter.du;
parameter.vs = (-(parameter.nv-1)/2:1:(parameter.nv-1)/2)*parameter.dv;

% Number of Projections
parameter.nProj = 9;  

% Angle settings (Degrees)
parameter.tubeAngle = 2.5;   % Tube Angle
parameter.tubeDeg = linspace(-parameter.tubeAngle/2,parameter.tubeAngle/2,parameter.nProj);

parameter.detAngle = 0;   % Detector Angle
parameter.detectorDeg = linspace(-parameter.detAngle/2,parameter.detAngle/2,parameter.nProj);

%% General parameters

% Slice range to be saved
parameter.sliceRange = 1:parameter.nz;
% Region of interest (ROI) to store
parameter.iROI = 1:parameter.ny;   
parameter.jROI = 1:parameter.nx;    

% Bit number quatization
parameter.bitDepth = 1;

% Noise parameters
parameter.tau = -2;  
parameter.lambda = 0.2;
parameter.sigmaE = 3;
 