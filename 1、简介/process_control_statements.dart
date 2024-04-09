import 'dart:core';
void main(){
  var year=1977;
  var flybyObjects=['Jupiter','Saturm','Uranus','Neptune'];
  if(year>=2001){
    print('21st century');
  }else if(year>=1901){
    print('20th centery');
  }
  for(final object in flybyObjects){
    print(object);
  }
  for(int month=1;month<=12;month++){
    print(month);
  }
  while(year<2016){
    year+=1;
  }
}