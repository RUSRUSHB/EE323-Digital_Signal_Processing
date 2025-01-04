function music=gen_song(noteTable)
    music = [];
    for m = 1:length(noteTable)
        note = num2cell(noteTable(m, :));
        [tone, nOctave, rising, mulLength] = note{:};
        music = [music, ...
            gen_wave_5(tone, scale, nOctave, rising, mulLength*baseLen, fs, ...
            'square', 'square')];
    end
end