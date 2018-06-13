import KinectPV2.KJoint;
import KinectPV2.*;
import processing.sound.*;
KinectPV2 kinect;
int page=1,temp,once;  // initialize once with 0 everytime it is used
PImage page1,page2,page3,page4,back;
PFont font;
PImage FD1,FD2,FD3,FD4,FD5,FD6,FD7,FD8,FD9;
PImage AI1,AI2,AI3,AI4,AI5,AI6,AI7,AI8,AI9;
PImage MD1,MD2,MD3,MD4,MD5,MD6,MD7,MD8,MD9;
PImage A,M,F,rhc,rho,lho,lhc;
SoundFile file;

  float hand_dist;
  int l,r; float  lx,ly,rx,ry,rz,lz,hx,hy,smidx,smidy,imgW,imgH,supx,supy,sdownx,sdowny;  //  hand open/close position


void setup() 
{
  
  size(1920, 1080, P3D);
  font=createFont("font.ttf",50);
  imageMode(CENTER);
  
    kinect = new KinectPV2(this);
    kinect.enableSkeletonColorMap(true);
    kinect.enableColorImg(true);
    kinect.init();
    
    
    
    
    page1=loadImage("page1.jpg");
    page2=loadImage("page2.jpg");
    page3=loadImage("page3.jpg");
    page4=loadImage("page4.jpeg");
    back=loadImage("back.png");
    M=loadImage("M.png");
    F=loadImage("F.png");
    A=loadImage("Avenger.png");
    
    
    rhc=loadImage("rhc.png");
    rho=loadImage("rho.png");
       lhc=loadImage("lhc.png");
       lho=loadImage("lho.png");
    
    FD1=loadImage("FD1.png");
    FD2=loadImage("FD2.png");
    FD3=loadImage("FD3.png");
    FD4=loadImage("FD4.png");
    FD5=loadImage("FD5.png");
    FD6=loadImage("FD6.png");
    FD7=loadImage("FD7.png");
    FD8=loadImage("FD8.png");
    FD9=loadImage("FD9.png");
    
     
     
     
    AI1=loadImage("AI1.png"); 
    AI2=loadImage("AI2.png");
    AI3=loadImage("AI3.png");
    AI4=loadImage("AI4.png");
    AI5=loadImage("AI5.png");
    AI6=loadImage("AI6.png");
    AI7=loadImage("AI7.png");
    AI8=loadImage("AI8.png");
    AI9=loadImage("AI9.png");
    
    
    
    
    
    
    MD1=loadImage("MD1.png");
    MD2=loadImage("MD2.png");
    MD3=loadImage("MD3.png");
    MD4=loadImage("MD4.png");
    MD5=loadImage("MD5.png");
    MD6=loadImage("MD6.png");
    MD7=loadImage("MD7.png");
    MD8=loadImage("MD8.png");
    MD9=loadImage("MD9.png");
    
     
     //Welcome sound
     file = new SoundFile(this, "C:/Users/Shreeyash/Desktop/Project/welcome.mp3");
     file.loop();
         
  
}

