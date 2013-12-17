ModalBar one => dac.left;
ModalBar two => dac.right;

7 => one.preset;
4 => two.preset;
.9 => one.strikePosition;
.9 => two.strikePosition;
60 => Std.mtof => one.freq;
64 => Std.mtof => two.freq;

fun void foo()
{
        while(true)
    {
        <<< "foo!","">>>;
        //note
        1 => one.strike;
        250::ms => now;
    }
}

fun void bar()
{
while(true)
{
    <<< "BAAAAR!!","">>>;
    1 => two.strike;
    1::second => now;
}
}

//a shred is created by spork function

spork ~ foo(); //execute this function on parallel shred of logic
spork ~ bar();

//to keep parent shred alive in order for children to live
while(true) 1::second => now;