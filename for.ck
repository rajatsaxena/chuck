SinOsc s=> dac;

for ( 20=> int i; i< 400; i++)
{
    <<< i >>>;
    i => s.freq;
    0.01::second => now;
}

