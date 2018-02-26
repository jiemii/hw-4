var freqA = 174;
var freqS = 196;
var freqD = 220;
var freqF = 246;
var freqQ = 140;
var freqW = 160;

var oscA, oscS, oscD, oscF, oscQ, oscW;

var playingA, playingS, playingD, playingF, playingQ, playingW;

var playing = false;

function preload() {
bird = loadSound('assets/bird.mp3');
instrument = loadSound('assets/instrument.mp3')
 }

function setup() {
  backgroundColor = color(10, 10, 15);
  textAlign(CENTER);
  
  oscA = new p5.Oscillator();
  oscA.setType('sine');
  oscA.freq(freqA);
  oscA.amp(0);
  oscA.start();
  
  oscS = new p5.Oscillator();
  oscS.setType('sine');
  oscS.freq(freqS);
  oscS.amp(0);
  oscS.start();
  
  oscD = new p5.Oscillator();
  oscD.setType('sine');
  oscD.freq(freqD);
  oscD.amp(0);
  oscD.start();
  
  oscF = new p5.Oscillator();
  oscF.setType('sine');
  oscF.freq(freqF);
  oscF.amp(0);
  oscF.start();
  
  oscQ = new p5.Oscillator();
  oscQ.setType('sine');
  oscQ.freq(freqQ);
  oscQ.amp(0);
  oscQ.start();
  
  oscW = new p5.Oscillator();
  oscW.setType('sine');
  oscW.freq(freqW);
  oscW.amp(0);
  oscW.start();
}

function draw() {
  if (playing) {
background(0, 255, 255);
	  } else {
	    background(255, 0, 255);
	  }
}


function keyPressed() {
  print("got key press for ", key);
  var osc;
  if (key == 'A') {
    osc = oscA;
playingA = true;
  } else if (key == 'S') {
    osc = oscS;
    playingS = true;
  } else if (key == 'D') {
    osc = oscD;
    playingD = true;
  } else if (key == 'F') {
    osc = oscF;
    playingF = true;
  } else if (key == 'Q') {
    bird.play();
    bird.setVolume(0.5);
    playingF = true;

  } else if (key == 'W') {
    osc = oscW;
    instrument.play();
    instrument.setVolume(0.3);
    playingW = true;
  }
  if (osc) {
    osc.amp(0.5, 0.1);
    playing = true;
  }
}

function keyReleased() {
  print("got key release for ", key);
  var osc;
  if (key == 'A') {
    osc = oscA;
    playingA = false;
  } else if (key == 'S') {
    osc = oscS;
    playingS = false;
  } else if (key == 'D') {
    osc = oscD;
    playingD = false;
  } else if (key == 'F') {
    osc = oscF;
    playingF = false;
  } else if (key == 'Q') {
    osc = oscQ;
    playingQ = false;
  } else if (key == 'W') {
    osc = oscW;
    playingW = false;
  }
  if (osc) {
    osc.amp(0, 0.8);
    playingA = false, playingS = false, playingD = false, playingF = false
    playingQ = false, playingW = false;
  }
}

function draw() {
	  background(255);
	  colorMode(RGB);
	  if (playingA) {
	    fill(100, 255, 0);
	    noStroke();
	    rect(0, 0, 50, 50);
	  }
	  if (playingS) {
	    fill(150, 50, 255);
	    noStroke();
	    rect(50, 50, 50, 50);
	  }
	  if (playingD) {
	    fill(0, 255, 255);
	    noStroke();
	    rect(50, 0, 50, 50);
	  }
	  if (playingF) {
	    fill(255, 0, 255);
	    noStroke();
	    rect(0, 50, 50, 50);
	  }if (playingQ) {
	    fill(0, 0, 100);
	    noStroke();
	    rect(0, 0, width, height);
	  }if (playingW) {
	    fill(50, 150, 255);
	    noStroke();
	    rect(50, 50, width, height);
	  }
}
