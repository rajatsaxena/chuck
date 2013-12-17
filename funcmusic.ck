SinOsc s => dac;

fun float halfGain( float originalGain )
{
    return (originalGain*.5);
}

//.gain() is a function which is part of SinOscillator
<<< " Full Gain: ", s.gain() >>>;
1::second => now;

//call half gain
halfGain(s.gain()) => s.gain;
<<< "Half Gain is: ", s.gain()>>>;
1::second => now;