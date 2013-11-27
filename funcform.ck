SndBuf click => dac;
SndBuf kick => dac;

me.dir() + "/audio/snare_03.wav" => click.read;
me.dir() + "/audio/kick_01.wav" => kick.read;

kick.samples() => kick.pos;
click.samples() => click.pos;

[1,0,0,0,1,0,0,0] @=> int kick_ptrn_1[];
[0,0,1,0,0,0,1,0] @=> int kick_ptrn_2[];
[1,0,1,0,1,0,1,0] @=> int click_ptrn_1[];
[1,1,1,1,1,1,1,1] @=> int click_ptrn_2[];


fun void section(int kickArray[], int clickArray[], float beattime)
{
    //sequencer: for bass drum and snare drum beats
    for(0 => int i; i < kickArray.cap(); i++)
    { 
        //if 1 in the array then play kick
        if(kickArray[i]==1)
        {
            0 => kick.pos;
        }
        
       //if 1 in array then play click
        if(clickArray[i]==1)
        {
            0 => click.pos;
        }
        beattime::second => now;    
    }
}

//main program

while(true)
{
    //procedural :: ABA form
    section(kick_ptrn_1,click_ptrn_1,0.2);
    section(kick_ptrn_2,click_ptrn_2,0.2);
    section(kick_ptrn_1,click_ptrn_1,0.4);
}
