SinOsc foo => dac;

while(true)
{
220 => foo.freq;
0.5::second => now;

440 => foo.freq;
0.5::second => now;

880 => foo.freq;
1::second => now;
}