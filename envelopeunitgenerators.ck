//2 types of envelope unit generators

SqrOsc clar => Envelope env => dac;
1::second => env.duration;  //change ramp time

1 => env.keyOn; //turn envelopse on
2::second => now;

1 => env.keyOff; //turn envelopse off
2::second => now;