//integer example

int a;
2 => a;
<<< a >>>;

3 => int b;
<<< b >>>;

10 * a => int c;
<<< c >>>;

SinOsc s => dac;

261.63 => float myFreq;
1 => float myVol;
1::second => dur d;

myFreq => s.freq;
myVol => s.gain;
d => now;