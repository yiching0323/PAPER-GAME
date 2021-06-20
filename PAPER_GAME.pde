import processing.video.*;
final int GAME_START = 0;
final int FLOOR1_RUN = 1, FLOOR1_WIN = 2, FLOOR1_LOSE = 3;
final int FLOOR2_RUN = 4, FLOOR2_WIN = 5, FLOOR2_LOSE = 6;
final int FLOOR3_RUN = 7, FLOOR3_WIN = 8, FLOOR3_LOSE = 9;
final int FLOOR4_RUN = 10, FLOOR4_WIN = 11, FLOOR4_LOSE = 12;
final int FLOOR5_RUN = 13, FLOOR5_WIN = 14, FLOOR5_LOSE = 15;
final int GAME_PASS = 16;

int gameState = FLOOR5_RUN;
int floor4_state = 0 ;

//WHOLE GAME
PImage bg, AR, AR2,game_start;
final int START_BUTTON_X = 800;
final int START_BUTTON_Y = 580;
final int START_BUTTON_WIDTH = 144;
final int START_BUTTON_HEIGHT = 60;


import ddf.minim.*;
Minim bgm;
AudioPlayer song;
boolean isPlaying;

Minim lose;
AudioSample lose_sound;
boolean losePlaying;


//FLOOR1_FROG
Movie FROG_WIN;
int [] frogX; 
int [] frogY; 
int lineX, lineY, playerX, playerY;
final int FINAL_LINE = 840;
float [] frogXSpeed;
float player_pace_cnt = 0;
float playerXSpeed = 25;

PImage frog, player, line, game_lose_frog;

float [] frog_pace_cnt ;
float frog_down = 60;
float frog_jump = 42;

Minim jump;
AudioSample jump_sound;
boolean jumpPlaying;


//FLOOR2_PLANE
Movie PLANE_WIN;
PImage ground, building1, building2, light, plane, pole, cloud1, cloud2, bird, hydrant, game_lose_plane;

float building1X, building2X, groundX;
int building1Y, building2Y, groundY;

float planeX, planeY, initPlaneX, initPlaneY;
float planeXSpeed = 10;
float planeYSpeed = 8;
int parabola_x = 0;

float moveSpeed = 4;
int start = 0;
int frame_length = 960;
float player_pos;

float []lightX; 
float []lightY;
float []birdX; 
float []birdY;
float []cloud1X;
float []cloud1Y;
float []cloud2X;
float []cloud2Y;
float []poleX;
float []poleY;
float []hydrantX;
float []hydrantY;
final float SKY_Y = 0;
final float GROUND_Y = 655;
final int WINDOW_UP = 300;
final int WINDOW_LEFT = 750;
final int WINDOW_HIEGHT = 165;
final int WINDOW_WIDTH = 175;
final int LIGHT_WIDTH = 255;
final int POLE_WIDTH = 60;
final int HYDRANT_WIDTH = 82;
final int CLOUD1_WIDTH = 119;
final int CLOUD2_WIDTH = 215;
final int BIRD_WIDTH = 62;

Minim fly;
AudioSample fly_sound;
boolean flyPlaying;

//FLOOR3_TOILET
Movie TOILET_WIN;
PImage CR, OK;//////SAME WITH GAME6
Timer timer;
int TMR;
int TMRR;
PImage T, B, H, fail2;
float hole;
float A1, A2;
float beforeX;
float beforeY;
float FbeforeX = 0;
float easing = 0.1;

float GG = 0;
PImage FULL, THIN;

import ddf.minim.*;

Minim minim;
AudioSample tear;

float m;
float ovalM;

Eye e1, e2;
//FLOOR4_SCHOOL
final int SCHOOL_RUN = 0, SCHOOL_WIN = 1, SCHOOL_LOSE = 2;
final int PANDA_RUN = 3, PANDA_WIN = 4;
final int SLEEP_RUN = 5, SLEEP_WIN = 6;

Movie  game_win_school;

//////////////clock
boolean bClicked;
int clickTime;
int clockTime=15000;
int cloudTime=2000;
int totalTime = clockTime + cloudTime;
float pRot;
//////////PImage bg,AR,AR2,OK,CR IS SAME WITH GAME2

PImage ASHOE,BSHOE,BODY,GLASS,SHIRT,PANT,DONE,BAG,SCHOOL,DARK;
PImage Pbg,darkbg,schoolbg,Sbg;
PImage AM,PM,BROKE,END;
float Sx,Ax,Bx,Gx,Px,BGx;
float Sy,Ay,By,Gy,Py,BGy;
boolean overShirt = false;
boolean overASHOE = false;
boolean overBSHOE = false;
boolean overGLASS = false;
boolean overPANT = false;
boolean overBAG = false;

boolean Shirtattached = false;
boolean ASHOEattached = false;
boolean BSHOEattached = false;
boolean GLASSattached = false;
boolean PANTattached = false;
boolean BAGattached = false;

boolean ShirtDone = false;
boolean ASHOEDone = false;
boolean BSHOEDone = false;
boolean GLASSDone = false;
boolean PANTDone = false;
boolean BAGDone = false;

float SxOffset = 0.0; 
float SyOffset = 0.0; 

float AxOffset = 0.0; 
float AyOffset = 0.0; 

float BxOffset = 0.0; 
float ByOffset = 0.0; 

float GxOffset = 0.0; 
float GyOffset = 0.0;

float PxOffset = 0.0; 
float PyOffset = 0.0;

float BGxOffset = 0.0; 
float BGyOffset = 0.0;

//PANDA
PImage PAASHOE,PABSHOE,HAT,PASHIRT,PAPANT,PADONE,PABAG,PAbg,game_lose_watch;

float PSx,PAx,PBx,PGx,PPx,PBGx;
float PSy,PAy,PBy,PGy,PPy,PBGy;
boolean overPAShirt = false;
boolean overPAASHOE = false;
boolean overPABSHOE = false;
boolean overPAGLASS = false;
boolean overPAPANT = false;
boolean overPABAG = false;

boolean PAShirtattached = false;
boolean PAASHOEattached = false;
boolean PABSHOEattached = false;
boolean PAGLASSattached = false;
boolean PAPANTattached = false;
boolean PABAGattached = false;

boolean PAShirtDone = false;
boolean PAASHOEDone = false;
boolean PABSHOEDone = false;
boolean PAGLASSDone = false;
boolean PAPANTDone = false;
boolean PABAGDone = false;

float PSxOffset = 0.0; 
float PSyOffset = 0.0; 

float PAxOffset = 0.0; 
float PAyOffset = 0.0; 

float PBxOffset = 0.0; 
float PByOffset = 0.0; 

float PGxOffset = 0.0; 
float PGyOffset = 0.0;

float PPxOffset = 0.0; 
float PPyOffset = 0.0;

float PBGxOffset = 0.0; 
float PBGyOffset = 0.0;

//SLEEP
PImage SASHOE,SBSHOE,SGLASS,SSHIRT,SPANT,SDONE;

float SSx,SAx,SBx,SGx,SPx;
float SSy,SAy,SBy,SGy,SPy;
boolean overSShirt = false;
boolean overSASHOE = false;
boolean overSBSHOE = false;
boolean overSGLASS = false;
boolean overSPANT = false;


boolean SShirtattached = false;
boolean SASHOEattached = false;
boolean SBSHOEattached = false;
boolean SGLASSattached = false;
boolean SPANTattached = false;


boolean SShirtDone = false;
boolean SASHOEDone = false;
boolean SBSHOEDone = false;
boolean SGLASSDone = false;
boolean SPANTDone = false;


float SSxOffset = 0.0; 
float SSyOffset = 0.0; 

float SAxOffset = 0.0; 
float SAyOffset = 0.0; 

float SBxOffset = 0.0; 
float SByOffset = 0.0; 

float SGxOffset = 0.0; 
float SGyOffset = 0.0;

float SPxOffset = 0.0; 
float SPyOffset = 0.0;

///////floor5 baby
PImage bgImg ;
PImage faceImg;
PImage noseImg;
PImage eyeImg;
PImage eyebrowLeftImg;
PImage eyebrowRightImg;
PImage mouthImg;
PFont myFont;
PImage gameloseImg;

boolean overEyebrowLeft = false;
boolean overEyebrowRight = false;
boolean overMouth = false;

boolean eyebrowLeftAttached = false;
boolean eyebrowRightAttached = false;
boolean mouthAttached = false;

boolean eyebrowLeftDone = false;
boolean eyebrowRightDone = false;
boolean mouthDone = false;

