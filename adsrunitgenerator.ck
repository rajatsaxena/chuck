
SinOsc vib => SawOsc viol => ADSR env => dac;
(0.5::second, .1::second, .6, 0.5::second) => env.set;

660 => viol.freq; //change pitch
6 => vib.freq;  //vibrato frequency
2 => viol.sync;  //set sync mode to FM (2)
3 => vib.gain;

1 => env.keyOn; //turn envelopse on
2::second => now;

1 => env.keyOff; //turn envelopse off
2::second => now;