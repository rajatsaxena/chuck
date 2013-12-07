Mandolin m => dac;

0.5 => m.pluckPos;
1 => m.noteOn; //plucks string

0.25 => m.bodySize; //0.5 natural size of mandolin size
500 => m.freq;


2.0::second => now;