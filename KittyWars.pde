//kitty wars
int salary=20;
int money=50;
int groomers=2;
int products=5;
int saboteurs= 2;
int plots= 5;
int insurance=20;
int beauty=30;
//enemy resources
int salaryB=20;
int moneyB=50;
int groomersB=2;
int productsB=5;
int saboteursB= 2;
int plotsB= 5;
int insuranceB=20;
int beautyB=30;

int cardX=11;
int cardY=450;

boolean playerTurn=true;
boolean discard=false;
boolean title=true;
int cardClickIndex=0;
// multiples of cards included to increase chance of being drawn
String[] cards= {
  "Small Investment,", "Small Investment,", "Small Investment,", "Small Investment,", "Small Investment,", 
  "Large Investment,", "Large Investment,", "Large Investment,", 
  "Pay Raise,", "Pay Raise,", "Pay Raise,", 
  "Money Laundering,", "Money Laundering,", 
  "Shopping Spree,", 
  "Revenge,", 
  "Bribe,", 
  "Recruit Groomers,", "Recruit Groomers,", "Recruit Groomers,", 
  "Fur Groomer,", "Fur Groomer,", "Fur Groomer,", "Fur Groomer,", "Fur Groomer,", 
  "Purrfect Coat Bath Wipes,", "Purrfect Coat Bath Wipes,", "Purrfect Coat Bath Wipes,", 
  "Ultimate Cat Brush,", 
  "Magic Mirror,", 
  "Evil Geniuses,", 
  "Mafia,", "Mafia,", 
  "Thief,", "Thief,", 
  "Water Balloons,", "Water Balloons,", "Water Balloons,", "Water Balloons,", "Water Balloons,", 
  "Steal,", "Steal,", 
  "Itching Powder,", "Itching Powder,", "Itching Powder,", "Itching Powder,", 
  "Loose Dog,", "Loose Dog,", 
  "Flea bomb,", "Flea bomb,", "Flea bomb,", 
  "Recruit Saboteur,", "Recruit Saboteur,", "Recruit Saboteur,", 
  "Insurance Fraud,", "Insurance Fraud,", "Insurance Fraud,", 
  "Better Insurance,", "Better Insurance,", 
  "Steal Insurance Bill,", 
  "Fire,"
};
//String[] player1Hand= new String[7];
//String[] player2Hand= new String[7];
ArrayList<String> p1;
ArrayList<String> p2;
//pictures
PImage smInvst;
PImage lrgInvst;
PImage payRaise;
PImage moneyLaundering;
PImage shoppingSpree;
PImage revenge;
PImage bribe;
PImage recruitGroomers;
PImage furGroomers;
PImage purrfectBathWipes;
PImage ultimateCatBrush;
PImage mirror;
PImage geniuses;
PImage mafia;
PImage thief;
PImage balloons;
PImage steal;
PImage itchingPow;
PImage dog;
PImage fleaBomb;
PImage recruitSaboteurs;
PImage fraud;
PImage betterInsurance;
PImage stealInsuranceBill;
PImage fire;
//catz
PImage garfield0020;
PImage garfield2040;
PImage garfield4060;
PImage garfield6080;
PImage garfield8099;
PImage garfield100;
PImage nermal0020;
PImage nermal2040;
PImage nermal4060;
PImage nermal6080;
PImage nermal8099;
PImage nermal100;
//pawz
PImage black;
PImage white;



