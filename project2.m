F_s = 44100;
l = 6;

sinetone = sinVect(6*5000, F_s, l);
sineplayer = audioplayer(sinetone, F_s);
spectrograph(sinetone, F_s, "5000 Hz sine tone");

audiowrite("team10-sinetone.wav", sinetone, F_s);
%play(sineplayer)

chirptone = chirp(8000, F_s, l);
chripplayer = audioplayer(chirptone, F_s);
spectrograph(chirptone, F_s, "0 to 8000 Hz chirp tone");

audiowrite("team10-chirp.wav", chirptone, F_s);
%play(chripplayer)

cetktone = fivetone(1176.66 * 2, 1244.51 * 2, 1108.73 * 2, 523 * 2, 784 * 2, F_s, l);
cetkplayer = audioplayer(cetktone, F_s);
spectrograph(cetktone, F_s, "Approximate tones from CETK");

%play(cetkplayer);
ad1 = audioread("p1mono.wav");
ad = 1:(l*F_s);
ad2 = transpose(ad1);

for i = 1:(l*F_s)
    ad(i) = ad1(i) + sinetone(i);
end

audiowrite("team10-speechsine.wav", ad, F_s);
spectrograph(ad, F_s, "Phrase 1 with sine tone added");
speechplayer = audioplayer(ad, F_s);
%play(speechplayer);

[lowpassAD, d] = lowpass(ad, 4000, F_s);

audiowrite("team10-filteredspeechsine.wav", lowpassAD, F_s);
spectrograph(lowpassAD, F_s, "Phrase 1 with sine tone & filter added");
speechplayer = audioplayer(lowpassAD, F_s);
play(speechplayer);

stereoAD = transpose([ad2; ad]);

audiowrite("team10-stereospeechsine.wav", stereoAD, F_s);
spectrograph(ad2, F_s, "Stereo phrase 1 with sine tone (left)");
spectrograph(ad, F_s, "Stereo phrase 1 with sine tone (right)");
speechplayer = audioplayer(stereoAD, F_s);
%play(speechplayer);
