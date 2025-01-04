function waves = gen_wave_5(tone, scale, nOctave, rising, rhythm, fs, decayType, harmonyType)

    if tone == 0
        waves = zeros(1, floor(fs*rhythm));
        return
    end
    % tone2freq(tone, scale, nOctave, rising)
    f = tone2freq(tone, scale, nOctave, rising);
    t = linspace(0, rhythm, fs*rhythm);

    switch harmonyType
        case "sin"
            waves = sin(2*pi*f*t);
        case "triangle"
            waves = sawtooth(2*pi*f*t, 0.5);
        case "square"
            waves = square(2*pi*f*t);
        case "sawtooth"
            waves = sawtooth(2*pi*f*t);
        case "piano"
            waves = 0.6*sin(2*pi*f*t) + 0.3*sin(2*pi*2*f*t) + 0.2*sin(2*pi*3*f*t) + 0.15*sin(2*pi*4*f*t);
        case "flute"
            waves = 0.8*sin(2*pi*f*t) + 0.1*sin(2*pi*2*f*t) + 0.05*sin(2*pi*3*f*t) + 0.05*sin(2*pi*4*f*t);
        case "metal"
            waves = 0.5*sin(2*pi*f*t) + ...        % 基频
              0.3*sin(2*pi*2.5*f*t) + ...    % 2.5 倍基频（非整数谐波）
              0.2*sin(2*pi*4*f*t) + ...      % 四阶谐波
              0.15*sin(2*pi*5.7*f*t) + ...   % 5.7 倍基频（非整数谐波）
              0.1*sin(2*pi*8*f*t);           % 八阶谐波（高次谐波）
        case "fmbell"
            waves = 0.5*sin(2*pi*f*t) + 0.3*sin(2*pi*2.5*f*t) + 0.2*sin(2*pi*4*f*t) + 0.1*sin(2*pi*5.7*f*t);
        case "subbass"
            waves = 0.9*sin(2*pi*f*t) + 0.2*sin(2*pi*2*f*t) + 0.1*sin(2*pi*3*f*t) + 0.05*sin(2*pi*4*f*t);
        case "violin"
            waves = 0.6*sin(2*pi*f*t) + ...    % 基频（1st harmonic）
               0.4*sin(2*pi*2*f*t) + ...  % 二阶谐波（2nd harmonic）
               0.3*sin(2*pi*3*f*t) + ...  % 三阶谐波（3rd harmonic）
               0.2*sin(2*pi*4*f*t);       % 四阶谐波（4th harmonic）
    end
    
    waves = waves/max(waves);

    switch decayType
        case "exp"
            decay = exp(-t / rhythm);
        case "linear"
            decay = linspace(1, 0.3, fs * rhythm);
        case "square"
            decay = (1 - t * 0.7 / rhythm).^2;
        otherwise
            error("Wrong decayType");
    end


    waves = waves.*decay;
end
