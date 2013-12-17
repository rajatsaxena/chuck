
SqrOsc clar => ADSR env => dac;
(0.5::second, .1::second, .1, 2::second) => env.set;

1 => env.keyOn; //turn envelopse on
2::second => now;

1 => env.keyOff; //turn envelopse off
2::second => now;