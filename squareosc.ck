//Author: Rajat Saxena
// Date: Today's Date

//sound network
SqrOsc s => dac;

0.5 => s.gain;
220 => s.freq;
1::second => now; //play for 1 second

0.4 => s.gain;
440 => s.freq;
2::second => now;

0.2 => s.gain;
330 => s.freq;
3::second => now;