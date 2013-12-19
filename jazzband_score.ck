"C:/Users/saxena/Downloads/jazzband_piano.ck" => string pianoPath; 
"C:/Users/saxena/Downloads/jazzband_bass.ck" => string bassPath;
"C:/Users/saxena/Downloads/jazzband_drums.ck" => string drumsPath;
"C:/Users/saxena/Downloads/jazzband_flute.ck" => string flutePath;

Machine.add(pianoPath) => int pianoID;
4.8::second => now;

Machine.add(drumsPath) => int drumsID;
4.8::second => now;

Machine.add(bassPath) => int bassID;
4.8::second => now;

Machine.add(flutePath) => int fluteID;
4.8::second => now;

Machine.remove(drumsID);
4.8::second => now;

Machine.add(drumsPath) => drumsID;