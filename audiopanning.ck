//set s to left speaker and t to right speaker
SinOsc s => dac.left;
SinOsc t => dac.right;

// set frequencies
220.35 => s.freq;
330.67 => t.freq;

1::second => now;