void draw()
{
  imageMode(CENTER);
  ArrayList<KSkeleton> skeletonArray =  kinect.getSkeletonColorMap();
  
  //individual JOINTS
  for (int i = 0; i < skeletonArray.size(); i++) 
  {
    KSkeleton skeleton = (KSkeleton) skeletonArray.get(i);
    if (skeleton.isTracked())
    {
      KJoint[] joints = skeleton.getJoints();

      color col  = skeleton.getIndexColor();
      fill(col);
       stroke(col);
     
      
    //  draw different color for each hand state
      drawHandRState(joints[KinectPV2.JointType_HandRight]);
      drawHandLState(joints[KinectPV2.JointType_HandLeft]);
      drawSpineMidState(joints[KinectPV2.JointType_SpineMid]);
      drawSpineupState(joints[KinectPV2.JointType_SpineShoulder]);
      drawSpinedownState(joints[KinectPV2.JointType_SpineBase]);
    }
  }
///  For ENDS HERE
  
  switch(page)
  {   case 1: 
             imageMode(CORNER);
             image(page1,0,0);
             
               
             imageMode(CENTER);
             image (M,1350,300);
             image(F,550,270,F.width/2,F.height/2);
             image(A,950,300,A.width*1.5,A.height*1.5);
             
             //hand display
                imageMode(CENTER);
                if (l==0)
               image(lho,lx,ly,150,150);
               else
               image(lhc,lx,ly,150,150);
               if (r==0)
               image(rho,rx,ry,150,150);
               else
               image(rhc,rx,ry,150,150);
                

         if (lx>1222 && lx<1478 && ly<428 && ly>172 && l==1)
            { once=0;
              click();
              page=2;  
              break;
            }
           else if(rx>1222 && rx<1478 && ry<428 && ry>172 && r==1) 
           { once=0;
             click();
             page=2;
             break;
           }
           else if(lx>322 && lx<778 && ly<438 && ly>102 && l==1)
           {  once=0;
              click();
              page=3;  
              break;
            }
            else if(rx>322 && rx<778 && ry<438 && ry>102 && r==1) 
           {  once=0;
              click();
             page=3;
             break;
           }
            else if(lx>750 && lx<1150 && ly<500 && ly>100 && l==1)
           {  once=0;
              click();
              page=4;  
              break;
            }
            else if(rx>750 && rx<1150 && ry<500 && ry>100 && r==1) 
           {  once=0;
              click();
             page=4;
             break;
           }
            
           break;
               
                  
                  
                 
       case 2: //  MEN
               imageMode(CORNER);
               image(page2,0,0);
               image(MD1,400,150,150,150);
               image(MD2,650,150,150,150);
               image(MD3,900,150,150,150);
               image(MD4,400,400,150,150);
               image(MD5,650,400,150,150);
               image(MD6,900,400,150,150);
               image(MD7,400,650,150,150);
               image(MD8,650,650,150,150);
               image(MD9,900,650,150,150);
              //hand display
                imageMode(CENTER);
                if (l==0)
               image(lho,lx,ly,150,150);
               else
               image(lhc,lx,ly,150,150);
               if (r==0)
               image(rho,rx,ry,150,150);
               else
               image(rhc,rx,ry,150,150);
                imageMode(CORNER);
                
                
                
                
                 //for MD1
               if(lx<550 && lx>400 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  temp=page;
                  page=11;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=11;
                  break;
                }  
                
                 //for MD2
                else if(lx<800 && lx>650 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=12;
                  break;
                }  
                else if(rx<800 && rx>650 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=12;
                  break;
                }  
                
                
                
                
                //for MD3
                else if(lx<1050 && lx>900 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=13;
                  break;
                }  
                else if(rx<1050 && rx>900 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=13;
                  break;
                }  
                
                
                
                
                //for MD4
                else if(lx<550 && lx>400 && ly<550 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=14;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<550 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=14;
                  break;
                }  
                
                
                
                
                
                //for MD5
                else if(lx<800 && lx>650 && ly<550 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=15;
                  break;
                }  
                else if(rx<800 && rx>650 && ry<550 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=15;
                  break;
                }  
                
                
                
                
                 //for MD6
                else if(lx<1050 && lx>900 && ly<550 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=25;
                  break;
                }  
                else if(rx<1050 && rx>900 && ry<550 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=25;
                  break;
                }  
                
                
                
                
                 //for MD7
                else if(lx<550 && lx>400 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=26;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=26;
                  break;
                }  
                
                
                
                
                 //for MD8
                else if(lx<800 && lx>650 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=27;
                  break;
                }  
                else if(rx<800 && rx>650 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=27;
                  break;
                }  
                
                
             //for MD9
                else if(lx<1050 && lx>900 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=31;
                  break;
                }  
                else if(rx<1050 && rx>900 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=31;
                  break;
                }      
                
                
                fill(255,255,255);
                textFont(font);
                text("Close your both hands to go back!",400,60);
              if( r==1 && l==1)
              { once=0;
                back();
               page=1;
               
             //Welcome sound
              // file = new SoundFile(this, "C:/Users/Shreeyash/Desktop/Project/welcome.mp3");
               // file.loop();
               break;
              }
               
               
               break;
               
               
               
               
       case 3://  FEMALE
               imageMode(CORNER);
               image(page3,0,0);
               image(FD1,400,150,150,150);
               image(FD2,650,150,150,150);
               image(FD3,900,150,150,150);
               image(FD4,400,400,150,150);
               image(FD5,650,400,150,150);
               image(FD6,900,400,150,150);
               image(FD7,400,650,150,150);
               image(FD8,650,650,150,150);
               image(FD9,900,650,150,150);
            //hand display
                imageMode(CENTER);
                if (l==0)
               image(lho,lx,ly,150,150);
               else
               image(lhc,lx,ly,150,150);
               if (r==0)
               image(rho,rx,ry,150,150);
               else
               image(rhc,rx,ry,150,150);
                imageMode(CORNER);
               
               //for FD1
               if(lx<550 && lx>400 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  temp=page;
                  page=5;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=5;
                  break;
                }  
                
                //for FD2
                else if(lx<800 && lx>650 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=6;
                  break;
                }  
                else if(rx<800 && rx>650 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=6;
                  break;
                }  
                
           //for FD3
                else if(lx<1050 && lx>900 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=18;
                  break;
                }  
                else if(rx<1050 && rx>900 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=18;
                  break;
                }              
               
               
                    
                
         //for FD4
                else if(lx<550 && lx>400 && ly<550 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=19;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<550 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=19;
                  break;
                }       
                
                
                
          
               
                     
          //for FD5
                else if(lx<800 && lx>650 && ly<550 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=20;
                  break;
                }  
                else if(rx<800 && rx>650 && ry<550 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=20;
                  break;
                }           
                
                
                
                
           //for FD6
                else if(lx<1050 && lx>900 && ly<550 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=21;
                  break;
                }  
                else if(rx<1050 && rx>900 && ry<550 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=21;
                  break;
                }                
               
               
               
          //for FD7
                else if(lx<550 && lx>400 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=22;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=22;
                  break;
                }        
                
                
                
                
            
          //for FD8
                else if(lx<800 && lx>650 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=29;
                  break;
                }  
                else if(rx<800 && rx>650 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=29;
                  break;
                }                 
                
                
                
           //for FD9
                else if(lx<1050 && lx>900 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=30;
                  break;
                }  
                else if(rx<1050 && rx>900 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=30;
                  break;
                }                 
                      
                
                fill(250,250,210);
                textFont(font);
                text("Close your both hands to go back!",400,60);
              if( r==1 && l==1)
              {
                once=0;
                back();
               page=1;
                 
             //Welcome sound
              // file = new SoundFile(this, "C:/Users/Shreeyash/Desktop/Project/welcome.mp3");
              //  file.loop();
               break;
              }
               
               
               break;
               
               
               
               
               
            
         case 4:   //         AVENGERS
                imageMode(CORNER);
               image(page4,0,0);
               image(AI1,400,150,150,150);
               image(AI2,850,150,150,150);
               image(AI3,1300,150,150,150);
               image(AI4,400,400,150,150);
               image(AI5,850,400,150,150);
               image(AI6,1300,400,150,150);
               image(AI7,400,650,150,150);
               image(AI8,850,650,150,150);
               image(AI9,1230,670,300,150);
                
                //hand display
                imageMode(CENTER);
                if (l==0)
               image(lho,lx,ly,150,150);
               else
               image(lhc,lx,ly,150,150);
               if (r==0)
               image(rho,rx,ry,150,150);
               else
               image(rhc,rx,ry,150,150);
                imageMode(CORNER);
               
               
               //ellipse(lx,ly,50,50);
              //  ellipse(rx,ry,50,50);
                
                
                //  Avenger image 1
                 if(lx<550 && lx>400 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  temp=page;
                  page=7;
                  break;
                }  
                else if(rx<550 && rx>400 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=7;
                  break;
                }  
                
                
                //for Avenger image 2
               else if(lx<1000 && lx>850 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=8;
                  break;
                }  
                else if(rx<1000 && rx>850 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=8;
                  break;
                }  
                
                
                
                
                
                
                
          //for Avenger image 3
               else if(lx<1450 && lx>1300 && ly<300 && ly>150 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=9;
                  break;
                }  
                else if(rx<1450 && rx>1300 && ry<300 && ry>150 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=9;
                  break;
                }        
                
                
                 
          //for Avenger image 4
               else if(lx<650 && lx>400 && ly<650 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=10;
                  break;
                }  
                else if(rx<650 && rx>400 && ry<650 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=10;
                  break;
                }              
               
           
           
           
                
          //for Avenger image 5
               else if(lx<1000 && lx>850 && ly<650 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=16;
                  break;
                }  
                else if(rx<1000 && rx>850 && ry<650 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=16;
                  break;
                }              
               
               
               
          //for Avenger image 6
               else if(lx<1450 && lx>1300 && ly<650 && ly>400 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=17;
                  break;
                }  
                else if(rx<1450 && rx>1300 && ry<650 && ry>400 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=17;
                  break;
                }             
              
              
              
              
            
          //for Avenger image 7
               else if(lx<650 && lx>400 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=23;
                  break;
                }  
                else if(rx<650 && rx>400 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=23;
                  break;
                }         
                
             
          //for Avenger image 8
               else if(lx<1000 && lx>850 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=24;
                  break;
                }  
                else if(rx<1000 && rx>850 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=24;
                  break;
                }               
                
                
                
       //for Avenger image 9
               else if(lx<1450 && lx>1300 && ly<800 && ly>650 && l==1)
                { once=0;
                  click();
                  
                  temp=page;
                  page=28;
                  break;
                }  
                else if(rx<1450 && rx>1300 && ry<800 && ry>650 && r==1)
                { once=0;
                  click();
                  temp=page;
                  page=28;
                  break;
                }                      
           
           
           
           ///////////////////////////////////////////////////////////////////////////////     
                fill(250,250,210);
                textFont(font);
                text("Close your both hands to go back!",400,60);
              if( r==1 && l==1)
              {
                once=0;
                back();
               page=1;
                 
             //Welcome sound
               //file = new SoundFile(this, "C:/Users/Shreeyash/Desktop/Project/welcome.mp3");
              //  file.loop();
               break;
              }
               
               
               break;    
         
     // i'll repeat case 5 for each next page/dress          
         case 5:    // female dress 1   
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                    image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD1.width/(FD1.width/hand_dist);
                      imgH=FD1.height/(FD1.width/hand_dist);
                    }
                       image(FD1,sdownx,sdowny,imgW,imgH);
                       break;
    
    
         case 6:    // female dress 2   
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                     image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD2.width/(FD2.width/hand_dist);
                      imgH=FD2.height/(FD2.width/hand_dist);
                    }
                       image(FD2,sdownx,sdowny,imgW,imgH);
                       break;
                       
                       
                       
                       
    
    
    
    
         case 7: //  Avenger image 1
                   imageMode(CORNER);
                   //if(smidx>750 && smidx <1170)
                    image(kinect.getColorImage(),0,0, width, height);
                   // else background(0);
                    image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI1.width/(AI1.width/hand_dist);
                      imgH=AI1.height/(AI1.width/hand_dist);
                    }
                       image(AI1,sdownx+10,sdowny-50,imgW,imgH);
                       break;
                       
                       
                       
                       
           case 8: //  Avenger image 2
                   imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
               image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI2.width/(AI2.width/hand_dist);
                      imgH=AI2.height/(AI2.width/hand_dist);
                    }
                       image(AI2,sdownx+20,sdowny,imgW,imgH);
                       break;       
                       
                       
                       
                       
            case 9: //  Avenger image 3
                   imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                     image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI3.width/(AI3.width/hand_dist);
                      imgH=AI3.height/(AI3.width/hand_dist);
                    }
                       image(AI3,sdownx+20,sdowny,imgW,imgH);
                       break;    
                       
                       
                       
                       
                       
              case 10: //  Avenger image 4
                   imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                     image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI4.width/(AI4.width/hand_dist);
                      imgH=AI4.height/(AI4.width/hand_dist);
                    }
                       image(AI4,sdownx-40,sdowny,imgW,imgH);
                       break;                        
                  
                  
                  
                  
               case 11:    // male dress 1   
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                       image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD1.width/(MD1.width/hand_dist);
                      imgH=MD1.height/(MD1.width/hand_dist);
                    }
                       image(MD1,smidx-5,smidy-40,imgW,imgH);
                       break;
        
        
          case 12:    // male dress 2   
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD2.width/(MD2.width/hand_dist);
                      imgH=MD2.height/(MD2.width/hand_dist);
                    }
                       image(MD2,sdownx+60,sdowny,imgW,imgH);
                       break;
                       
                       
                       
          case 13:    // male dress 3   
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                     image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD3.width/(MD3.width/hand_dist);
                      imgH=MD3.height/(MD3.width/hand_dist);
                    }
                       image(MD3,sdownx+10,sdowny,imgW,imgH);
                       break;              
        
                  
                  
                  
          case 14:    // male dress 4  
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD4.width/(MD4.width/hand_dist);
                      imgH=MD4.height/(MD4.width/hand_dist);
                    }
                       image(MD4,sdownx-25,sdowny+30,imgW,imgH);
                       break; 
                       
                       
               case 15:    // male dress 5  
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                    image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD5.width/(MD5.width/hand_dist);
                      imgH=MD5.height/(MD5.width/hand_dist);
                    }
                       image(MD5,sdownx,sdowny,imgW,imgH);
                       break;         
                       
                       
                       
           case 16:    // AI 5
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                       image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI5.width/(AI5.width/hand_dist);
                      imgH=AI5.height/(AI5.width/hand_dist);
                    }
                       image(AI5,smidx,smidy,imgW,imgH);
                       break;                     
                  
                  
                  
                  
           case 17:    // AI 6
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI6.width/(AI6.width/hand_dist);
                      imgH=AI6.height/(AI6.width/hand_dist);
                    }
                       image(AI6,sdownx,sdowny,imgW,imgH);
                       break;                     
                         
      case 18:    // FD3
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD3.width/(FD3.width/hand_dist);
                      imgH=FD3.height/(FD3.width/hand_dist);
                    }
                       image(FD3,sdownx+15,sdowny,imgW,imgH);
                       break;                     
                         
      case 19:    // FD4
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                     image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD4.width/(FD4.width/hand_dist);
                      imgH=FD4.height/(FD4.width/hand_dist);
                    }
                       image(FD4,sdownx+5,sdowny,imgW,imgH);
                       break;     
                       
                       
                       
                       
        case 20:    // FD5
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD5.width/(FD5.width/hand_dist);
                      imgH=FD5.height/(FD5.width/hand_dist);
                    }
                       image(FD5,sdownx-10,sdowny,imgW,imgH);
                       break;        
                       
                       
                       
         case 21:    // FD6
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                     image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD6.width/(FD6.width/hand_dist);
                      imgH=FD6.height/(FD6.width/hand_dist);
                    }
                       image(FD6,sdownx,sdowny-50,imgW,imgH);
                       break;     
                       
                       
                       
           case 22:    // FD7
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=FD7.width/(FD7.width/hand_dist);
                      imgH=FD7.height/(FD7.width/hand_dist);
                    }
                       image(FD7,sdownx-10,sdowny-110,imgW,imgH);
                       break;                 
                         
                         
                         
                         
                         
             case 23:    // AI7         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                       image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI7.width/(AI7.width/hand_dist);
                      imgH=AI7.height/(AI7.width/hand_dist);
                    }
                       image(AI7,sdownx,sdowny,imgW,imgH);
                       break;                 
                         
                                       
                                       
                                       
                                       
              case 24:    //AI8
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=AI8.width/(AI8.width/hand_dist);
                      imgH=AI8.height/(AI8.width/hand_dist);
                    }
                       image(AI8,sdownx,sdowny,imgW,imgH);
                       break;   
                       
                       
                       
                       
                                        
              case 25:    // MD6
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                       image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD6.width/(MD6.width/hand_dist);
                      imgH=MD6.height/(MD6.width/hand_dist);
                    }
                       image(MD6,sdownx-20,sdowny,imgW,imgH);
                       break;   
                       
                       
                       
                       
                       
                                       
              case 26:    //MD7
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                       image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      imgW=MD7.width/(MD7.width/hand_dist);
                      imgH=MD7.height/(MD7.width/hand_dist);
                    }
                       image(MD7,smidx,smidy,imgW,imgH);
                       break;   
                       
                       
                       
                       
                                      
              case 27:    //MD8
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      //  imgW=MD8.width/(MD8.width/dist_x);
                     // imgH=MD8.height/(MD8.width/dist_y);
                      imgW=MD8.width/(MD8.width/hand_dist);
                      imgH=MD8.height/(MD8.width/hand_dist);
                    }
                       image(MD8,sdownx+20,sdowny+50,imgW,imgH);
                       break;           
                       
                       
                       
                       
                                     
              case 28:    //AI9
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                      //  imgW=MD8.width/(MD8.width/dist_x);
                     // imgH=MD8.height/(MD8.width/dist_y);
                      imgW=3*AI9.width/(AI9.width/hand_dist);
                      imgH=3*AI9.height/(AI9.width/hand_dist);
                    }
                       image(AI9,sdownx-50,sdowny,imgW,imgH);
                       break;                         
                                                  
                                                    
                                                    
                                                    
          case 29:    //  FD8
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                     
                      imgW=FD8.width/(FD8.width/hand_dist);
                      imgH=FD8.height/(FD8.width/hand_dist);
                    }
                       image(FD8,sdownx,sdowny+150,imgW,imgH);
                       break;         
                       
                       
          case 30:    //  FD9
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                     
                      imgW=FD9.width/(FD9.width/hand_dist);
                      imgH=FD9.height/(FD9.width/hand_dist);
                    }
                       image(FD9,smidx,smidy+70,imgW,imgH);
                       break;  
                       
                       
            case 31:    //  MD9
         
                    imageMode(CORNER);
                    image(kinect.getColorImage(),0,0, width, height);
                      image(back,835,0,150,150);
                 if(lx>835 && lx<985 && ly>0 && ly<150 )
                  {  once=0;
                    back();
                    page=temp;
                     break;
                  }
                    imageMode(CENTER);
                    if(l==1 && r==1)
                    {
                     
                      imgW=MD9.width/(MD9.width/hand_dist);
                      imgH=MD9.height/(MD9.width/hand_dist);
                    }
                       image(MD9,smidx+5,smidy+10,imgW,imgH);
                       break;             
    
    
    
  }
