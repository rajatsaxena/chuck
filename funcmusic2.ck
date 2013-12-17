SinOsc s => dac;
SinOsc t => dac;
SinOsc u => dac;

fun float fifth(float x)
{
    return (x*1.5);
}

fun float octave(float x)
{
    //calculate octave of input frequency
    return (x*2);
}

for(20 => float i; i < 500; i + .5 => i)
{
    i => s.freq;
    octave(i) => t.freq;
    fifth(i) => u.freq;
    <<< s.freq(), t.freq(), u.freq() >>>;
    10::ms => now;
}