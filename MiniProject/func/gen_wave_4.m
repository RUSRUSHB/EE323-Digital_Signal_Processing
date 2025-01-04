function waves = gen_wave_4(tone, scale, nOctave, rising, rhythm, fs, decayType)

    if tone == 0
        waves = zeros(1, floor(fs*rhythm));
        return
    end
    % tone2freq(tone, scale, nOctave, rising)
    f = tone2freq(tone, scale, nOctave, rising);
    t = linspace(0, rhythm, fs*rhythm);
    waves = sin(2*pi*f*t);

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
