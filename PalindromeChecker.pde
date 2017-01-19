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

  //noSpace
  String sNew = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if (word.substring(i, i+1).equals(" "))
    {
      sNew = sNew + word.substring(0, i) + word.substring(i+1);
      i--;
    }
  }

  //numLetter
  for (int i =0; i < word.length(); i++)
  {
    if (Character.isLetter(word.charAt(i)) == true)
    {
      sNew = sNew + word.charAt(i);
    }
    else if (Character.isLetter(word.charAt(i)) == false)
    {
      sNew = sNew + word.charAt(i+1);
    }
  }

  word.toLowerCase();

  String around = new String();
  //isPalindrome
  for (int i = word.length()-1; i >= 0; i--)
  {
    around = around + word.charAt(i);
  }
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

// public int numLetters(String sString){
//   int num = 0;
//   for (int i =0; i < sString.length(); i++)
//   {
//     if (Character.isLetter(sString.charAt(i)) == true)
//     {
//       num++;
//     }
//   }
//   return num;
// }

// public String noSpaces(String word){
//   for (int i = 0; i < word.length(); i++)
//   {
//     if (word.substring(i, i+1).equals(" "))
//     {
//       word = word.substring(0, i) + word.substring(i+1);
//       i--;
//     }
//   }
//   return word;
// }

// public String noCapitals(String word){
//   return word.toLowerCase();
// }



