SndBuf mySound => dac;

me.dir() + "/audio/snare_01.wav" => string filename;

filename => mySound.read;

//find number of samples
mySound.samples() => int numSamples;
<<< numSamples >>>;

while(true)
{
    numSamples => mySound.pos; //set play head position
    -1.0 => mySound.rate; //set rate negative
    1::second => now;
}