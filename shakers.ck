Shakers shak => dac;

/* for( 0 => int i; i < 23 ; i++)
{
    i => shak.preset;
    1.0 => shak.noteOn;
    1.0::second => now;
}*/

17 => shak.preset; //quarters in mug
 
while(true)
{
    //Math.random2f(0.0,128.0)
    100 => shak.objects;
    //Math.random2f(0.0,1.0)
    1 => shak.decay;
    1.0 => shak.energy; //noteon resets the decay
    1.0::second => now;
}