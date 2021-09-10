classdef SR570Virtual < srs.AbstractSR570 & AsciiComm
    
    properties
    end
    
    properties (Constant)
        
        
    end
    
    properties
        
        dSensitivity = 0
        lHasSet = false
    end
    
    methods
        
        function this = SR570Virtual(varargin) 
            
        end
           
        
        % Sets the sensitivity of the amplifier See constant props SETTING_*:
        function setSensitivity(this, dVal)
            this.dSensitivity = dVal;
            this.lHasSet = true;
        end 
        
        function [dVal, lSuccess] = getSensitivity(this)
            dVal = this.getAmpsPerVoltFromSetting(this.dSensitivity);
            lSuccess = this.lHasSet; % only return success if we have called set once since the hardware has no read capability
            
        end
                
    end
    
    
    methods (Access = private)
        
        
    end
    
end

