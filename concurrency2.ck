ModalBar modal => NRev reverb => dac.left;
ModalBar modal2 => NRev reverb2 => dac.right;
//set reverb mix
.1 => reverb.mix;
//modalbar params
7 => modal.preset;
.9 => modal.strikePosition;

.1 => reverb2.mix;
//modalbar params
3 => modal2.preset;
.9 => modal2.strikePosition;

spork ~one();
spork ~ two();
spork ~ tune();

while(true) 1::second => now;
  

fun void one()
{
while(true)
{
    1 => modal.strike;
    300::ms => now;
    .7 => modal.strike;
    300:: ms => now;
    
    repeat(6)
    {
        .5 => modal.strike;
        180::ms => now;
    }
}
}

fun void two()
{
    while(true)
    {
       // 150::ms => now;
        
        1=>modal2.strike;
        300::ms => now;
        
        .75=>modal2.strike;
        300::ms => now;
        
        .5=>modal2.strike;
        300::ms => now;
        
        .25=>modal2.strike;
        300::ms => now;

    }
}

fun void tune()
{
    while(true)
    {   
        //update frequenct
        84 + Math.sin(now/second*Math.PI*.25)*.5 => Std.mtof => modal.freq;
        //advance time
        5::ms => now;
    }
}