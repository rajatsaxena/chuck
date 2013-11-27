//sound chain
Gain master => dac;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf snare => master;

.6 => master.gain;

//load soundfiles into sndbuf
me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/hihat_01.wav" => hihat.read;
me.dir() + "/audio/snare_01.wav" => snare.read;

//set all playheads to end so no sound is made
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;

//initialize a counter variable
0 => int counter;

while(true)
{
    //beat goes from 0 to 7(8 positions)
    counter % 8 => int beat;
    
    //bass drum on 0 and 4
    if((beat == 0) || (beat == 4))
    {
        0 => kick.pos;
    }
    
    //bass drum on 2 and 6
    if ((beat == 2) || (beat == 6))
    {
       0 => snare.pos; 
       Math.random2f(.6,1.4) => snare.rate;
    }
    
     0 => hihat.pos;
    .2 => hihat.gain;  
    Math.random2f(.5,1.8) => hihat.rate;
    
    <<< "Counter: ", counter, "Beat: ", beat >>>;
    counter++;
    250::ms => now;
    
}

1::second => now;