//item size
int mouthX = 320;
int mouthY = 200;
int eyebrowX = 110;
int eyebrowY = 90; 


float degreeMouth=0;  //mouth status
float degreeRight=0;  //eyebrow right status
float degreeLeft=0;  //eyebrow left status

//movie
Movie movie;
Movie ENDING;

void setup() {
  //WHOLE GAME
  size(960, 720);
  bg = loadImage("img/bg.png");
  AR = loadImage("img/AR.png");
  AR2 = loadImage("img/AR2.png");
  game_start = loadImage("img/game_start.jpeg");

  //music&video
  bgm = new Minim (this);
  song = bgm.loadFile("bgm.mp3");
  song.play();
  song.loop();

  isPlaying = true;
  
  //lose sound
  lose = new Minim (this);
  lose_sound = lose.loadSample("lose_sound.mp3");

  //FLOOR1_FROG
  FROG_WIN = new Movie(this, "game_win_frog.mp4");
  frameRate(60);
  frog = loadImage("img/frog.png");
  line = loadImage("img/line.png");
  game_lose_frog = loadImage("img/game_lose_frog.jpg");
  player = loadImage("img/player.png");

  set_frog();

  //FLOOR2_PLANE
  PLANE_WIN = new Movie(this, "game_win_plane.mp4");
  building1 = loadImage("img/building1.png");
  building2 = loadImage("img/building2.png");
  light = loadImage("img/light.png");
  plane = loadImage("img/paperplane.png");
  pole = loadImage("img/pole.png");
  bird = loadImage("img/bird.png");
  ground = loadImage("img/ground.png");
  cloud1 = loadImage("img/cloud1.png");
  cloud2 = loadImage("img/cloud2.png");
  hydrant = loadImage("img/hydrant.png");
  game_lose_plane = loadImage("img/game_lose_plane.jpg");

  set_plane();  

  //FLOOR3_TOILET
  TOILET_WIN = new Movie(this, "game_win_toilet.mp4");
  frameRate(60);

  minim = new Minim(this);
  tear = minim.loadSample( "tear.wav", 512);  
  
  background(bg);
  
  T = loadImage("img/T.png");
  //image(T, 0, 420, 300, 300);

  B = loadImage("img/B.png");
  //image(B, 300, 50, 750, 450);

  H = loadImage("img/H.png");

  e1 = new Eye( 110, 470, 50);
  e2 = new Eye( 175, 460, 40); 

  FULL = loadImage("img/FULL.png");
  THIN = loadImage("img/THIN.png");

  CR = loadImage("img/CR.png");//////SAME WITH GAME6
  OK = loadImage("img/OK.png");//////SAME WITH GAME6
  fail2 = loadImage("img/fail2.jpeg");

  timer = new Timer(15);

  //FLOOR_school
  set_school();
  load_school();
  game_lose_watch = loadImage("img/game_lose_watch.jpg");
  game_win_school = new Movie(this, "game_win_school.mp4");
  
  //baby
  // loading bg
  bgImg = loadImage("img/bg.jpg") ;
  faceImg = loadImage("img/face.png");
  noseImg = loadImage("img/nose.png");
  eyeImg = loadImage("img/eye.png");
  eyebrowLeftImg = loadImage("img/eyebrow.png");
  eyebrowRightImg = loadImage("img/eyebrow.png");
  mouthImg = loadImage("img/mouth.png");
  AR = loadImage("img/AR.png");
  AR2 = loadImage("img/AR2.png");
  gameloseImg = loadImage("img/gamelose.jpg");
  myFont = createFont("Arial", 48); 
  
  movie = new Movie(this,"game_win_baby.mp4");
  ENDING = new Movie(this,"ENDING.mp4");

}


