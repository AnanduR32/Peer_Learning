import 'dart:io';
var user = new Map(); 

class Peer{
  addStacks(int id){  //Add a particular stack of interest/expertise
    
  }setMentorOrLearner(int id){  //Set whether the participant is learner or mentor
    print('Is user mentor or learner: ');
    var desig = stdin.readLineSync();
    if(desig=='learner'){
      user[id][0]='Learner';
    else
      user[id][0]='Mentor';
    }
  }setAvailableTime(){  //if person is mentor set available time

  }getMentor(){  //Takes stack and time as params and finds available mentors. 
  }main(){
    user['admin']={'mentor',{'dart'},{9,17}};
    
  }
}
