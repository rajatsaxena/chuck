SinOsc s => dac;
TriOsc t => dac;


220 => float myFreq;
0.8 => float myVol;
0.1 => float myVol1;
myVol => s.gain;
myVol1 => t.gain;

for ( 20=> int i; i< 400; i++)
{
    i => t.freq;
    i => s.freq;
    0.005::second => now;
}