void draw() {
  switch (gameState) {
     case GAME_START: // Start Screen
    image(game_start, 0, 0,width,height);
    if(mousePressed) {     
        gameState = FLOOR1_RUN;
      }
      
    break;
    
    //FLOOR1_FROG
    case FLOOR1_RUN:    
        background(bg);
        image(line, lineX, lineY);

        //player jump
        if (player_pace_cnt <= frog_down) {
        image(player, playerX, playerY);
        } else if (player_pace_cnt > frog_down && player_pace_cnt <= frog_jump + frog_down && playerX < FINAL_LINE) {
        pushMatrix();
        translate(playerX, playerY);
        scale(1.2, 1.2);
        image(player, 0, 0);
        popMatrix();
        } else {
        image(player, playerX, playerY); 
        player_pace_cnt = 0;
        }

        //frog jump
        for (int i=0; i<3; i++) {

        frog_pace_cnt[i] += frogXSpeed[i];
        frogX[i] += frogXSpeed[i];

        if (frog_pace_cnt[i] <= frog_down) {
            image(frog, frogX[i], frogY[i]);
        } else if (frog_pace_cnt[i] > frog_down && frog_pace_cnt[i] <= frog_jump + frog_down && frogX[i] < FINAL_LINE) {
            pushMatrix();
            translate(frogX[i], frogY[i]);
            scale(1.15, 1.15);
            image(frog, 0, 0);
            popMatrix();
        } else {
            image(frog, frogX[i], frogY[i]); 
            frog_pace_cnt[i] = 0;
        }

        if (frogX[i]>=FINAL_LINE) {
            frogX[i] = FINAL_LINE;
            gameState = FLOOR1_LOSE;
            lose_sound.trigger();
        }
        }
        break;

    case FLOOR1_WIN:
        FROG_WIN.play();
        image(FROG_WIN, 0, 0, width, height);
        song.pause();
        image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {

        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        }
        break;

    case FLOOR1_LOSE:
        set_frog();
        song.pause();
        image(game_lose_frog, 0, 0);
        image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {

        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        }
        break;

        //FLOOR2_PLANE
        case FLOOR2_RUN:
        FROG_WIN.pause();
        song.play();
        // Background
        background(bg);

        //ground
        image(ground, groundX, groundY);

        //building2
        image(building1, building1X, building1Y);
        image(building2, building2X, building2Y);

        // Light
        for (int i=0; i<8; i++) {
        image(light, lightX[i], lightY[i]);
        if (isHit(lightX[i], lightY[i], 255, 310, planeX, planeY, 40, 40)) {
            set_plane();
            start = 0;
        }
        }   

        // Pole
        for (int i=0; i<8; i++) {
        image(pole, poleX[i], poleY[i]);
        if (isHit(poleX[i], poleY[i], 60, 370, planeX, planeY, 40, 40)) {
            set_plane();
            start = 0;
        }
        }

        // Hydrant
        for (int i=0; i<8; i++) {
        image(hydrant, hydrantX[i], hydrantY[i]);
        if (isHit(hydrantX[i], hydrantY[i], 82, 105, planeX, planeY, 40, 40)) {
            set_plane();
            start = 0;
        }
        }

        // bird
        for (int i=0; i<10; i++) {
        image(bird, birdX[i], birdY[i]);
        if (isHit(birdX[i], birdY[i], 62, 71, planeX, planeY, 40, 40)) {
            set_plane();
            start = 0;
        }
        }

        //Cloud1
        for (int i=0; i<10; i++) {
        image(cloud1, cloud1X[i], cloud1Y[i]);
        if (isHit(cloud1X[i], cloud1Y[i], 119, 68, planeX, planeY, 40, 40)) {
            set_plane();
            start = 0;
        }
        }

        //Cloud2
        for (int i=0; i<8; i++) {
        image(cloud2, cloud2X[i], cloud2Y[i]);
        if (isHit(cloud2X[i], cloud2Y[i], 215, 126, planeX, planeY, 40, 40)) {
            set_plane();
            start = 0;
        }
        }

        if ((planeY + 40) >= GROUND_Y) {
        //touch the ground
        set_plane();
        start = 0;
        }      

        //1 (animation)
        image(plane, planeX, planeY);
        if (start == 1) {
        // Paperplane the sin signal
        building1X -= moveSpeed;
        building2X -= moveSpeed;
        parabola_x += moveSpeed;
        player_pos += moveSpeed;
        planeY = initPlaneY - sin(parabola_x*PI/(960-250))*200; 

        if (parabola_x >= (960-250)) {
            start = 2;
        }

        //2 (game start)
        } else if (start == 2) {
        planeY += planeYSpeed * 0.2;
        building1X -= moveSpeed;
        building2X -= moveSpeed;
        player_pos += moveSpeed;
        for (int i =0; i<8; i++) {
            lightX[i] -= moveSpeed;
            poleX[i] -= moveSpeed;
        }

        for (int i =0; i<10; i++) {
            cloud1X[i] -= moveSpeed;
        }

        for (int i =0; i<8; i++) {
            cloud2X[i] -= moveSpeed;
        }

        for (int i =0; i<8; i++) {
            hydrantX[i] -= moveSpeed;
        }

        for (int i =0; i<10; i++) {
            birdX[i] -= moveSpeed;
        }

        if (player_pos >= 9600) {
            start = 3;
        }

        //3 (game ending)
        } else if (start ==3) {
        planeX += moveSpeed;
        planeY += planeYSpeed * 0.2;

        if (isHit(WINDOW_LEFT, WINDOW_UP, WINDOW_HIEGHT, WINDOW_WIDTH, planeX, planeY, 40, 40)) {
            gameState = FLOOR2_WIN;
        } else if (planeX + 40 >= width) {       
            gameState = FLOOR2_LOSE;
            lose_sound.trigger();
        }
        }
        break;

    case FLOOR2_WIN:
        song.pause();
        PLANE_WIN.play();
        image(PLANE_WIN, 0, 0, width, height);    
        image(AR, START_BUTTON_X, START_BUTTON_Y);
        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {
        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        }
        break; 

    case FLOOR2_LOSE:
        set_plane();
        song.pause();
        start = 0;

        image(game_lose_plane, 0, 0);
        image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {

        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        }
        break;

        //FLOOR3_TOILET
        case FLOOR3_RUN:
        PLANE_WIN.pause();
        song.play();
        
        
        float targetX = mouseX;
        float dbeforeX = targetX - beforeX;
        beforeX += dbeforeX * easing;

        float targetY = mouseY;
        float dbeforeY = targetY - beforeY;
        beforeY += dbeforeY * easing;

        m=(targetX-beforeX)/(targetY-beforeY);

        ovalM=m*-1;

        float starSize = random(10, 25);
        float starNum = random(3, 8);
        float C = random(150, 200);
        image(bg, 0, 0, 85, 70);
        if (mousePressed) {
        fill(#231815);
        noStroke();

        //dist
        GG += dist(beforeX, beforeY, targetX, targetY);

        //path
        pushMatrix();

        translate(targetX, targetY);
        rotate(atan(ovalM));
        ellipse(0, 0, 100, 20);
        fill(C);
        star(-50, 0, starNum, starSize, 30);
        star(50, 0, starNum, starSize, 20);
        popMatrix();

        tear.trigger();
        }
        e1.update(mouseX, mouseY);
        e2.update(mouseX, mouseY);
        e1.display();
        e2.display();

        if ( FbeforeX > 0) {
            TMR ++;
            
        }

        if (TMR>120) {
            gameState = FLOOR3_WIN;
        }

        TMRR++;

        if (FbeforeX > 0 ) {
            TMRR=0;
        }

        if (TMRR == 900) {
            gameState = FLOOR3_LOSE;
            lose_sound.trigger();
        }

        timer.update();
        timer.displayUI();
        
        break;


    case FLOOR3_WIN: /////////////WIN AND GOTTA GO TO NEXT STAGE
        song.pause();
        TOILET_WIN.play();
        image(TOILET_WIN, 0, 0, width, height);    
        image(AR, START_BUTTON_X, START_BUTTON_Y);
        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {
        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        }
        break;

    case FLOOR3_LOSE://////////////////////LOSE AND GOTTA GO BACK
        song.pause();
        image(fail2, 0, 0, width, height);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {

        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        if (mousePressed) { 
            gameState = FLOOR3_RUN;///////////////////////GO BACK TO BEGIN
            image(bg, 0, 0, width, height);
            image(T, 0, 420, 300, 300);
            image(B, 300, 50, 750, 450);
            TMRR = 0;
            TMR = 0;
            GG = 0;
            FbeforeX = 0;
            timer = new Timer(15);
        }
        } else {
        image(AR, START_BUTTON_X, START_BUTTON_Y);
        }
        break;
    
    
    case FLOOR4_RUN:
        switch(floor4_state){
            case SCHOOL_RUN: //////////START PLAY GAME6
            //updating the background
            image(bg, 0, 0, width, height);
            image(BODY, width/2-BODY.width/2, height/2-BODY.height/2);
            
            song.play();
            drawClock();  
            //rotHand();
            //mushCloud();
            
            int elapsed = millis() - clickTime;
            
            if(elapsed < clockTime){
                pRot = map(elapsed, 0, clockTime, 0, 350);
                rotHand();  
            }
            else if (elapsed < totalTime){

                gameState = FLOOR4_LOSE;////////////////////////LOSE SCHOOL STAGE
            }
            else{
                bClicked=false;  
            }

            // Test if the cursor is over the Shirt 
            if (mouseX > Sx-SHIRT.width/2 && mouseX < Sx+SHIRT.width/2 && 
                mouseY > Sy-SHIRT.height/2 && mouseY < Sy+SHIRT.height) {
                overShirt = true;  
            } else {
                overShirt = false;
            }
            
            // Test if the cursor is over the ASHOE 
            if (mouseX > Ax-ASHOE.width/2 && mouseX < Ax+ASHOE.width/2 && 
                mouseY > Ay-ASHOE.height/2 && mouseY < Ay+ASHOE.height/2) {
                overASHOE = true;  
            } else {
                overASHOE = false;
            }
            
            // Test if the cursor is over the BSHOE 
            if (mouseX > Bx-BSHOE.width/2 && mouseX < Bx+BSHOE.width/2 && 
                mouseY > By-BSHOE.height/2 && mouseY < By+BSHOE.height/2) {
                overBSHOE = true;  
            } else {
                overBSHOE = false;
            }
            
            // Test if the cursor is over the GLASS 
            if (mouseX > Gx-GLASS.width/2 && mouseX < Gx+GLASS.width/2 && 
                mouseY > Gy-GLASS.height/2 && mouseY < Gy+GLASS.height/2) {
                overGLASS = true;  
            } else {
                overGLASS = false;
            }

            // Test if the cursor is over the PANT 
            if (mouseX > Px-PANT.width/2 && mouseX < Px+PANT.width/2 && 
                mouseY > Py-PANT.height/2 && mouseY < Py+PANT.height/2) {
                overPANT = true;  
            } else {
                overPANT = false;
            }
            
                // Test if the cursor is over the BAG 
            if (mouseX > BGx-BAG.width/2 && mouseX < BGx+BAG.width/2 && 
                mouseY > BGy-BAG.height/2 && mouseY < BGy+BAG.height/2) {
                overBAG = true;  
            } else {
                overBAG = false;
            }
            
            //isTheObjectOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheShirtOnBody()) {
                image(SHIRT, 481-SHIRT.width/2,300-SHIRT.height/2);
                ShirtDone = true;
            }else{
                image(SHIRT, Sx-SHIRT.width/2, Sy-SHIRT.height/2);
                };

            //isTheASHOEOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheASHOEOnBody()) {
                image(ASHOE, 332-ASHOE.width/2,546-ASHOE.height/2);
                ASHOEDone = true;
            }else{
                image(ASHOE, Ax-ASHOE.width/2, Ay-ASHOE.height/2);
                };

            //isTheBSHOEOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheBSHOEOnBody()) {
                image(BSHOE, 523-BSHOE.width/2,496-BSHOE.height/2); 
                BSHOEDone = true;
            }else{
                image(BSHOE, Bx-BSHOE.width/2, By-BSHOE.height/2);
                };
                
            //isTheGLASSOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheGLASSOnBody()) {
                image(GLASS, 565-GLASS.width/2,178-GLASS.height/2);  
                GLASSDone = true;
            }else{
                image(GLASS, Gx-GLASS.width/2, Gy-GLASS.height/2);
                };

            //isThePANTOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePANTOnBody()) {
                image(PANT, 470-PANT.width/2,405-PANT.height/2);    
                PANTDone = true;
            }else{
                image(PANT, Px-PANT.width/2, Py-PANT.height/2);
                };

            //isTheBAGOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheBAGOnBody()) {
                image(BAG, 460-BAG.width/2,300-BAG.height/2);  
                BAGDone = true;
            }else{
                image(BAG, BGx-BAG.width/2, BGy-BAG.height/2);
                };
            if(BAGDone == true && 
                PANTDone == true &&
                ShirtDone == true &&
                ASHOEDone == true &&
                BSHOEDone == true &&
                GLASSDone == true ){
                
                floor4_state = SCHOOL_WIN;////////////////////////WIN SCHOOL
                
            }
            break;
    
    

    
    
            case SCHOOL_WIN://////////PASS SCHOOL STAGE AND GO TO PANDA STAGE
            image(bg, 0, 0, width, height);
            image(schoolbg, 0, 0, width, height);
            image(DONE, width/2-BODY.width/2, height/2-BODY.height/2);

            image(OK,width-350,10);
            if(START_BUTTON_X + AR.width > mouseX
            && START_BUTTON_X < mouseX
            && START_BUTTON_Y + AR.height > mouseY
            && START_BUTTON_Y < mouseY) {

            image(AR2, START_BUTTON_X, START_BUTTON_Y);
            if(mousePressed){
                clickTime= millis();
                floor4_state = PANDA_RUN;////////////////////////GO TO PANDA STAGE
                mousePressed = false;
            }

            }else{

                image(AR, START_BUTTON_X, START_BUTTON_Y);

            }
            break;
    
  
            case PANDA_RUN: ////////START PLAY PANDA STAGE
            //updating the background
            image(bg, 0, 0, width, height);
            image(darkbg, 0, 0, width, height);
            image(DONE, width/2-BODY.width/2, height/2-BODY.height/2);

            song.play();
            drawClock();  
            //hour hand
            fill(255);
            stroke(255);
            strokeWeight(3);
            pushMatrix();
            translate(660,100);
            rotate(radians(90));
            quad(-2,40,-2,0,2,0,2,40);
            popMatrix();
            //hour hand
            fill(0);
            stroke(0);
            pushMatrix();
            translate(660,100);
            quad(-2,40,-2,0,2,0,2,40);
            popMatrix();
            //rotHand();
            //mushCloud();
            
            int Pelapsed = millis() - clickTime;
                
            if(Pelapsed < clockTime){
                pRot = map(Pelapsed, 0, clockTime, 0, 350);
                rotHand();  
                }
            else if (Pelapsed < totalTime){
                
                
                gameState = FLOOR4_LOSE;  ////////////////////////LOSE PANDA
            }
            else{
                bClicked=false;  
            }

            // Test if the cursor is over the Shirt 
            if (mouseX > PSx-PASHIRT.width/2 && mouseX < PSx+PASHIRT.width/2 && 
                mouseY > PSy-PASHIRT.height/2 && mouseY < PSy+PASHIRT.height) {
                overPAShirt = true;  
            } else {
                overPAShirt = false;
            }
            
            // Test if the cursor is over the ASHOE 
            if (mouseX > PAx-PAASHOE.width/2 && mouseX < PAx+PAASHOE.width/2 && 
                mouseY > PAy-PAASHOE.height/2 && mouseY < PAy+PAASHOE.height/2) {
                overPAASHOE = true;  
            } else {
                overPAASHOE = false;
            }
            
            // Test if the cursor is over the BSHOE 
            if (mouseX > PBx-PABSHOE.width/2 && mouseX < PBx+PABSHOE.width/2 && 
                mouseY > PBy-PABSHOE.height/2 && mouseY < PBy+PABSHOE.height/2) {
                overPABSHOE = true;  
            } else {
                overPABSHOE = false;
            }
            
            // Test if the cursor is over the GLASS 
            if (mouseX > PGx-HAT.width/2 && mouseX < PGx+HAT.width/2 && 
                mouseY > PGy-HAT.height/2 && mouseY < PGy+HAT.height/2) {
                overPAGLASS = true;  
            } else {
                overPAGLASS = false;
            }

            // Test if the cursor is over the PANT 
            if (mouseX > PPx-PAPANT.width/2 && mouseX < PPx+PAPANT.width/2 && 
                mouseY > PPy-PAPANT.height/2 && mouseY < PPy+PAPANT.height/2) {
                overPAPANT = true;  
            } else {
                overPAPANT = false;
            }
            
                // Test if the cursor is over the BAG 
            if (mouseX > PBGx-PABAG.width/2 && mouseX < PBGx+PABAG.width/2 && 
                mouseY > PBGy-PABAG.height/2 && mouseY < PBGy+PABAG.height/2) {
                overPABAG = true;  
            } else {
                overPABAG = false;
            }
            
            //isTheObjectOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePAShirtOnBody()) {
                image(PASHIRT, 481-PASHIRT.width/2,300-PASHIRT.height/2);
                PAShirtDone = true;
            }else{
                image(PASHIRT, PSx-PASHIRT.width/2, PSy-PASHIRT.height/2);
                };

            //isTheASHOEOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePAASHOEOnBody()) {
                image(PAASHOE, 332-PAASHOE.width/2,546-PAASHOE.height/2);
                PAASHOEDone = true;
            }else{
                image(PAASHOE, PAx-PAASHOE.width/2, PAy-PAASHOE.height/2);
                };

            //isTheBSHOEOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePABSHOEOnBody()) {
                image(PABSHOE, 523-PABSHOE.width/2,496-PABSHOE.height/2); 
                PABSHOEDone = true;
            }else{
                image(PABSHOE, PBx-PABSHOE.width/2, PBy-PABSHOE.height/2);
                };
                
            //isTheGLASSOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePAGLASSOnBody()) {
                image(HAT, 535-HAT.width/2,185-HAT.height/2);  
                PAGLASSDone = true;
            }else{
                image(HAT, PGx-HAT.width/2, PGy-HAT.height/2);
                };

            //isThePANTOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePAPANTOnBody()) {
                image(PAPANT, 470-PAPANT.width/2,405-PAPANT.height/2);    
                PAPANTDone = true;
            }else{
                image(PAPANT, PPx-PAPANT.width/2, PPy-PAPANT.height/2);
                };

            //isTheBAGOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isThePABAGOnBody()) {
                image(PABAG, 460-PABAG.width/2,300-PABAG.height/2);  
                PABAGDone = true;
            }else{
                image(PABAG, PBGx-PABAG.width/2, PBGy-PABAG.height/2);
                };
            
            if(PABAGDone == true && 
                PAPANTDone == true &&
                PAShirtDone == true &&
                PAASHOEDone == true &&
                PABSHOEDone == true &&
                PAGLASSDone == true ){
                floor4_state = PANDA_WIN;////////////////////////WIN PANDA
                
            }
            break;

            case PANDA_WIN://////////PASS PANDA STAGE AND GO TO SLEEP STAGE
            image(bg, 0, 0, width, height);
            image(Pbg, 0, 0, width, height);
            image(PADONE, width/2-BODY.width/2, height/2-BODY.height/2);

            image(OK,width-350,10);
            if(START_BUTTON_X + AR.width > mouseX
            && START_BUTTON_X < mouseX
            && START_BUTTON_Y + AR.height > mouseY
            && START_BUTTON_Y < mouseY) {

            image(AR2, START_BUTTON_X, START_BUTTON_Y);
            if(mousePressed){
                clickTime= millis();
                floor4_state = SLEEP_RUN;////////////////////////GO TO SLEEP STAGE
                mousePressed = false;
            }

            }else{

                image(AR, START_BUTTON_X, START_BUTTON_Y);

            }
            break;
            
    
            case SLEEP_RUN: /////////START PLAY SLEEP STAGE
            //updating the background
            image(bg, 0, 0, width, height);
            image(Pbg, 0, 0, width, height);
            image(PADONE, width/2-BODY.width/2, height/2-BODY.height/2);
            
            drawClock();  
            song.play();
        
            int Selapsed = millis() - clickTime;
            
            if(Selapsed < clockTime){
                pRot = map(Selapsed, 0, clockTime, 0, 350);
                rotHand();  
            }
            else if (Selapsed < totalTime){
            
            
                gameState = FLOOR4_LOSE;  ////////////////////LOSE SLEEP
            }
            else{
                bClicked=false;  
            }

            // Test if the cursor is over the Shirt 
            if (mouseX > SSx-SSHIRT.width/2 && mouseX < SSx+SSHIRT.width/2 && 
                mouseY > SSy-SSHIRT.height/2 && mouseY < SSy+SSHIRT.height) {
                overSShirt = true;  
            } else {
                overSShirt = false;
            }
            
            // Test if the cursor is over the ASHOE 
            if (mouseX > SAx-SASHOE.width/2 && mouseX < SAx+SASHOE.width/2 && 
                mouseY > SAy-SASHOE.height/2 && mouseY < SAy+SASHOE.height/2) {
                overSASHOE = true;  
            } else {
                overSASHOE = false;
            }
            
            // Test if the cursor is over the BSHOE 
            if (mouseX > SBx-SBSHOE.width/2 && mouseX < SBx+SBSHOE.width/2 && 
                mouseY > SBy-SBSHOE.height/2 && mouseY < SBy+SBSHOE.height/2) {
                overSBSHOE = true;  
            } else {
                overSBSHOE = false;
            }
            
            // Test if the cursor is over the GLASS 
            if (mouseX > SGx-SGLASS.width/2 && mouseX < SGx+SGLASS.width/2 && 
                mouseY > SGy-SGLASS.height/2 && mouseY < SGy+SGLASS.height/2) {
                overSGLASS = true;  
            } else {
                overSGLASS = false;
            }

            // Test if the cursor is over the PANT 
            if (mouseX > SPx-SPANT.width/2 && mouseX < SPx+SPANT.width/2 && 
                mouseY > SPy-SPANT.height/2 && mouseY < SPy+SPANT.height/2) {
                overSPANT = true;  
            } else {
                overSPANT = false;
            }
            

            
            //isTheObjectOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheSShirtOnBody()) {
                image(SSHIRT, 481-SSHIRT.width/2,300-SSHIRT.height/2);
                SShirtDone = true;
                }else{
                image(SSHIRT, SSx-SSHIRT.width/2, SSy-SSHIRT.height/2);
                };

            //isTheASHOEOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheSASHOEOnBody()) {
                image(SASHOE, 332-SASHOE.width/2,546-SASHOE.height/2);
                SASHOEDone = true;
                }else{
                image(SASHOE, SAx-SASHOE.width/2, SAy-SASHOE.height/2);
                };

            //isTheBSHOEOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheSBSHOEOnBody()) {
                image(SBSHOE, 523-SBSHOE.width/2,496-SBSHOE.height/2); 
                SBSHOEDone = true;
                }else{
                image(SBSHOE, SBx-SBSHOE.width/2, SBy-SBSHOE.height/2);
                };
                
            //isTheGLASSOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheSGLASSOnBody()) {
                image(SGLASS, 565-SGLASS.width/2,178-SGLASS.height/2);  
                SGLASSDone = true;
                }else{
                image(SGLASS, SGx-SGLASS.width/2, SGy-SGLASS.height/2);
                };

            //isThePANTOnBody() if yes, lock the shirt; if nope attach with Sx and Sy
            if(isTheSPANTOnBody()) {
                image(SPANT, 470-SPANT.width/2,405-SPANT.height/2);    
                SPANTDone = true;
                }else{
                image(SPANT, SPx-SPANT.width/2, SPy-SPANT.height/2);
                };
           
            if(SPANTDone == true &&
                SShirtDone == true &&
                SASHOEDone == true &&
                SBSHOEDone == true &&
                SGLASSDone == true ){
                floor4_state = SLEEP_WIN;////////////////////////WIN SLEEP
                
            }
            break;
           
           
            case SLEEP_WIN:////////////PASS SCHOOL STAGE AND GO TO NEXT STAGE
            image(bg, 0, 0, width, height);
            image(Sbg, 0, 0, width, height);
            image(SDONE, width/2-BODY.width/2, height/2-BODY.height/2);
            
            image(OK,width-350,10);
            if(START_BUTTON_X + AR.width > mouseX
            && START_BUTTON_X < mouseX
            && START_BUTTON_Y + AR.height > mouseY
            && START_BUTTON_Y < mouseY) {

            image(AR2, START_BUTTON_X, START_BUTTON_Y);
            if(mousePressed){
                gameState = FLOOR4_WIN;/////////////////CHANGE THIS WHEN U COMBINE GAMES
                mousePressed = false;
            }

            }else{

                image(AR, START_BUTTON_X, START_BUTTON_Y);

            }
                    
        }
        
        break; //gamestate switch
    case FLOOR4_LOSE:
        
        song.pause();
        
        image(movie,0,0,width,height);
        movie.play();
        
        image(game_lose_watch, 0, 0);
        image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {
          image(AR2, START_BUTTON_X, START_BUTTON_Y);
        if(mousePressed){
        gameState=FLOOR4_RUN;
          }
        }
        
        image(bg, 0, 0, width, height);
        image(BROKE,(width-BROKE.width)/2,20);
        image(CR,(width-CR.width)/2,30);
        image(END, (width-END.width)/2,400);
        image(AR, START_BUTTON_X, START_BUTTON_Y);
            
        break;
        
        case FLOOR4_WIN:
         //movie
        image(game_win_school,0,0,width,height);
         game_win_school.play();
    
        song.pause();
        image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {
        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        if(mousePressed){
          gameState=FLOOR5_RUN;
        }
        }
        break;

    
    
    /////////////////////////////// FLOOR5_BABY
    
      case FLOOR5_RUN:
    // show the bg, ant,circle
    image(bgImg, 0, 0, width, height) ;    
    image(faceImg, 170, 30);
    image(eyeImg, 520, 300);
    image(eyeImg, 320, 300);
    image(noseImg, 450, 340);

    song.play();

    // Test if the cursor is over the mouth
    if (mouseX > 340 && mouseX < 340+mouthX && 
      mouseY > 380 && mouseY < 380+ mouthY) {
      overMouth = true;
    } else {
      overMouth = false;
    }

    //mouth part
    pushStyle();    
    pushMatrix();
    imageMode(CENTER);
    translate(500, 480); 
    if (overMouth==true && mouthAttached == true ) {
      degreeMouth = degrees(atan2(mouseY - 500, mouseX - 480)); //intialize
      if(degreeMouth>1|| degreeMouth<-1){
        mouthDone = true;
      }
    }
    rotate(degreeMouth);
    image(mouthImg, 0, 0);  
    popMatrix();
    popStyle();


    // Test if the cursor is over the eyebrowright
    if (mouseX > 500 && mouseX < 500+eyebrowX && 
      mouseY > 200 && mouseY < 200+ eyebrowY) {
      overEyebrowRight = true;
    } else {
      overEyebrowRight = false;
    }

    //eyebrowright part
    pushStyle();    
    pushMatrix();
    imageMode(CENTER);
    translate(555, 245); 
    if (overEyebrowRight==true && eyebrowRightAttached == true ) {
      degreeRight = degrees(atan2(mouseY - 555, mouseX - 245)); //intialize
      if(degreeRight>1 || degreeRight<-1){
        eyebrowRightDone = true;
      }
    }
    rotate(degreeRight);
    image(eyebrowRightImg, 0, 0);  
    popMatrix();
    popStyle();


    // Test if the cursor is over the eyebrowleft
    if (mouseX > 350 && mouseX < 350+eyebrowX && 
      mouseY > 200 && mouseY < 200+ eyebrowY) {
      overEyebrowLeft = true;
    } else {
      overEyebrowLeft = false;
    }

    //eyebrowleft part
    pushStyle();    
    pushMatrix();
    imageMode(CENTER);
    translate(405, 245); 
    if (overEyebrowLeft==true && eyebrowLeftAttached == true ) {
      degreeLeft = degrees(atan2(mouseY - 405, mouseX - 245)); //intialize
      if(degreeLeft>1 || degreeLeft<-1){
        eyebrowLeftDone = true;
      }
    }
    rotate(degreeLeft);
    image(eyebrowLeftImg, 0, 0);  
    popMatrix();
    popStyle();
    
        //arrow buttom
    if (START_BUTTON_X + AR.width > mouseX
      && START_BUTTON_X < mouseX
      && START_BUTTON_Y + AR.height > mouseY
      && START_BUTTON_Y < mouseY) {

      image(AR2, START_BUTTON_X, START_BUTTON_Y);
      if (mousePressed) {
      if(mouthDone ==true && 
      eyebrowLeftDone == true && 
      eyebrowRightDone == true ){
      gameState = FLOOR5_WIN;
      
    }
        mousePressed = false;
      }
    } else {

      image(AR, START_BUTTON_X, START_BUTTON_Y);
    }
    
    timer.update();
    timer.displayUI();
    if (timer.isTimeUp()) gameState = FLOOR5_LOSE;
    
    break;
    
      case FLOOR5_WIN:
      song.pause();
      image(bgImg, 0, 0, width, height) ;
    
      //movie
      image(movie,0,0,width,height);
      movie.play();
      image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {
        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        if(mousePressed){
          gameState=GAME_PASS;
        }
        }
    
    break;

     case FLOOR5_LOSE:
       set_Baby();
       image(gameloseImg,0,0,width,height);
       song.pause();
       
       image(AR, START_BUTTON_X, START_BUTTON_Y);

        if (START_BUTTON_X + AR.width > mouseX
        && START_BUTTON_X < mouseX
        && START_BUTTON_Y + AR.height > mouseY
        && START_BUTTON_Y < mouseY) {
        image(AR2, START_BUTTON_X, START_BUTTON_Y);
        if(mousePressed){
          gameState=FLOOR5_RUN;
        }
        }
    break;
    
    case GAME_PASS:
        //movie
    movie.pause();
    image(ENDING,0,0,width,height);
    ENDING.play();    
    
    break;
    }
}

