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
public boolean palindrome(String word)
{
  //your code here
  String around = new String();
  //noSpace
  for (int i = 0; i < word.length(); i++)
  {
    if (word.substring(i, i+1).equals(" "))
    {
      word = word.substring(0, i) + word.substring(i+1);
      i--;
    }
  }

  //isPalindrome
  if (word.substring(0, word.length()).equals(around))
    {
      return true; 
    }

  return false;
}

public String reverse(String str)
{
  String sNew = new String();

  for (int i = str.length()-1; i >= 0; i--)
  {
    sNew = sNew + str.charAt(i);
  }
  return sNew;
}


