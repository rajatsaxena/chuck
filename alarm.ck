now + 6::second => time later;

while( now <= later )
{
    //print out 
    <<< "time left:", (later-now)/second >>>;
    1::second => now;
}

<<< "IT'S TIME" >>>;

SinOsc foo => dac;
880 => foo.freq;
2::second => now;