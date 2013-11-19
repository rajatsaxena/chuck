
SinOsc r => Pan2 p => dac;

// hard pan
1.0 => p.pan;
1::second => now;

-1.0 => p.pan;
1::second => now;