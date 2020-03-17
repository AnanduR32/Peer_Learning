import 'dart:io';
var user = new Map(); 

class Peer{
  addStacks(int id){  //Add a particular stack of interest/expertise
    
  }setMentorOrLearner(int id){  //Set whether the participant is learner or mentor
    print('Is user mentor or learner: ');
    var desig = stdin.readLineSync();
    if(desig.toLowerCase()=='learner'){
      user[id][0]='learner';
    }else if(desig.toLowerCase()=='mentor')
      user[id][0]='mentor';
    }
  }setAvailableTime(int id){  //if person is mentor set available time
    if(user[id][0]=='mentor'){
      print('Enter working hours: ');
      var time = stdin.readLineSync();
      time.split(' ');                     
    }
  }getMentor(){  //Takes stack and time as params and finds available mentors. 
  }main(){
    user['admin']={'mentor',{'dart'},{9,17}};
    
  }
}
