class Complex{
  float real;
  float image;
  Complex(float realNum, float imageNum){
    this.real = realNum;
    this.image = imageNum;
  }
  
  Complex plus(Complex op){
    this.real += op.real;
    this.image += op.image;
    return new Complex(this.real,this.image);
  }
  
  Complex minus(Complex op){
    this.real -= op.real;
    this.image -= op.image;
    return new Complex(this.real,this.image);
  }
  
  Complex cross(float num){
    this.real = this.real*num;
    this.image = this.image *num;
    return new Complex(this.real,this.image);
  }
  Complex divine(float num){
    this.real = this.real/num;
    this.image = this.image/num;
    return new Complex(this.real,this.image);
  }
  void showNum(){
    if(this.image>0){
      println(str(this.real)+"+"+str(this.image)+"i");
    }else if(this.image<0){
      println(str(this.real)+str(this.image)+"i");
    }else{
      println(str(this.real)+" + 0i");
    }
    
  }
}
Complex a = new Complex(5,1);
Complex b = new Complex(-2,0);
Complex c;
c = a.plus(b);
c.showNum();
b = c.cross(2);
b.showNum();
