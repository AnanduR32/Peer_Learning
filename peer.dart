import 'dart:io';

var user = new Map(); 

class Peer{
  addStacks(int id){  //Add a particular stack of interest/expertise
    print('Enter tech stack: ');
    var stack = stdin.readLineSync();
    stack.split(' ');
    user[id]['stack']=stack;
  }void setMentorOrLearner(var id){  //Set whether the participant is learner or mentor
    print('Is user mentor or learner: ');
    var desig = stdin.readLineSync();
    if(desig.toLowerCase()=='learner'){
      user[id]['desig']='learner';
    }else if(desig.toLowerCase()=='mentor')
      user[id]['desig']='mentor';
  }void setAvailableTime(var id){  //if person is mentor set available time
    if(user[id]['desig']=='mentor'){
      print('Enter working hours: ');
      var time = stdin.readLineSync();
      time.split(' ');   
      user[id]['hours']=time;
    }
  }void getMentor(var id){  //Takes stack and time as params and finds available mentors. 
    if(user[id]['desig']=='mentor'){
      print('Enter tech stack: ');
      var stack = stdin.readLineSync();
      stack.split(' ');  
      user[id]['stack']=stack;      
    }
  }
  int check(var idT,int count){
    int flag=0,i;
    for(i=0;i<count;i++){
      if(user[i]['id']==idT){
        flag=1;
        break;
      }
    }
    if(flag==1)
      return(i);
    else
      return(-1);
  }
}
void main(){
    user[0]={'desig':'mentor','stack':{'dart'},'hours':{9,17},'id':'admin'};
    user[1]={'desig':'learner','stack':{'flutter'},'hours':{9,18},'id':'student'};
    user[2]={'desig':'learner','stack':{'java'},'hours':{9,15},'id':'worker'};
    var id,idT;
    int count=1,c=0,ret,j;
    Peer obj=new Peer();
    print(user[0]['id']);
    while(true){
      ret=-1;
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
          user[count]={'desig':'null','stack':{'null'},'hours':{0,0},'id':id};
          print(user[count]);
          count++;
          break;
        case 2:
          print('Enter user id: ');
          id = stdin.readLineSync();
          ret=obj.check(id,count);
          if(ret!=-1){
            obj.addStacks(ret);
          }
          else 
            print('No Such user exists\n');
          break;
        case 3:
          print('Enter user id: ');
          id = stdin.readLineSync();
          ret=obj.check(id,count);
          if(ret!=-1){
            obj.setMentorOrLearner(ret);
          }
          else 
            print('No Such user exists\n');
          break;   
        case 4:
          print('Enter user id: ');
          id = stdin.readLineSync();
          ret=obj.check(id,count);
          if(ret!=-1){
            obj.setAvailableTime(ret);
          }
          else 
            print('No Such user exists\n');
          break;   
        case 5:
          print('Enter working hours: ');
          var timer = stdin.readLineSync();
          timer.split(' ');
          var times;
          for(j=0;j<count;j++){
            times=user[j]['time'];
            if((times[0]>timer[0])&(times[1]<timer[1]))
              print('\nMentor Available: ');
              print(user[j].id);
          }
      }
    }
  }
