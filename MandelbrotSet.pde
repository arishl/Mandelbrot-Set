ComplexNumber hold;

void setup(){
  size(1000,1000);
  background(5,60,8);  
}

void draw(){
  translate(width/2,height/2);
  for(int i = -1000; i < 1000; i=i+1){
    for(int u = -1000; u < 1000; u=u+1){
      hold = new ComplexNumber(i/100.0,u/100.0);
      if(check(hold)){
        stroke(244,35,40);
        point(hold.a*300,hold.b*300);
      }
    }
  }
}

boolean check(ComplexNumber z){
  ComplexNumber store = new ComplexNumber(0,0);  
  for(int i = 0; i < 1000; i++){
    store = store.multiplyThem(store).addThem(z);
    if(store.a+store.b>=4){
      return false;
    }
  }  
  return true;
}
