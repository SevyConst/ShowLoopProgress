% Random nIter and nSteps
clear all;

addpath('../');

maxNumberIter = 2^30;
nIter = randi(maxNumberIter)

maxNumberSteps = 2^10;
nSteps = randi(maxNumberSteps)
executeLoop(nIter, nSteps)