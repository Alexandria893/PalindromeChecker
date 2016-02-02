public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public void draw()
{
  fill(0,255,0);
  ellipse(25,25,10,10);
  ellipse(75,25,10,10);
  line(25,50,75,50);
  line(25,50,50,75);
  line(75,50,50,75);
}
public boolean palindrome(String word)
{
//ignores spaces and capitals  
if(word.equals(reverse(word))) 
    return true;
  return false;
//ignores capitals 
return word.toLowerCase();
//counts if symbol is present
int c = 0;
  for(int i =0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i))==true)
    
      c++; 
   
  return c;
  if(c==false)
    return word;  
  }


}
public String reverse(String str)
{
  String sNew = new String();
   for(int i=str.length()-1; i>=0;i--)
    {
      sNew= sNew + str.substring(i,i+1);
    }
    return sNew;
}