//dist_y=abs(ry-ly);  
//dist_x= abs(rx-lx);
hand_dist=2*dist(lx,ly,lz,rx,ry,rz);  
}



//draw handR state
void drawHandRState(KJoint joint) {
  noStroke();
  handRState(joint.getState());
  rx=joint.getX();
  ry=joint.getY();
  rz=joint.getZ();
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
 // image(img,0,0,img.width/5,img.height/5);
 // ellipse(0, 0, 20, 70);
  popMatrix();
}



// click sound
void click()
{
 file = new SoundFile(this, "C:/Users/Shreeyash/Desktop/Project/click.mp3");
     if (once==0)
     {file.play();
     once=1;}
}



// Back sound
void back()
{
  file = new SoundFile(this, "C:/Users/Shreeyash/Desktop/Project/back.mp3");
     if (once==0)
     {file.play();
     once=1;}
}


//draw handL state
void drawHandLState(KJoint joint) {
  noStroke();
  handLState(joint.getState());
  lx=joint.getX();
  ly=joint.getY();
  lz=joint.getZ();
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
 // image(img,0,0,img.width/5,img.height/5);
  ellipse(0, 0, 70, 70);
  popMatrix();
}


//draw spine mid state
void drawSpineMidState(KJoint joint) {
  noStroke();
 // handState(joint.getState());
 smidx=joint.getX();
 smidy=joint.getY();
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
  //image(img,-30,0,img.width/2.8,img.height/2.8);
  ellipse(0, 0, 70, 70);
  popMatrix();
}



