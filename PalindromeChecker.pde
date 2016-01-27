public void setup(){
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(removeNonAlpha(lines[i]))==true){
      println(lines[i] + " IS a palidrome.");
    }
    else{
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word){
  int f=0;
  int b=word.length()-1;
  while(f-b<0){
    if(!word.substring(f,f+1).equals(word.substring(b,b+1))){
      return false;
    }
    f++;
    b--;
  }
  return true;
}
public String removeNonAlpha(String word){
  String newString=new String("");
  for(int i=0;i<word.length();i++){
    if(Character.isLetter(word.charAt(i))){
      newString+=word.substring(i,i+1);
   }
  }
  return newString.toLowerCase();
}

