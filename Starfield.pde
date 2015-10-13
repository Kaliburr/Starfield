//your code here
void setup()
{
	size(400,400);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double x,y,angle,speed;
	int mycolor;
	NormalParticle(){
		x=200;
		y=200;
		angle=Math.cos(2.31)*3.73;
		speed=Math.sin(2.31)*3.73;
		myColor=(int)(Math.random()*256);
	}
	void move(){
		x=x+Math.cos(angle)*speed;
		y=y+Math.sin(angle)*speed;
	}
	void show(){
		
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

