Particle[]galaxy;
void setup()
{
	size(400,400);
	galaxy=new Particle[500];
	galaxy[0]=new OddballParticle();
	galaxy[1]=new JumboParticle();
	for(int i=2;i<galaxy.length;i++){
		galaxy[i]=new NormalParticle();
	}
}
void draw()
{
	background(0);
	for(int i=0;i<galaxy.length;i++){
		galaxy[i].move();
		galaxy[i].show();
		galaxy[i].infinity();
	}
}
class NormalParticle implements Particle
{
	double x,y,angle,speed;
	int mycolor1,mycolor2,mycolor3;
	NormalParticle(){
		x=200;
		y=200;
		angle=(Math.random()*8);
		speed=(Math.random()*8);
		mycolor1=(int)(Math.random()*256);
		mycolor2=(int)(Math.random()*256);
		mycolor3=(int)(Math.random()*256);
	}
	public void move(){
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
	}
	public void show(){
		fill(mycolor1,mycolor2,mycolor3);
		ellipse((float)x,(float)y,10,10);
	}
	public void infinity(){
		if(x<0||400<x||y<0||400<y){
			x=200;
			y=200;
		}
	}
}
interface Particle
{
	public void move();
	public void show();
	public void infinity();
}
class OddballParticle implements Particle
{
	int mycolor1,mycolor2,mycolor3;
	double x,y,angle,speed;
	OddballParticle(){
		x=200;
		y=200;	
		mycolor1=(int)(Math.random()*256);
		mycolor2=(int)(Math.random()*256);
		mycolor3=(int)(Math.random()*256);
		angle=(Math.random()*8);
		speed=(Math.random()*8);
	}
	public void move(){
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
	}
	public void show(){
		fill(mycolor1,mycolor2,mycolor3);
		rect((float)x,(float)y,30,30);
	}
	public void infinity(){
		if(x<0||400<x||y<0||400<y){
			x=200;
			y=200;
		}
	}
}
class JumboParticle implements Particle
{
	double x,y,angle,speed;
	int mycolor1,mycolor2,mycolor3;
	JumboParticle(){
		x=200;
		y=200;
		angle=(Math.random()*8);
		speed=(Math.random()*8);
		mycolor1=(int)(Math.random()*256);
		mycolor2=(int)(Math.random()*256);
		mycolor3=(int)(Math.random()*256);
	}
	public void move(){
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
	}
	public void show(){
		fill(mycolor1,mycolor2,mycolor3);
		ellipse((float)x,(float)y,100,100);
	}
	public void infinity(){
		if(x<0||400<x||y<0||400<y){
			x=200;
			y=200;
		}
	}
}
