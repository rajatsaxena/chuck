1::second => dur quarter;
4::quarter => dur whole;

SinOsc s => dac;

220 => int myfreq;
1 => float myVol;


myfreq => s.freq;
myVol => s.gain;
whole => now;