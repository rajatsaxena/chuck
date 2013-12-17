SndBuf click => dac;

//read file
me.dir() + "/audio/stereo_fx_01.wav" => click.read;

click.samples() => click.pos;

fun void granularize(int steps)
{   
    // samples/steps => grain size
    click.samples()/steps => int grain;
    // randomly set grain position
    Math.random2(0, click.samples() - grain) => click.pos;
    grain::samp => now;
}

//main program

while(true)
{
    granularize(20);
}