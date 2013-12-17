TriOsc chord[3];
Gain master => dac;
for(0 => int i; i < chord.cap(); i++)
{
    chord[i] => master;
    1.0/chord.cap() => chord[i].gain;
}

fun void playChord(int root, string quality, float length)
{
    //function will make major or minor chords
    Std.mtof(root) => chord[0].freq;
    
    if(quality == "major")
    {
        Std.mtof(root+4) => chord[1].freq;
    }
    else if(quality=="minor")
    {
        Std.mtof(root+7) => chord[2].freq;
    }
    else
    {
        <<< "must specify major or minor" >>>;
    }
    
    Std.mtof(root+7) => chord[2].freq;
    
    length::ms => now;
    
}

//main program

.5 => master.gain;
 
while(true)
{
    playChord(Math.random2(60,72), "minor", 250);
    playChord(Math.random2(60,72), "major", 500);
    playChord(Math.random2(60,72), "major", 250);
}