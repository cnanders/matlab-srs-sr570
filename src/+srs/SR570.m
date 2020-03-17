classdef SR570 < srs.AbstractSR570 & AsciiComm
    
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
    
    properties
        
        
    end
    
    methods
        
        function this = SR570(varargin) 
            
            % Call superclass constructor
            this = this@AsciiComm(varargin{:});
            
            this.cConnection = this.cCONNECTION_SERIAL;
            this.u8TerminatorWrite = uint8([13 10]);
            this.u8TerminatorRead = uint8([13 10]);
            
            this.init(); % AsciiComm.init()
            
        end
           
        
        % Sets the sensitivity of the amplifier See constant props SETTING_*:
        function setSensitivity(this, dVal)
            cCmd = sprintf('SENS %d', dVal);
            this.writeAscii(cCmd);
        end 
                
    end
    
    
    methods (Access = private)
        
        
    end
    
end