void set_Baby(){

timer = new Timer(60);

}

//FLOOR3_TOILET_SET
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

class Eye {
  int x, y;
  int size;
  float angle = 0.0;

  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
  }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }

  void display() {
    pushMatrix();
    translate(x, y);
    fill(255);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(0);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}

class Timer {
  int leftFrames;

  Timer (float initSeconds) {
    leftFrames = floor(initSeconds * 60);
  }

  void update () {
    if (leftFrames > 0) leftFrames --;
  }

  void displayUI() {
    textSize(56);
    textAlign(LEFT, TOP);
    String timeString = nf(floor(leftFrames/60), 2);
    fill(0, 120);
    text(timeString, 13, 3);
    fill((leftFrames > 600) ? #ffcc00 : #ff6600);
    text(timeString, 10, 0);
  }

  boolean isTimeUp () { 
    return leftFrames == 0;
  }
}

void mouseClicked() {
  //FLOOR1_FROG
  if (gameState == FLOOR1_RUN) {
    playerX += playerXSpeed;
    player_pace_cnt += playerXSpeed;
    jump_sound.trigger();
    if (playerX>=FINAL_LINE) {
      playerX = FINAL_LINE;
      gameState = FLOOR1_WIN;
    }
  }
  if (gameState == FLOOR1_LOSE &&START_BUTTON_X + AR.width > mouseX
    && START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY) {
    gameState = FLOOR1_RUN;
  }
  if (gameState == FLOOR1_WIN&& START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY) {
    gameState = FLOOR2_RUN;
  }

  //FLOOR2_PLANE
  if (gameState == FLOOR2_RUN) {
    if (start == 0) {
      fly_sound.trigger();
      start = 1;
    } else if (start==2 || start ==3) {
      fly_sound.trigger();
      if ((planeY - planeYSpeed*3) > SKY_Y) {
        //touch the sky
        planeY -= planeYSpeed*3;
      }
    }
  }
  if (gameState == FLOOR2_LOSE && START_BUTTON_X + AR.width > mouseX
    && START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY) {
    gameState = FLOOR2_RUN;
  }
  if (gameState == FLOOR2_WIN && START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY) {
    background(bg);
    image(T, 0, 420, 300, 300);
    image(B, 300, 50, 750, 450);
    gameState = FLOOR3_RUN;
  }
  
  //FLOOR3_TOILET
  if (gameState == FLOOR3_LOSE && START_BUTTON_X + AR.width > mouseX
    && START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY) {
    gameState = FLOOR3_RUN;
  }
  if (gameState == FLOOR3_WIN && START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY) {
    gameState = FLOOR4_RUN;
    clickTime = millis();
  }
  //FLOOR4 school
  if(gameState == FLOOR4_LOSE && START_BUTTON_X + AR.width > mouseX
    && START_BUTTON_X < mouseX
    && START_BUTTON_Y + AR.height > mouseY
    && START_BUTTON_Y < mouseY){
        gameState = FLOOR4_RUN;
        set_school();
        clickTime = millis();

    }
}

void mouseReleased() {
  if (gameState == FLOOR3_RUN) {
    if (GG < 10000) {
      image(THIN, beforeX-THIN.width/2, beforeY-THIN.height/2);
    } else {
      FbeforeX = beforeX;
      println(FbeforeX);
      image(FULL, FbeforeX-FULL.width/2, beforeY-FULL.height/2);
    }
    GG = 0;
  }
  if (gameState == FLOOR4_RUN){
    Shirtattached = false;
    ASHOEattached = false;
    BSHOEattached = false;
    GLASSattached = false;
    PANTattached = false;
    BAGattached = false;
    
    //PANDA
    PAShirtattached = false;
    PAASHOEattached = false;
    PABSHOEattached = false;
    PAGLASSattached = false;
    PAPANTattached = false;
    PABAGattached = false;
    
    //SLEEP
    SShirtattached = false;
    SASHOEattached = false;
    SBSHOEattached = false;
    SGLASSattached = false;
    SPANTattached = false;
  }
  
  ////// FLOOR5_BABY
  eyebrowLeftAttached = false;
  eyebrowRightAttached = false;
  mouthAttached = false;
}

void mousePressed() {

    if(gameState == FLOOR4_RUN){
        if(overShirt) { 
            Shirtattached = true; 
        } else {
            Shirtattached = false;
        }

        if(overASHOE) { 
            ASHOEattached = true; 
        } else {
            ASHOEattached = false;
        }

        if(overBSHOE) { 
            BSHOEattached = true; 
        } else {
            BSHOEattached = false;
        }

        if(overGLASS) { 
            GLASSattached = true; 
        } else {
            GLASSattached = false;
        }
        
        if(overPANT) { 
            PANTattached = true; 
        } else {
            PANTattached = false;
        }
        
        if(overBAG) { 
            BAGattached = true; 
        } else {
            BAGattached = false;
        }
        

        
        SxOffset = mouseX-Sx; 
        SyOffset = mouseY-Sy; 
        
        AxOffset = mouseX-Ax; 
        AyOffset = mouseY-Ay; 
        
        BxOffset = mouseX-Bx;
        ByOffset = mouseY-By;
        
        GxOffset = mouseX-Gx;
        GyOffset = mouseY-Gy;
        
        PxOffset = mouseX-Px;
        PyOffset = mouseY-Py;
        
        BGxOffset = mouseX-BGx;
        BGyOffset = mouseY-BGy;
        

        //PANDA
        if(overPAShirt) { 
            PAShirtattached = true; 
        } else {
            PAShirtattached = false;
        }

        if(overPAASHOE) { 
            PAASHOEattached = true; 
        } else {
            PAASHOEattached = false;
        }

        if(overPABSHOE) { 
            PABSHOEattached = true; 
        } else {
            PABSHOEattached = false;
        }

        if(overPAGLASS) { 
            PAGLASSattached = true; 
        } else {
            PAGLASSattached = false;
        }
        
        if(overPAPANT) { 
            PAPANTattached = true; 
        } else {
            PAPANTattached = false;
        }
        
        if(overPABAG) { 
            PABAGattached = true; 
        } else {
            PABAGattached = false;
        }
        
        PSxOffset = mouseX-PSx; 
        PSyOffset = mouseY-PSy; 
        
        PAxOffset = mouseX-PAx; 
        PAyOffset = mouseY-PAy; 
        
        PBxOffset = mouseX-PBx;
        PByOffset = mouseY-PBy;
        
        PGxOffset = mouseX-PGx;
        PGyOffset = mouseY-PGy;
        
        PPxOffset = mouseX-PPx;
        PPyOffset = mouseY-PPy;
        
        PBGxOffset = mouseX-PBGx;
        PBGyOffset = mouseY-PBGy;
        
        //SLEEP
        if(overSShirt) { 
            SShirtattached = true; 
        } else {
            SShirtattached = false;
        }

        if(overSASHOE) { 
            SASHOEattached = true; 
        } else {
            SASHOEattached = false;
        }

        if(overSBSHOE) { 
            SBSHOEattached = true; 
        } else {
            SBSHOEattached = false;
        }

        if(overSGLASS) { 
            SGLASSattached = true; 
        } else {
            SGLASSattached = false;
        }
        
        if(overSPANT) { 
            SPANTattached = true; 
        } else {
            SPANTattached = false;
        }
        
        SSxOffset = mouseX-SSx; 
        SSyOffset = mouseY-SSy; 
        
        SAxOffset = mouseX-SAx; 
        SAyOffset = mouseY-SAy; 
        
        SBxOffset = mouseX-SBx;
        SByOffset = mouseY-SBy;
        
        SGxOffset = mouseX-SGx;
        SGyOffset = mouseY-SGy;
        
        SPxOffset = mouseX-SPx;
        SPyOffset = mouseY-SPy;
    }
    
    /////////////// FLOOR5_BABY
   if (overMouth) { 
    mouthAttached = true; 
  } else {
    mouthAttached = false;
  }
  
    if (overEyebrowRight) { 
     eyebrowRightAttached = true; 
  } else {
    eyebrowRightAttached = false;
  }
  
    if (overEyebrowLeft ) { 
     eyebrowLeftAttached  = true; 
  } else {
    eyebrowLeftAttached = false;
  }
}
void mouseDragged() {
    if(gameState == FLOOR4_RUN){
        if(Shirtattached) {
        Sx = mouseX-SxOffset; 
        Sy = mouseY-SyOffset; 
        }
    
        if(ASHOEattached) {
        Ax = mouseX-AxOffset; 
        Ay = mouseY-AyOffset; 
        }
    
        if(BSHOEattached) {
        Bx = mouseX-BxOffset; 
        By = mouseY-ByOffset; 
        }
        
        if(GLASSattached) {
        Gx = mouseX-GxOffset; 
        Gy = mouseY-GyOffset; 
        }
        
        if(PANTattached) {
        Px = mouseX-PxOffset; 
        Py = mouseY-PyOffset; 
        }
        
        if(BAGattached) {
        BGx = mouseX-BGxOffset; 
        BGy = mouseY-BGyOffset; 
        }
        
        
        //PANDA
        
        if(PAShirtattached) {
        PSx = mouseX-PSxOffset; 
        PSy = mouseY-PSyOffset; 
        }
    
        if(PAASHOEattached) {
        PAx = mouseX-PAxOffset; 
        PAy = mouseY-PAyOffset; 
        }
    
        if(PABSHOEattached) {
        PBx = mouseX-PBxOffset; 
        PBy = mouseY-PByOffset; 
        }
        
        if(PAGLASSattached) {
        PGx = mouseX-PGxOffset; 
        PGy = mouseY-PGyOffset; 
        }
        
        if(PAPANTattached) {
        PPx = mouseX-PPxOffset; 
        PPy = mouseY-PPyOffset; 
        }
        
        if(PABAGattached) {
        PBGx = mouseX-PBGxOffset; 
        PBGy = mouseY-PBGyOffset; 
        }
        
        //SLEEP
        if(SShirtattached) {
        SSx = mouseX-SSxOffset; 
        SSy = mouseY-SSyOffset; 
        }
    
        if(SASHOEattached) {
        SAx = mouseX-SAxOffset; 
        SAy = mouseY-SAyOffset; 
        }
    
        if(SBSHOEattached) {
        SBx = mouseX-SBxOffset; 
        SBy = mouseY-SByOffset; 
        }
        
        if(SGLASSattached) {
        SGx = mouseX-SGxOffset; 
        SGy = mouseY-SGyOffset; 
        }
        
        if(SPANTattached) {
        SPx = mouseX-SPxOffset; 
        SPy = mouseY-SPyOffset; 
        }
    }
  }

  boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh) {

  if (ax + aw > bx && ax < bx + bw && ay + ah > by && ay < by + bh) {//hit detect
    return true;
  } else {
    return false;
  }
}

void set_frog() {

  //player position
  playerX = 30;
  playerY = 385;

  //frog position  
  frogX = new int[3] ;
  frogY = new int[3] ;
  frogXSpeed = new float[3];

  for (int i=0; i<3; i++) {
    frogX[i] = 30;
  }

  for (int i=0; i<3; i++) {
    if (i < 2) {
      frogY[i] = 25 + i *180;
    } else {
      frogY[i] = 25 + (i+1)*180;
    }
  }

  int index = floor(random(1)*3);
  for (int i=0; i<3; i++) {
    if (i == index) {
      frogXSpeed[i] = random(1, 2);
    } else {
      frogXSpeed[i] = random(2, 3);
    }
  }

  //frog jump
  frog_pace_cnt = new float[3];
  for (int i=0; i<3; i++) {
    frog_pace_cnt[i]=0;
  }

  //final line
  lineX = 835;
  lineY = 0;

  //jump sound
  jump = new Minim (this);
  jump_sound = jump.loadSample("jump_sound.wav");
}

void movieEvent(Movie m) {
  m.read();
}

void set_plane() {
  //building1 position
  building1X = 0;
  building1Y = 105;

  //building2 position
  building2X = 435 + 960*10;
  building2Y = 145;

  //plane position
  planeX = 220;
  planeY = 300;
  initPlaneX = planeX;
  initPlaneY = planeY;
  player_pos = planeX;

  //bird position
  birdX = new float[10];
  birdY = new float[10];
  for (int i = 0; i <=9; i++) {
    birdX[i] = int(random(0, 140))+960*(i+1);
    birdY[i] = int(random(60, 150));
  }

  //cloud1 position
  cloud1X = new float[10];
  cloud1Y = new float[10];
  for (int i = 0; i <=9; i++) {
    cloud1X[i]=int(random(210, 480-255))+960*(i+1);
    cloud1Y[i] = 40;
  }

  //cloud2 position
  cloud2X = new float[8];
  cloud2Y = new float[8];
  for (int i = 0; i <=7; i++) {
    cloud2X[i]=int(random(480, 960-60))+960*(i+1);
    cloud2Y[i] = 40;
  }

  //ground position
  groundX = 0;
  groundY = 650;

  lightX = new float[8];
  lightY = new float[8];
  poleX = new float[8];
  poleY = new float[8];
  hydrantX = new float[8];
  hydrantY = new float[8];

  for (int i = 0; i<8; i++) {
    int num = int(random(6));
    switch(num) {
    case 0:
      lightX[i] = int(random(0, (320-255))+960*(i+1));
      lightY[i] = 347;
      poleX[i] = int(random(320, (640-60))+960*(i+1));
      poleY[i] = 290;
      hydrantX[i] = int(random(640, (960-80))+960*(i+1));
      hydrantY[i] = 555;
      break;
    case 1:
      lightX[i] = int(random(0, (320-255))+960*(i+1));
      lightY[i] = 347;
      poleX[i] = int(random(640, (960-60))+960*(i+1));
      poleY[i] = 290;
      hydrantX[i] = int(random(320, (640-80))+960*(i+1));
      hydrantY[i] = 555;
      break;
    case 2:
      lightX[i] = int(random(320, (640-255))+960*(i+1));
      lightY[i] = 347;
      poleX[i] = int(random(0, (320-60))+960*(i+1));
      poleY[i] = 290;
      hydrantX[i] = int(random(640, (960-80))+960*(i+1));
      hydrantY[i] = 555;
      break;
    case 3:
      lightX[i] = int(random(640, (960-255))+960*(i+1));
      lightY[i] = 347;
      poleX[i] = int(random(0, (320-60))+960*(i+1));
      poleY[i] = 290;
      hydrantX[i] = int(random(320, (640-80))+960*(i+1));
      hydrantY[i] = 555;
      break;
    case 4:
      lightX[i] = int(random(640, (960-255))+960*(i+1));
      lightY[i] = 347;
      poleX[i] = int(random(320, (640-60))+960*(i+1));
      poleY[i] = 290;
      hydrantX[i] = int(random(0, (320-80))+960*(i+1));
      hydrantY[i] = 555;
      break;
    case 5:
      lightX[i] = int(random(320, (640-255))+960*(i+1));
      lightY[i] = 347;
      poleX[i] = int(random(640, (960-60))+960*(i+1));
      poleY[i] = 290;
      hydrantX[i] = int(random(0, (320-80))+960*(i+1));
      hydrantY[i] = 555;
      break;
    }
  }
  //parabola animation
  parabola_x = 0;
  
   //fly sound
  fly = new Minim (this);
  fly_sound = fly.loadSample("fly_sound.wav");
}