//initializers
void setup()
{
  size(800, 600);
  background(130, 190, 250);
  frameRate(60);
  rectMode(CENTER);
  noStroke();
  loop();


  p1 = new ArrayList<String>();
  p2 = new ArrayList<String>();
  smInvst=loadImage("KW Small Investment.jpg");
  lrgInvst=loadImage("KW Large Investment.jpg");
  payRaise=loadImage("KW Pay Raise.jpg");
  moneyLaundering=loadImage("KW Money Laundering.gif");
  shoppingSpree=loadImage("KW Shopping Spree.jpg");
  revenge=loadImage("KW Revenge.jpg");
  bribe=loadImage("KW Bribe.jpg");
  recruitGroomers=loadImage("KW Recruit Groomers.jpg");
  furGroomers=loadImage("KW Fur Groomer.jpg");
  purrfectBathWipes=loadImage("KW Purrfect Coat Bath Wipes.jpg");
  ultimateCatBrush=loadImage("KW Ultimate Cat Brush.jpg");
  mirror=loadImage("KW Magic Mirror.jpg");
  geniuses=loadImage("KW Evil Geniuses.jpg");
  mafia=loadImage("KW Mafia.jpg");
  thief=loadImage("KW Thief.jpg");
  balloons=loadImage("KW Water Balloons.jpg");
  steal=loadImage("KW Steal.jpg");
  itchingPow=loadImage("KW Itching Powder.jpg");
  dog=loadImage("KW Loose Dog.jpg");
  fleaBomb=loadImage("KW Flea Bomb.jpg");
  recruitSaboteurs=loadImage("KW Recruit Saboteur.jpg");
  fraud=loadImage("KW Insurance Fraud.jpg");
  betterInsurance=loadImage("KW Better Insurance.jpg");
  stealInsuranceBill=loadImage("KW Steal Insurance Bill.jpg");
  fire=loadImage("KW Fire.jpg");
  handInitialize();

  //catz
  garfield0020=loadImage("G0020.gif");
  garfield2040=loadImage("G2040.gif");
  garfield4060=loadImage("G4060.gif");
  garfield6080=loadImage("G6080.gif");
  garfield8099=loadImage("G8099.gif");
  garfield100=loadImage("G100.gif");
  nermal0020=loadImage("N0020.gif");
  nermal2040=loadImage("N2040.gif");
  nermal4060=loadImage("N4060.gif");
  nermal6080=loadImage("N6080.gif");
  nermal8099=loadImage("N8099.gif");
  nermal100=loadImage("N100.gif");

  white=loadImage("KWwhite.gif");
  black=loadImage("KWblack.gif");
  //println (cards.length);


  //print("hi");
}

void draw()
{
  if (title==true)
  {
    title();
    println("title");
  }
  else{
  scene();
  button();
  cards();
  catz();
  }

}

void title()
{
  textAlign(CORNER);
  fill(225);
  rect(200,300,400,600);
  fill(0);
  rect(600,300,400,600);
  textSize(100);
  text("Kitty", 150, 100);
  fill(225);
  text("Warz", 420,100);
  textAlign(CENTER);
  fill(81);
  textSize(16);
  text("CLick on cards to use them, \n press'D' to toggle discard mode.", 400,400);
  image (black, 0,400,200,200);
  image (white,600,400,200,200);
  textSize(14);
  textAlign(CORNER);

}
void nextTurn()
{
  money=money+salary;
  products=products+groomers;
  plots=plots+saboteurs;
  //enemy
  moneyB=moneyB+salaryB;
  productsB=productsB+groomersB;
  plotsB=plotsB+saboteursB;
  println("Money " + money);
  println("Products " + products);
  println("Plots " + plots);
}

void scene()
{
  fill(130, 190, 250);
  rect(400, 300, 800, 600);
  fill(20, 140, 50);
  rect(400, 500, 800, 200);

  fill(0);
  //textMode(CENTER);broken
  text("Salary "+salary, 700, 20);
  text("Money "+money, 700, 40);
  text("Groomers "+groomers, 700, 80);
  text("Products "+products, 700, 100);
  text("Saboteurs "+saboteurs, 700, 140);
  text("Plots "+plots, 700, 160);
  text("Beauty "+beauty, 700, 200);
  text("Insurance "+insurance, 700, 220);
  //enemy
  text("Salary "+salaryB, 25, 20);
  text("Money "+moneyB, 25, 40);
  text("Groomers "+groomersB, 25, 80);
  text("Products "+productsB, 25, 100);
  text("Saboteurs "+saboteursB, 25, 140);
  text("Plots "+plotsB, 25, 160);
  text("Beauty "+beautyB, 25, 200);
  text("Insurance "+insuranceB, 25, 220);
}

