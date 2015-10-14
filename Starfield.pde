Particle[]galaxy;
void setup()
{
	size(400,400);
	galaxy=new Particle[500];
	for(int i=0;i<galaxy.length;i++){
		galaxy[i]=new NormalParticle();
	}
}
void draw()
{
	background(0);
	for(int i=0;i<galaxy.length;i++){
		galaxy[i].move();
		galaxy[i].show();
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
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	public void move(){

	}
	public void show(){
		
	}
}
class JumboParticle implements Particle
{
	public void move(){

	}
	public void show(){

	}
}

