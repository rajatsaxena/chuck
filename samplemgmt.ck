//sound chain
SndBuf snare => dac;

//array of strings
string snare_samples[3];

//load array with file path
me.dir() + "/audio/snare_01.wav" => snare_samples[0];
me.dir() + "/audio/snare_02.wav" => snare_samples[1];
me.dir() + "/audio/snare_03.wav" => snare_samples[2];

//how many samples
<<< snare_samples.cap() >>>;

while(true)
{
    Math.random2(0,snare_samples.cap()-1) => int which; 
    snare_samples[which] => snare.read; //read in the samples
    250::ms => now;
}