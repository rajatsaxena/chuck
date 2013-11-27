//sound chain
SndBuf mySound => Pan2 p => dac;

//directory of this file
me.dir() => string path;
//define the filename
"/audio/snare_01.wav" => string filename;
path + filename => filename;
<<< filename >>>;
//open up soundfile
filename => mySound.read;

//simple control
while(true)
{
    Math.random2f(.2,.8) => mySound.gain;
    Math.random2f(.2,1.8) => mySound.rate;
    Math.random2f(-0.5,0.5) => p.pan;
    0 => mySound.pos;
    100::ms => now;
}
