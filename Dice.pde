   Die bob;

   void setup()
  {
     size(650, 600);
     noLoop();
     textSize(24);
  }
  	void draw()
  {
      background(192);
      int sum = 0;

      for(int y = 10; y <= 410; y+=200)
      {
      	for(int x = 20; x <= 520 ; x+=250)
      	{
      		bob = new Die(x, y);
      		bob.show();
          sum += bob.myDots;
      	}
      }

      text("The sum is " + sum, 250, 560);

  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int myDots, myX, myY;
      
      Die(int x, int y) //constructor
      {
          roll();
          myX = x;
          myY = y;
      }
      void roll()
      {
         myDots = (int)(Math.random() * 6) + 1;
      }
      void show()
      {
        fill(255);
        rect(myX, myY, 100, 100);

        if(myDots == 1)
        {
        	fill(0);
        	ellipse(myX + 50, myY + 50, 20, 20);
        }

        if(myDots == 2)
        {
        	fill(0);
        	ellipse(myX + 25, myY + 30, 20, 20);
        	ellipse(myX + 70, myY + 70, 20, 20);
        }

        if(myDots == 3)
        {
        	fill(0);
        	ellipse(myX + 20, myY + 20, 20, 20);
        	ellipse(myX + 50, myY + 50, 20, 20);
        	ellipse(myX + 77, myY + 80, 20, 20);
        }

        if(myDots == 4)
        {
        	fill(0);
        	ellipse(myX + 20, myY + 25, 20, 20);
        	ellipse(myX + 77, myY + 25, 20, 20);
        	ellipse(myX + 20, myY + 75, 20, 20);
        	ellipse(myX + 77, myY + 75, 20, 20);

        }

        if(myDots == 5)
        {
        	fill(0);
        	ellipse(myX + 20, myY + 25, 20, 20);
        	ellipse(myX + 77, myY + 25, 20, 20);
        	ellipse(myX + 50, myY + 50, 20, 20);
        	ellipse(myX + 20, myY + 75, 20, 20);
        	ellipse(myX + 77, myY + 75, 20, 20);	
        }

       if(myDots == 6)
          {
            fill(0);
            ellipse(myX + 20, myY + 30, 20, 20);
            ellipse(myX + 20, myY + 75, 20, 20);
            ellipse(myX + 50, myY + 30, 20, 20);
            ellipse(myX + 50, myY + 75, 20, 20);
            ellipse(myX + 80, myY + 30, 20, 20);
            ellipse(myX + 80, myY + 75, 20, 20);
          }

      }
  }

