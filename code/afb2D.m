function [lo, hi] = afb2D(x, af1, af2)

% 2D Analysis Filter Bank
%
% [lo, hi] = afb2D(x, af1, af2);
% INPUT:
%    x - NxM matrix, where min(N,M) > 2*length(filter)
%           (N, M are even)
%    af1 - analysis filter for the columns
%    af2 - analysis filter for the rows
%    afi(:, 1) - lowpass filter
%    afi(:, 2) - highpass filter
% OUTPUT:
%     lo, hi - lowpass, highpass subbands
%     hi{1} = 'lohi' subband
%     hi{2} = 'hilo' subband
%     hi{3} = 'hihi' subband

if nargin < 3
   af2 = af1;
end

% filter along columns
[L, H] = afb2D_A(x, af1, 1);

% filter along rows
[lo    hi{1}] = afb2D_A(L, af2, 2);
[hi{2} hi{3}] = afb2D_A(H, af2, 2);