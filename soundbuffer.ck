//sound chain
SndBuf mySound => dac;

//directory of this file
me.dir() => string path;
//define the filename
"/audio/snare_01.wav" => string filename;
path + filename => filename;
<<< filename >>>;
//open up soundfile
filename => mySound.read;

//simple control
0.5 => mySound.gain; //set volume
0 => mySound.pos; //sets playhead position

1::second => now;