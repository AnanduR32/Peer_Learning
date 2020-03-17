import 'dart:io';

var user = new Map(); 

class Peer{
  addStacks(int id){  //Add a particular stack of interest/expertise
    print('Enter tech stack: ');
    var stack = stdin.readLineSync();
    stack.split(' ');
    user[id][1]=stack;
  }void setMentorOrLearner(var id){  //Set whether the participant is learner or mentor
    print('Is user mentor or learner: ');
    var desig = stdin.readLineSync();
    if(desig.toLowerCase()=='learner'){
      user[id][0]='learner';
    }else if(desig.toLowerCase()=='mentor')
      user[id][0]='mentor';
  }void setAvailableTime(var id){  //if person is mentor set available time
    if(user[id][0]=='mentor'){
      print('Enter working hours: ');
      var time = stdin.readLineSync();
      time.split(' ');   
      user[id][2]=time;
    }
  }void getMentor(var id){  //Takes stack and time as params and finds available mentors. 
    if(user[id][0]=='mentor'){
      print('Enter tech stack: ');
      var stack = stdin.readLineSync();
      stack.split(' ');  
      user[id][1]=stack;      
    }
  }
  int check(var id,int count){
    int flag=0;
    for(int i=0;i<=count;i++){
      if(user[i]==id){
        flag=1;
        break;
      }
    }
    if(flag==1)
      return(1);
    else
      return(0);
  }
}
void main(){
    user['admin']={'mentor',{'dart'},{9,17}};
    var id,idT;
    int count=0,c=0;
    Peer obj=new Peer();
    while(true){
      if(c==0){
        print('\nWelcome to peer learning\nChoose an option:\n\t1.Enter new user\n\t2.Update existing stack\n\t3.Set user designation\n\t4.Set Working hours\n\t5.Search for mentors in working time\n');
      }
      else
        print('Enter your choice: ');
      int ch = int.parse(stdin.readLineSync());
      assert(ch is int);
      c=1;
      switch(ch){
        case 1:
          print('Enter user id: ');
          id = stdin.readLineSync();
          user[id]={'null',{'null'},{0,0}};
          count++;
          break;
        case 2:
          print('Enter user id: ');
          idT = stdin.readLineSync();
          if(obj.check(idT,count)==1){
            obj.addStacks(idT);
          }
          else 
            print('No Such user exists\n');
          break;
        case 3:
          print('Enter user id: ');
          idT = stdin.readLineSync();
          if(obj.check(idT,count)==1){
            obj.setMentorOrLearner(idT);
          }

          else 
            print('No Such user exists\n');
          break;
        case 4:
          print('Enter user id: ');
          idT = stdin.readLineSync();
          if(obj.check(idT,count)==1){
            obj.setAvailableTime(idT);
          }
          break;
        case 5:
          print('Enter working hours: ');
          var time = stdin.readLineSync();
          time.split(' ');
             
      }
    }
  }
