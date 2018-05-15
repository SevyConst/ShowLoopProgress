function [ output_args ] = executeLoop( nIter, nSteps )
%EXECUTELOOP Summary of this function goes here
%   Detailed explanation goes here
    progress = ShowLoopProgress(nIter, nSteps);
    for i = 1 : nIter
        progress.show(i);
    end
end

