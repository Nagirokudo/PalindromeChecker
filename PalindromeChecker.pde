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
  
  //isPalindrome
  if (fix(word).equals(reverse(word)))
    {
      return true; 
    }
  
  return false;
}

public String fix(String str)
{
  String s = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (str.substring(i, i+1).equals(" "))
    {
      s = s + str.substring(0, i) + str.substring(i+1);
    }
  }
  return s.toLowerCase();
}

public String reverse(String s)
{
  String term = fix(s);
  String sNew = new String();

  for (int i = term.length()-1; i >= 0; i--)
  {
    sNew = sNew + term.charAt(i);
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