//floor school set
void set_school(){

    bClicked= false;
    floor4_state = SCHOOL_RUN;
    
    //STUDENT
    Sx = width/8.0;
    Sy = height/8.0;
    
    Ax = width/8.0+750;
    Ay = height/8.0;
    
    Bx = width/8.0;
    By = height*7/8.0;
    
    Gx = width*7/8.0;
    Gy = height*7/8.0;
    
    Px = width/8.0;
    Py = height*4/8.0;
    
    BGx = width*7/8.0;
    BGy = height*4/8.0;
    
    //PANDA
    PSx = width/8.0;
    PSy = height/8.0;
    
    PAx = width/8.0+750;
    PAy = height/8.0;
    
    PBx = width/8.0;
    PBy = height*7/8.0;
    
    PGx = width*7/8.0;
    PGy = height*7/8.0;
    
    PPx = width/8.0;
    PPy = height*4/8.0;
    
    PBGx = width*7/8.0;
    PBGy = height*4/8.0;
    
    //SLEEP
    SSx = width/8.0;
    SSy = height/8.0;
    
    SAx = width/8.0+750;
    SAy = height/8.0;
    
    SBx = width/8.0;
    SBy = height*7/8.0;
    
    SGx = width*7/8.0;
    SGy = height*7/8.0;
    
    SPx = width/8.0;
    SPy = height*4/8.0;
    ShirtDone = false;
    ASHOEDone = false;
    BSHOEDone = false;
    GLASSDone = false;
    PANTDone = false;
    BAGDone = false;
    
    PAShirtDone = false;
    PAASHOEDone = false;
    PABSHOEDone = false;
    PAGLASSDone = false;
    PAPANTDone = false;
    PABAGDone = false;
    
    SShirtDone = false;
    SASHOEDone = false;
    SBSHOEDone = false;
    SGLASSDone = false;
    SPANTDone = false;
    
    rectMode(RADIUS);
  
  }
  
