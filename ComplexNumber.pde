class ComplexNumber{
  
  float a;
  float b;
  
  public ComplexNumber(float a, float b){
    this.a = a;
    this.b = b;
  }
  
  ComplexNumber multiplyThem(ComplexNumber n){
    float t;
    float v;
    t = a * n.a - b * n.b;
    v = 2 * a * b;
    return new ComplexNumber(t,v);
  }
  ComplexNumber addThem(ComplexNumber n){
    float t;
    float v;
    t = a + n.a;
    v = b + n.b;
    return new ComplexNumber(t,v);
  }
  
}