void button()
{
  int x = 81;
  if (discard== true)
  {
    x=80;
    //println("true");
  }
  else
  {
    x=200;
  }
  fill(x);
  rect(400, 420, 100, 25);
  fill(225);
  text("Discard", 375, 425);
}

void cards()
{
  cardX=11;
  for ( int i=0;i<p1.size();i++)
  {
    for ( int j=0; j<cards.length; j++)

      if (p1.get(i).equals(cards[j]))
        //if (player1Hand[i].equals(cards[j]))
      {
        if (j > -1 && j < 5)//small investment
        {
          image(smInvst, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 4 && j <8)//large investment
        {
          image(lrgInvst, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 7 && j < 11)//Pay raise
        {
          image(payRaise, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 10 && j < 13)//Money Laundering
        {
          image(moneyLaundering, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j ==13)//Shoping Spree
        {
          image(shoppingSpree, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j== 14)//Revenge
        {
          image(revenge, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j ==15)//bribe
        {
          image(bribe, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 15 && j < 19)//recruit groomers
        {
          image(recruitGroomers, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 18 && j < 24)//fur groomers
        {
          image(furGroomers, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 23 && j < 27)//bath wipes
        {
          image(purrfectBathWipes, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j ==27)// cat brush
        {
          image(ultimateCatBrush, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j == 28)//magic mirror
        {
          image(mirror, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j == 29)//geniuses
        {
          image(geniuses, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 29 && j < 32)// mafia
        {
          image(mafia, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 31 && j < 34)//theif
        {
          image(thief, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 33 && j < 39)//balloons
        {
          image(balloons, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 38 && j < 41)//steal
        {
          image(steal, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 40 && j < 45) //itching powder
        {
          image(itchingPow, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 44 && j < 47)//dog
        {
          image(dog, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 46 && j < 50)//flea bomb
        {
          image(fleaBomb, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 49 && j < 53)//recruit saboteur
        {
          image(recruitSaboteurs, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 52 && j < 56)//insurance fraud
        {
          image(fraud, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j > 55 && j < 58)// better insurance
        {
          image(betterInsurance, cardX, cardY, 100, 140);
          j=j+60;
        }
        else if (j == 58)//steal insurance bill
        {
          image(stealInsuranceBill, cardX, cardY, 100, 140);
        }
        else if (j == 59)//fire
        {
          image(fire, cardX, cardY, 100, 140);
        }
        else//test
        {
          //println("nope");
          //println(p1.get(i));
        }
        cardX=cardX+111;
      }
  }
}

void handInitialize()
{
  for (int i=0;i<7;i++)
  {
    // player1Hand[i]=cards[int(random(cards.length))];
    //p2.get(i).add(cards[int(random(cards.length))]);
    p1.add(i, cards[int(random(cards.length))]);
    println(p1.get(i));
  }
  println();
  for (int i=0;i<7;i++)
  {
    //player2Hand[i]=cards[int(random(cards.length))];
    p2.add(i, cards[int(random(cards.length))]);
    //println(player2Hand[i]);
    println(p2.get(i));
  }
}

void  mouseClicked()
{
  title=false;
  if (playerTurn==true)
  {
    if (((mouseX > 11 && mouseX < 111) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=0;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
    if (((mouseX > 122 && mouseX < 222) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=1;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
    if (((mouseX > 233 && mouseX < 333) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=2;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
    if (((mouseX > 344 && mouseX < 444) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=3;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
    if (((mouseX > 455 && mouseX < 555) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=4;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
    if (((mouseX > 566 && mouseX < 666) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=5;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
    if (((mouseX > 677 && mouseX < 777) && (mouseY > 450 && mouseY < 590)) && (get(mouseX, mouseY)!=color(20, 140, 50)))
    {
      cardClickIndex=6;
      if (discard==true)
      {
        p1.remove(cardClickIndex);
      }
      else
      {
        cardChecker();
      }
      refill();
      playerTurn=false;
      ai();
    }
  }
  //rectMode(CORNER);
  //  rect(350,420,100,25);
  //  if ((mouseX > 350 && mouseX <450) && (mouseY > 420 && mouseY < 445))//(get(mouseX,mouseY)==color(160))
  //  {
  //    println("hi");
  //    fill(255);
  //    rect(50,50,50,50);
  //    discard = true;
  //    println("hi");
  //  }
  //  else if (get(mouseX,mouseY)==color(80))
  //  {
  //    discard=false;
  //    println("false");
  //  }
}

void catz()
{
  if (beauty < 20)
  {
    image(garfield0020, 550, 250, 250, 200);
    if( beauty <= 0)
    {
      text("Garfield's plots to sabotage Nermal have backfired...",250,200);
    }
  }
  if (beauty > 19 && beauty <40)
  {
    image(garfield2040, 600, 225, 180, 225);
  }
  if (beauty >39 && beauty < 60)
  {
    image(garfield4060, 600, 250, 200, 200);
  }
  if (beauty > 59 && beauty < 80)
  {
    image(garfield6080, 600, 250, 200, 200);
  }
  if (beauty > 79 && beauty <100)
  {
    image(garfield8099, 550, 250, 300, 200);
  }
  if (beauty >= 100)
  {
    image(garfield100, 600, 225, 225, 225);
    text("You made Garfield Better than Nermal, Congrats!",260,200);
  }
  if (beautyB < 20)
  {
    image(nermal0020, 30, 250, 250, 200);
    if( beautyB <= 0)
    {
      text("Garfield's plots to sabotage Nermal have suceeded",250,200);
    }
  }
  if (beautyB > 19 && beautyB <40)
  {
    image(nermal2040, 50, 325, 230, 130);
  }
  if (beautyB >39 && beautyB < 60)
  {
    image(nermal4060, 100, 300, 150, 150);
  }
  if (beautyB > 59 && beautyB < 80)
  {
    image(nermal6080, 100, 300, 150, 150);
  }
  if (beautyB > 79 && beautyB <100)
  {
    image(nermal8099, 50, 280, 200, 160);
  }
  if (beautyB >= 100)
  {
    image(nermal100, 50, 270, 200, 200);
    text("As usual Nermal wins and Garfield is ugly in comparison.",250,200);
  }
}
void cardChecker()
{
  println(cardClickIndex);
  for ( int j=0; j<cards.length; j++)
  {

    if (p1.get(cardClickIndex).equals(cards[j]))
      //if (player1Hand[i].equals(cards[j]))
    {
      if (j > -1 && j < 5)//small investment
      {
        if (money >= 50)
        {
          money=money+50;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 4 && j <8)//large investment
      {
        if (money >= 150)
        {
          money = money + 150;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 7 && j < 11)//Pay raise
      {
        salary = salary + 10;
        p1.remove(cardClickIndex);
        j=j+60;
      }
      else if (j > 10 && j < 13)//Money Laundering
      {
        if (plots>=10)
        {
          plots = plots - 10;
          money = money + 200;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j ==13)//Shoping Spree
      {
        if (money >= 100)
        {
          money = money - 100;
          products = products+20;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j== 14)//Revenge
      {
        if (money >= 500)
        {
          money=money-500;
          plots=plots+20;
          beautyB=beautyB-20;
          p1.remove(cardClickIndex);
        }            
        j=j+60;
      }
      else if (j ==15)//bribe
      {
        if ( money >= 500)
        {
          groomersB--;
          saboteursB--;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 15 && j < 19)//recruit groomers
      {
        if (money>=200)
        {
          money=money-200;
          groomers=groomers+1;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 18 && j < 24)//fur groomers
      {
        if (products >= 5)
        {
          products=products-5;
          beauty=beauty+5;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 23 && j < 27)//bath wipes
      {
        if (products >= 12)
        {
          products=products-12;
          beauty=beauty+18;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j ==27)// cat brush
      {
        if (products >= 19)
        {
          products=products-19;
          beauty=beauty+27;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j == 28)//magic mirror
      {
        int temp=beauty;
        beauty=beautyB;
        beautyB=temp;
        p1.remove(cardClickIndex);
        j=j+60;
      }
      else if (j == 29)//geniuses
      {
        if (money>= 300)
        {
          money=money-300;
          plots=plots+20;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 29 && j < 32)// mafia
      {
        if (money >= 150)
        {
          money=money-150;
          plots=plots+10;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 31 && j < 34)//theif
      {
        if (plots >= 20)
        {
          plots=plots-20;
          money=money+50;
          products=products+20;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 33 && j < 39)//balloons
      {
        if (plots >= 5)
        {
          int damage=5;
          plots=plots-5;
          if (damage > insuranceB)
          {
            damage=damage-insuranceB;
            insuranceB=0;
            beautyB=beautyB-damage;
          }
          else 
          {
            insuranceB= insuranceB - damage;
          }
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 38 && j < 41)//steal
      {
        if (plots >= 5)
        {
          plots=plots-5;
          products=products+10;
          if (productsB<10)
          {
            productsB=0;
          }
          else
          {
            productsB=productsB-10;
          }
          p1.remove(cardClickIndex);
        }

        j=j+60;
      }
      else if (j > 40 && j < 45) //itching powder
      {
        if (plots >=9)
        {
          int damage=15;
          plots=plots-9;
          if (damage > insuranceB)
          {
            damage=damage-insuranceB;
            insuranceB=0;       
            beautyB=beautyB-damage;
          }
          else
          {
            insuranceB= insuranceB - damage;
          }
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 44 && j < 47)//dog
      {
        if (plots >= 21)
        {
          plots=plots-21;
          int damage=32;
          if (damage > insuranceB)
          {
            damage= damage- insuranceB;
            insuranceB= 0;
            beautyB=beautyB-damage;
          }
          else
          {
            insuranceB = insuranceB- damage;
          }
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 46 && j < 50)//flea bomb
      {
        if (plots >= 15)
        {
          plots=plots-15;
          int damage= 23;
//          if (damage>insuranceB)
//          {
//            damage=damage- insuranceB;
//            insuranceB=0;
//            beautyB=beautyB-damage;
//          }
//          else
//          {
//            insuranceB=insuranceB-damage;
//          }
          if (damage<insuranceB)
          {
           insuranceB=insuranceB-damage;
          }
          else
          {
            damage=damage- insuranceB;
            insuranceB=0;
            beautyB=beautyB-damage;
          }
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 49 && j < 53)//recruit saboteur
      {
        if (money >= 200)
        {
          money=money-200;
          saboteurs=saboteurs+1;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 52 && j < 56)//insurance fraud
      {
        if (plots >= 5)
        {
          plots=plots-5;
          insurance=insurance+10;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j > 55 && j < 58)// better insurance
      {
        if (money >= 250)
        { 
          money= money-250;
          insurance=insurance+25;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j == 59)//steal insurance bill
      {
        if (plots >= 25)
        {
          plots=plots-25;
          insuranceB=0;
          p1.remove(cardClickIndex);
        }
        j=j+60;
      }
      else if (j == 60)//fire
      {
        if (plots >= 75)
        {
          productsB=0;
          plotsB=0;
          moneyB=0;
          groomersB=groomersB-1;
          saboteursB=saboteursB-1;
          p1.remove(cardClickIndex);
        }
      }
    }
  }
}

void refill()
{
  if (p1.size()< 7)
  {
    p1.add(6, cards[int(random(cards.length))]);
  }
  if (p2.size()<7)
  {
    p2.add(6, cards[int(random(cards.length))]);
  }
}
void keyPressed()
{
  if (key=='d')
  {
    discard=!discard;
  }
  if (key=='u')
  {
    beautyB+=10;
  }
  if (key=='i')
  {
    beautyB-=10;
  }
  if (key=='o')
  {
    beauty+=10;
  }
  if (key=='p')
  {
    beauty-=10;
  }
  //  else
  //  {
  //    discard=false;
  //  }
}

void ai()
{
  //  if (playerTurn=false)
  //    {
  // 
  for (int i=0;i<7;i++)
  {
    println("ai");
    if (playerTurn==false)
    {
      for ( int j=0; j<cards.length; j++)
      {
        if (p2.get(i).equals(cards[j]))
        {
          if (j > -1 && j < 5)//small investment
          {
            if (moneyB >= 50)
            {
              moneyB=moneyB+50;
              p2.remove(i);
              println("Small Investment");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 4 && j <8)//large investment
          {
            if (moneyB >= 150)
            {
              moneyB = moneyB + 150;
              p2.remove(i);
              println("Large Investment");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 7 && j < 11)//Pay raise
          {
            salaryB = salaryB + 10;
            p2.remove(i);
            println("Pay Raise");
            refill();
            playerTurn=true;
            nextTurn();
            j=j+60;
          }
          else if (j > 10 && j < 13)//Money Laundering
          {
            if (plotsB>=10)
            {
              plotsB = plotsB - 10;
              moneyB = moneyB + 200;
              p2.remove(i);
              println("Money Laundering");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j ==13)//Shoping Spree
          {
            if (moneyB >= 100)
            {
              moneyB = moneyB - 100;
              productsB = productsB+20;
              p2.remove(i);
              println("Shopping Spree");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j== 14)//Revenge
          {
            if (moneyB >= 500)
            {
              moneyB=moneyB-500;
              plotsB=plotsB+20;
              beauty=beauty-20;
              p2.remove(i);
              println("Revenge");
              refill();
              playerTurn=true;
              nextTurn();
            }            
            j=j+60;
          }
          else if (j ==15)//bribe
          {
            if ( moneyB >= 500)
            {
              groomers--;
              saboteurs--;
              groomersB++;
              saboteursB++;
              p2.remove(i);
              println("Bribe");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 15 && j < 19)//recruit groomers
          {
            if (moneyB>=200)
            {
              moneyB=moneyB-200;
              groomersB=groomersB+1;
              p2.remove(i);
              println("Recruit Groomers");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 18 && j < 24)//fur groomers
          {
            if (productsB >= 5)
            {
              productsB=productsB-5;
              beautyB=beautyB+5;
              p2.remove(i);
              println("Fur Groomers");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 23 && j < 27)//bath wipes
          {
            if (productsB >= 12)
            {
              productsB=productsB-12;
              beautyB=beautyB+18;
              p2.remove(i);
              println("Bath Wipes");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j ==27)// cat brush
          {
            if (productsB >= 19)
            {
              productsB=productsB-19;
              beautyB=beautyB+27;
              p2.remove(i);
              println("Cat Brush");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j == 28)//magic mirror
          {
            if (productsB >= 50)
            {
              int temp=beauty;
              beauty=beautyB;
              beautyB=temp;
              p2.remove(i);
              println("Magic Mirror");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j == 29)//geniuses
          {
            if (moneyB>= 300)
            {
              moneyB=moneyB-300;
              plotsB=plotsB+20;
              p2.remove(i);
              println("Evil Geniuses");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 29 && j < 32)// mafia
          {
            if (moneyB >= 150)
            {
              moneyB=moneyB-150;
              plotsB=plotsB+10;
              p2.remove(i);
              println("Mafia");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 31 && j < 34)//thief
          {
            if (plotsB >= 20)
            {
              plotsB=plotsB-20;
              moneyB=moneyB+50;
              productsB=productsB+20;
              p2.remove(i);
              println("Thief");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 33 && j < 39)//balloons
          {
            if (plotsB >= 5)
            {
              int damage=5;
              plotsB=plotsB-5;
              if (damage > insurance)
              {
                damage=damage-insurance;
                insurance=0;
                beauty=beauty-damage;
              }
              else 
              {
                insuranceB= insuranceB - damage;
              }
              p2.remove(i);
              println("Water balloons");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 38 && j < 41)//steal
          {
            if (plotsB >= 5)
            {
              plotsB=plotsB-5;
              productsB=productsB+10;
              if (products<10)
              {
                products=0;
              }
              else
              {
                products=products-10;
              }
              p2.remove(i);
              println("Steal");
              refill();
              playerTurn=true;
              nextTurn();
            }

            j=j+60;
          }
          else if (j > 40 && j < 45) //itching powder
          {
            if (plotsB >=9)
            {
              int damage=15;
              plotsB=plotsB-9;
              if (damage > insurance)
              {
                damage=damage-insurance;
                insurance=0;       
                beauty=beauty-damage;
              }
              else
              {
                insurance= insurance - damage;
              }
              p2.remove(i);
              println("Itching Powder");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 44 && j < 47)//dog
          {
            if (plotsB >= 21)
            {
              plotsB=plotsB-21;
              int damage=32;
              if (damage > insurance)
              {
                damage= damage- insurance;
                insurance= 0;
                beauty=beauty-damage;
              }
              else
              {
                insurance = insurance- damage;
              }
              p2.remove(i);
              println("Loose Dog");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 46 && j < 50)//flea bomb
          {
            if (plotsB >= 15)
            {
              plotsB=plotsB-15;
              int damage= 23;
              if (damage>insurance)
              {
                damage=damage- insurance;
                insurance=0;
                beauty=beauty-damage;
              }
              else
              {
                insurance=insurance-damage;
              }
              p2.remove(i);
              println("Flea Bomb");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 49 && j < 53)//recruit saboteur
          {
            if (moneyB >= 200)
            {
              moneyB=moneyB-200;
              saboteursB=saboteursB+1;
              p2.remove(i);
              println("Recruit Saboteur");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 52 && j < 56)//insurance fraud
          {
            if (plotsB >= 5)
            {
              plotsB=plotsB-5;
              insuranceB=insuranceB+10;
              p2.remove(i);
              println("Insurance Fraud");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j > 55 && j < 58)// better insurance
          {
            if (moneyB >= 250)
            { 
              moneyB= moneyB-250;
              insuranceB=insuranceB+25;
              p2.remove(i);
              println("Better Insurance");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j == 59)//steal insurance bill
          {
            if (plotsB >= 25)
            {
              plotsB=plotsB-25;
              insurance=0;
              p2.remove(i);
              println("Steal insurance bill");
              refill();
              playerTurn=true;
              nextTurn();
            }
            j=j+60;
          }
          else if (j == 60)//fire
          {
            if (plotsB >= 75)
            {
              products=0;
              plots=0;
              money=0;
              groomers=groomers-1;
              saboteurs=saboteurs-1;
              p2.remove(i);
              println("Fire");
              refill();
              playerTurn=true;
              nextTurn();
            }
          }
        }
      }
    }
  }
  p2.remove(1);
  playerTurn = true;
}
//void mousePressed()
//{
//  if(get(mouseX,mouseY)==color(80))
//  {
//    discard=false;
//  }
//  if(get(mouseX,mouseY)==color(160))
//  {
//    discard=true;
//  }
//  
////  if ((mouseX<30 && mouseX>0) && (mouseY<30 && mouseY>0))
////  {
////    nextTurn();
////  }
////  if ((mouseX > 350 && mouseX <450) && (mouseY > 420 && mouseY< 445))
////  {
////    discard=!discard;
////    println(discard);
////  }
//}
//
////void add(String){
//// string = string;
////}