void load_school(){
    //initialization
    //STUDENT
    SHIRT = loadImage("img/SHIRT.png");
    bg = loadImage("img/bg.png");//////////SAME WITH GAME2
    Sbg = loadImage("img/Sbg.png");
    schoolbg = loadImage("img/schoolbg.png");
    darkbg = loadImage("img/darkbg.png");
    Pbg = loadImage("img/Pbg.png");
    BODY = loadImage("img/BODY.png");
    ASHOE = loadImage("img/ASHOE.png");
    BSHOE = loadImage("img/BSHOE.png");
    GLASS = loadImage("img/GLASS.png");
    BAG = loadImage("img/BAG.png");
    DONE = loadImage("img/DONE.png");
    PANT = loadImage("img/PANT.png");
    SCHOOL = loadImage("img/SCHOOL.jpg");
    DARK = loadImage("img/DARK.jpg");
    AR = loadImage("img/AR.png");//////////SAME WITH GAME2
    AR2 = loadImage("img/AR2.png");//////////SAME WITH GAME2
    AM = loadImage("img/AM.png");
    PM = loadImage("img/PM.png");
    OK = loadImage("img/OK.png");//////////SAME WITH GAME2
    CR = loadImage("img/CR.png");//////////SAME WITH GAME2
    BROKE = loadImage("img/BROKE.png");
    END = loadImage("img/END.png");
    
    //PANDA
    PASHIRT = loadImage("img/PASHIRT.png");
    PAASHOE = loadImage("img/PAASHOE.png");
    PABSHOE = loadImage("img/PABSHOE.png");
    HAT = loadImage("img/HAT.png");
    PABAG = loadImage("img/PABAG.png");
    PADONE = loadImage("img/PADONE.png");
    PAPANT = loadImage("img/PAPANT.png");
    PAbg = loadImage("img/PAbg.jpg");
    
    //SLEEP
    SSHIRT = loadImage("img/SSHIRT.png");
    SASHOE = loadImage("img/SASHOE.png");
    SBSHOE = loadImage("img/SBSHOE.png");
    SGLASS = loadImage("img/SGLASS.png");
    
    SDONE = loadImage("img/SDONE.png");
    SPANT = loadImage("img/SPANT.png");
  }
  