//draw spine base state
void drawSpinedownState(KJoint joint) {
  noStroke();
 // handState(joint.getState());
 sdownx=joint.getX();
 sdowny=joint.getY();
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
  //image(img,-30,0,img.width/2.8,img.height/2.8);
  ellipse(0, 0, 70, 70);
  popMatrix();
}


//draw spine up state
void drawSpineupState(KJoint joint) {
  noStroke();
 // handState(joint.getState());
 supx=joint.getX();
 supy=joint.getY();
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
  //image(img,-30,0,img.width/2.8,img.height/2.8);
  ellipse(0, 0, 70, 70);
  popMatrix();
}

void handRState(int handState) {
  switch(handState) {
  case KinectPV2.HandState_Open:
    fill(0, 255, 0);
    r=0;
    break;
    
  case KinectPV2.HandState_Closed:
    fill(255, 0, 0);
    r=1;
    break;
 
  }
}




void handLState(int handState) {
  switch(handState) {
  case KinectPV2.HandState_Open:
    fill(0, 255, 0);
    l=0;
    break;
  case KinectPV2.HandState_Closed:
    fill(255, 0, 0);
    l=1;
    break;
 
  }
}



void drawHandState(KJoint joint) {
  noStroke();
 // handState(joint.getState());
 hx=joint.getX();
 hy=joint.getY();
  pushMatrix();
  translate(joint.getX(), joint.getY(), joint.getZ());
 // image(img,0,0,img.width/5,img.height/5);
 // ellipse(0, 0, 20, 70);
  popMatrix();
}