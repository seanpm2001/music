% settings.ily: Settings for all parts and the score.
% Copyright (C) 2015, Brian Clements

% This program is free software: you can redistribute it and/or modify it under
% the terms of the GNU General Public License as published by the Free Software
% Foundation, either version 3 of the License, or (at your option) any later
% version.

% This program is distributed in the hope that it will be useful, but WITHOUT
% ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
% FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
% details.

% You should have received a copy of the GNU General Public License along with
% this program.  If not, see <http://www.gnu.org/licenses/>.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%                               Settings                              %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set the global transposition here. This will transpose the score, individual
% parts, and midi output. 'inputKey' is usually the concert key, or the key that
% you enter the music in. 'finalKey' is the key to transpose into.

inputKey = c
finalKey = c

% Remove music tagged with `#'transposed` to create a score with all parts in
% concert pitch (still subject to the `globalTranspose` setting above), or
% remove music tagged `#'concert` to create a score with transposed parts.

scoreStyle =
    #(define-music-function
        (parser location music)
        (ly:music?)
        #{ 
            \removeWithTag #'transposed { #music }
        #})
