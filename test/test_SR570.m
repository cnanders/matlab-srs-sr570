[cDirThis, cName, cExt] = fileparts(mfilename('fullpath'));
cDirSrc = fullfile(cDirThis,  '..', 'src');
addpath(genpath(cDirSrc));


cDirMpm = fullfile(cDirThis, '..', 'mpm-packages');
addpath(genpath(cDirMpm));

comm = srs.SR570();
comm.setSensitivity(srs.SR570.SENSITIVITY_10_NA_PER_VOLT);
delete(comm);