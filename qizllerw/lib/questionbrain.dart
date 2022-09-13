
import 'questions.dart';
class QuestionBrain
{
  int _questionnum = 0;
  List<Questions> _myStrings = [Questions('One infected person infects about 2.5 other people.',true),
    Questions('Patients with COVID-19 can take anti-inflammatory medicine like ibuprofen, aspirin or naproxen.',true),
    Questions('Once infected with the coronavirus, it can take 2 to 14 days to show symptoms.',true),
    Questions('Hand sanitizer doesn’t kill coronavirus because it’s antibacterial, not antiviral.',false),
    Questions('Healthy people should practice social distancing.',true),
    Questions('During a shelter-in-place order, my kids can be with other kids in small groups.',false),
    Questions('Anyone with COVID-19 symptoms, regardless of their overall health, should seek testing.',false),
    Questions('A loss of smell or taste is a symptom of COVID-19.',true),
    Questions('If you can hold your breath for 10 seconds, you don’t have COVID-19.',false)];



  getquestionText()
  {
    return _myStrings[_questionnum].questins;
  }
  getquestionans()
  {
    return _myStrings[_questionnum].answer;
  }

  nextquestions()
  {
    if(_questionnum < _myStrings.length -1)
      {
        _questionnum++;
      }
  }

  int length()
  {
    return _myStrings.length;
  }

  clerar()
  {
    _questionnum =0 ;
  }
}

