function freq = tone2freq(tone, varargin)


    if nargin == 3
        % tone2freq(tone, nOctave, rising)
        nOctave = varargin{1};
        rising = varargin{2};
        scale = 6;
    elseif nargin == 4
        % tone2freq(tone, scale, nOctave, rising)
        scale = varargin{1};
        nOctave = varargin{2};
        rising = varargin{3};
    else
        error('InputError:InvalidNumOfInput', 'incorrect function call format')
    end
        
    
    if ~ismember(tone, 1:7)
        error('`tone` must be an integer between 1 and 7');
    end
    
    if ~ismember(nOctave, -4:4)
        error('`nOctave` must be an integer between -4 and 4')
    end

    if ~ismember(rising, -1:1)
        error('`rising` must be an integer between -1 and 1')
    end
    
    persistent tone2temper;
    persistent scale2freq;
    % Don't need to initialize it every time

    if isempty(tone2temper)
        tone2temper = [0,2,4,5,7,9,11];
        % mapping from number to position in 12 Equal Temperament
    end

    if isempty(scale2freq)
        scale2freq = [261.5, 293.5, 329.5, 349, 391.5, 440, 494];
        % TODO: More scales?
    end

    num = tone2temper(tone) + rising;
    tonic = scale2freq(scale);  % 主音
    
    flag_lowerOctave = 0;
    flag_higherOctave = 0;
        
    if num <= 0
        num = num + 12;
        flag_lowerOctave = 1;
    end
    
    if num > 12
        num = num - 12;
        flag_higherOctave = 1;
    end

    freq = tonic*2^(num/12+nOctave-flag_lowerOctave+flag_higherOctave);

end

