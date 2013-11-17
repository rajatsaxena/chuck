// synthesis patch
SinOsc foo => dac;
.5 => foo.gain;

// an array : add stuff
[0,2,4, 7] @=> int hi[];

while(true)
{
    // change parameters here
    Std.mtof(45 + Std.rand2(0,3)*12 +
        hi[Std.rand2(0,hi.cap()-1)]) => foo.freq;
    
    //different rate
    200::ms => now;
}