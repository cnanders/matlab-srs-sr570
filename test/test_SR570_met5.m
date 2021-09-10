[cDirThis, cName, cExt] = fileparts(mfilename('fullpath'));
cDirSrc = fullfile(cDirThis,  '..', 'src');
addpath(genpath(cDirSrc));


cDirMpm = fullfile(cDirThis, '..', 'mpm-packages');
addpath(genpath(cDirMpm));

comm = srs.SR570( ...
'cConnection', AsciiComm.cCONNECTION_TCPCLIENT, ...
                    'cTcpipHost', '192.168.20.37' ...
                    );
[dVal, lSuccess] = comm.getSensitivity()
comm.setSensitivity(srs.SR570.SENSITIVITY_20_PA_PER_VOLT);
[dVal, lSuccess] = comm.getSensitivity()

delete(comm);