SinOsc s => dac;

[60,62,63,65,63,64,65,58,57] @=> int A[];

fun void swell(float begin, float end, float grain)
{
    //this function is a volume sweller
    
    //swell up
    for(begin => float j; j < end; j + grain => j)
    {
        j => s.gain;
        .01::second => now;
    }
    
    //swell down
    for(end => float j; j > begin; j - grain => j)
    {
        j => s.gain;
        .01::second => now;
    }
}

for(0 => int i; i < A.cap(); i++)
{
    Std.mtof(A[i]) => s.freq;
    swell(.4,0.9,.03); //function to control volume
    0.1::second => now;
}