void drawClock(){
//clockface  
stroke(0);  
fill(255);
strokeWeight(2);  
pushMatrix();
translate(width-300,100);
ellipse(0,0,150,150);
popMatrix();

//black dots
strokeWeight(2);
fill(0);
ellipse(600, 100, 7, 3);
pushMatrix();
translate(610,70);
rotate(radians(30));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(630,47);
rotate(radians(60));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(660,38);
rotate(radians(90));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(690,47);
rotate(radians(120));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(710,70);
rotate(radians(150));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(720,100);
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(710,130);
rotate(radians(210));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(690,153);
rotate(radians(240));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(660,162);
rotate(radians(270));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(630,153);
rotate(radians(300));
ellipse(0,0,7,3);
popMatrix();
pushMatrix();
translate(610,130);
rotate(radians(330));
ellipse(0,0,7,3);
popMatrix();
stroke(255,0,0);

//red dot
fill(255,0,0);
pushMatrix();
translate(710,70);
rotate(radians(150));
ellipse(0,0,7,3);
popMatrix();

//hour hand
fill(0);
stroke(0);
pushMatrix();
translate(660,100);
rotate(radians(90));
quad(-2,40,-2,0,2,0,2,40);
popMatrix();
}

//FOR CLOCK
void rotHand()
{
 
fill(0);
stroke(0);
pushMatrix();
translate(660,100);
rotate(radians(250));
rotate(radians(pRot));//borrowed from Adrianne Blossom "homework 4.3"
quad(-2,40,-2,0,2,0,2,40);
popMatrix();
}
  
boolean isTheShirtOnBody(){
    if(Sx < 540 &&  Sx+SHIRT.width/2 > 540 && Sy < 360 && Sy+SHIRT.height/2 > 360){
    return true;
    }else{
    return false;
    }

}

boolean isTheASHOEOnBody(){
    if(Ax < 365 &&  Ax+ASHOE.width/2 > 365 && Ay < 585 && Ay+ASHOE.height/2 > 585){
    return true;
    }else{
    return false;
    }
    
}

boolean isTheBSHOEOnBody(){
    if(Bx < 555 &&  Bx+BSHOE.width/2 > 555 && By < 515 && By+BSHOE.height/2 > 515){
    return true;
    }else{
    return false;
    }

}

boolean isTheGLASSOnBody(){
    if(Gx < 595 &&  Gx+GLASS.width/2 > 595 && Gy < 195 && Gy+GLASS.height/2 > 195){
    return true;
    }else{
    return false;
    }

}

boolean isThePANTOnBody(){
    if(Px < 575 &&  Px+PANT.width/2 > 575 && Py < 470 && Py+PANT.height/2 > 470){
    return true;
    }else{
    return false;
    }

}

boolean isTheBAGOnBody(){
    if(BGx < 560 &&  BGx+BAG.width/2 > 560 && BGy < 360 && BGy+BAG.height/2 > 360){
    return true;
    }else{
    return false;
    }

}



//PANDA
boolean isThePAShirtOnBody(){
    if(PSx < 540 &&  PSx+PASHIRT.width/2 > 540 && PSy < 360 && PSy+PASHIRT.height/2 > 360){
    return true;
    }else{
    return false;
    }

}

boolean isThePAASHOEOnBody(){
    if(PAx < 365 &&  PAx+PAASHOE.width/2 > 365 && PAy < 585 && PAy+PAASHOE.height/2 > 585){
    return true;
    }else{
    return false;
    }
    
}

boolean isThePABSHOEOnBody(){
    if(PBx < 555 &&  PBx+PABSHOE.width/2 > 555 && PBy < 515 && PBy+PABSHOE.height/2 > 515){
    return true;
    }else{
    return false;
    }

}

boolean isThePAGLASSOnBody(){
    if(PGx < 600 &&  PGx+HAT.width/2 > 600 && PGy < 245 && PGy+HAT.height/2 > 245){
    return true;
    }else{
    return false;
    }

}

boolean isThePAPANTOnBody(){
    if(PPx < 575 &&  PPx+PAPANT.width/2 > 575 && PPy < 470 && PPy+PAPANT.height/2 > 470){
    return true;
    }else{
    return false;
    }

}

boolean isThePABAGOnBody(){
    if(PBGx < 560 &&  PBGx+PABAG.width/2 > 560 && PBGy < 360 && PBGy+PABAG.height/2 > 360){
    return true;
    }else{
    return false;
    }

}

//SLEEP
boolean isTheSShirtOnBody(){
    if(SSx < 540 &&  SSx+SSHIRT.width/2 > 540 && SSy < 360 && SSy+SSHIRT.height/2 > 360){
    return true;
    }else{
    return false;
    }

}

boolean isTheSASHOEOnBody(){
    if(SAx < 365 &&  SAx+SASHOE.width/2 > 365 && SAy < 585 && SAy+SASHOE.height/2 > 585){
    return true;
    }else{
    return false;
    }
    
}

boolean isTheSBSHOEOnBody(){
    if(SBx < 555 &&  SBx+BSHOE.width/2 > 555 && SBy < 515 && SBy+BSHOE.height/2 > 515){
    return true;
    }else{
    return false;
    }

}

boolean isTheSGLASSOnBody(){
    if(SGx < 595 &&  SGx+SGLASS.width/2 > 595 && SGy < 195 && SGy+SGLASS.height/2 > 195){
    return true;
    }else{
    return false;
    }

}

boolean isTheSPANTOnBody(){
    if(SPx < 575 &&  SPx+SPANT.width/2 > 575 && SPy < 470 && SPy+SPANT.height/2 > 470){
    return true;
    }else{
    return false;
    }
}
