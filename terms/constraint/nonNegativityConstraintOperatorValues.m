%
classdef nonNegativityConstraintOperatorValues < basicDualizedDataterm & constraintBoxDualized
    methods
        function obj = nonNegativityConstraintOperatorValues(A, minmin, maxmax)
            if (iscell(A))
                numPrimals = numel(A);
            else
                numPrimals = 1;
            end
		
            obj = obj@basicDualizedDataterm(1,numPrimals,A,cell(1,1));
            
            obj.minVal = minmin;
            obj.maxVal = maxmax;
        end
    end
end