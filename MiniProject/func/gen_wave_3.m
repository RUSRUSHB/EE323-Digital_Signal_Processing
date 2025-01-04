function waves = gen_wave_3(tone, scale, nOctave, rising, rhythm, fs)
    if tone == 0
        waves = zeros(1, floor(fs*rhythm));
        return
    end
    % tone2freq(tone, scale, nOctave, rising)
    f = tone2freq(tone, scale, nOctave, rising);
    t = linspace(0, rhythm, fs*rhythm);
    waves = sin(2*pi*f*t);
end

