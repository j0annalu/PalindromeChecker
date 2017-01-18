public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(noSpaces(lines[i]))==true)
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
  if (reverse(word).equals(word)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for (int i = str.length()-1; i >= 0; i--)
    {
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String n = new String();
  for (int i = 0; i < sWord.length(); i++)
    if (Character.isLetter(sWord.charAt(i)) == true)
      n = n + sWord.charAt(i);
  return n;
}


