classdef AbstractSR570 < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    properties (Constant)
        
        SENSITIVITY_1_PA_PER_VOLT = 0
        SENSITIVITY_2_PA_PER_VOLT = 1
        SENSITIVITY_5_PA_PER_VOLT = 2
        SENSITIVITY_10_PA_PER_VOLT = 3
        SENSITIVITY_20_PA_PER_VOLT = 4
        SENSITIVITY_50_PA_PER_VOLT = 5
        SENSITIVITY_100_PA_PER_VOLT = 6
        SENSITIVITY_200_PA_PER_VOLT = 7
        SENSITIVITY_500_PA_PER_VOLT = 8
        
        SENSITIVITY_1_NA_PER_VOLT = 9
        SENSITIVITY_2_NA_PER_VOLT = 10
        SENSITIVITY_5_NA_PER_VOLT = 11
        SENSITIVITY_10_NA_PER_VOLT = 12
        SENSITIVITY_20_NA_PER_VOLT = 13
        SENSITIVITY_50_NA_PER_VOLT = 14
        SENSITIVITY_100_NA_PER_VOLT = 15
        SENSITIVITY_200_NA_PER_VOLT = 16
        SENSITIVITY_500_NA_PER_VOLT = 17
        
        SENSITIVITY_1_UA_PER_VOLT = 18
        SENSITIVITY_2_UA_PER_VOLT = 19
        SENSITIVITY_5_UA_PER_VOLT = 20
        SENSITIVITY_10_UA_PER_VOLT = 21
        SENSITIVITY_20_UA_PER_VOLT = 22
        SENSITIVITY_50_UA_PER_VOLT = 23
        SENSITIVITY_100_UA_PER_VOLT = 24
        SENSITIVITY_200_UA_PER_VOLT = 25
        SENSITIVITY_500_UA_PER_VOLT = 26
        
        SENSITIVITY_1_MA_PER_VOLT = 27
        
    end
    
    methods (Abstract)
        
        setSensitivity(this, dVal)
        
        [dVal, lSuccess] = getSensitivity(this)
        
        
        
    end
    
     methods (Access = protected)
        
        function dVal = getAmpsPerVoltFromSetting(this, dSetting) 
            
            switch dSetting
                 case this.SENSITIVITY_1_PA_PER_VOLT
                     dVal = 1e-12; 
        case this.SENSITIVITY_2_PA_PER_VOLT
            dVal = 2e-12; 
        case this.SENSITIVITY_5_PA_PER_VOLT
            dVal = 5e-12; 
        case this.SENSITIVITY_10_PA_PER_VOLT
            dVal = 10e-12;
        case this.SENSITIVITY_20_PA_PER_VOLT
            dVal = 20e-12;
        case this.SENSITIVITY_50_PA_PER_VOLT
            dVal = 50e-12;
        case this.SENSITIVITY_100_PA_PER_VOLT
            dVal = 100e-12;
        case this.SENSITIVITY_200_PA_PER_VOLT
            dVal = 200e-12;
        case this.SENSITIVITY_500_PA_PER_VOLT
            dVal = 500e-12;
        
        case this.SENSITIVITY_1_NA_PER_VOLT
            dVal = 1e-9;
        case this.SENSITIVITY_2_NA_PER_VOLT
            dVal = 2e-9;
        case this.SENSITIVITY_5_NA_PER_VOLT
            dVal = 5e-9;
        case this.SENSITIVITY_10_NA_PER_VOLT
            dVal = 10e-9;
        case this.SENSITIVITY_20_NA_PER_VOLT
            dVal = 20e-9;
        case this.SENSITIVITY_50_NA_PER_VOLT
            dVal = 50e-9;
        case this.SENSITIVITY_100_NA_PER_VOLT
            dVal = 100e-9;
        case this.SENSITIVITY_200_NA_PER_VOLT
            dVal = 200e-9;
        case this.SENSITIVITY_500_NA_PER_VOLT
            dVal = 500e-9;
        
        case this.SENSITIVITY_1_UA_PER_VOLT
            dVal = 1e-6;
        case this.SENSITIVITY_2_UA_PER_VOLT
            dVal = 2e-6;
        case this.SENSITIVITY_5_UA_PER_VOLT
            dVal = 5e-6;
        case this.SENSITIVITY_10_UA_PER_VOLT
            dVal = 10e-6;
        case this.SENSITIVITY_20_UA_PER_VOLT
            dVal = 20e-6;
        case this.SENSITIVITY_50_UA_PER_VOLT
            dVal = 50e-6;
        case this.SENSITIVITY_100_UA_PER_VOLT
            dVal = 100e-6;
        case this.SENSITIVITY_200_UA_PER_VOLT
            dVal = 200e-6;
        case this.SENSITIVITY_500_UA_PER_VOLT
            dVal = 500e-6;
        
        case this.SENSITIVITY_1_MA_PER_VOLT
            dVal = 1e-3;
                otherwise
                    dVal = 0;
            end
        end
    end
    
end

