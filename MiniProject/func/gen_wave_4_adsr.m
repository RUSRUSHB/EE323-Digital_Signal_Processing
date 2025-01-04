function waves = gen_wave_4_adsr(tone, scale, nOctave, rising, rhythm, fs, adsr)
    %  time = attack + decay + HOLD + release = 0.02+0.1+t+0.3
    persistent releaseTime;

    if ~isempty(releaseTime)
        releaseTime = 0.3;
    end

    persistent envNoChange;

    if 

    persistent attackEnv decayEnv releaseEnv;

    if tone == 0
        waves = zeros(1, floor(fs*rhythm));
        return
    end

    f = tone2freq(tone, scale, nOctave, rising);
    % t = linspace(0, rhythm, fs*rhythm);

    t = linspace(0, rhythm+releaseTime, fs*(rhythm+releaseTime));

    waves = sin(2*pi*f*t);


    

    waves = waves.*decay;
end
