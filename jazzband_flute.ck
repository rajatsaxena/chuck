Flute solo => JCRev rev => dac;
solo => Delay d => d => rev;

0.1 => rev.mix;
0.8::second => d.max => d.delay;
0.5 => d.gain;

[41,43,48,50,51,53,60,63] @=> int scale[];

while(true)
{
    (Math.random2(1,5)*0.2)::second => now;
    
    if( Math.random2(0,3)>1)
    {
        Math.random2(0,scale.cap()-1)=> int note;
        Math.mtof(24+ scale[note]) => solo.freq;
        Math.random2f(0.3,1.0) => solo.noteOn;
    }
    
    else
    {
       1 => solo.noteOff; 
    }
}