class Question{
  final int id,answer;
  final String question;
  final List<String> options;

  Question({ this.id, this.question, this.answer, this.options});

}
const List sample_data=[
  {
    "id":1,
    "question":
    "Flutter is an open source UI platform owned by?",
    "options":['Apple','Google','Microsoft','Facebook'],
    "answer_index":1,
  },
  {
    "id":2,
    "question":
    "While Apple was formed in California,in which western state was Microsoft founded?",
    "options":['New Mexico','Colorado','Azizona','Washington'],
    "answer_index":0,

  },
  {
    "id":3,
    "question":
    "Generally, which component of a computer draws the most power?",
    "options":['Processor','Power Supply','Hard Drive','Video Card'],
    "answer_index":3,

  },
  {
    "id":4,
    "question":
    "In CSS, which of these values CANNOT be used with the &quot;position&quot; property?",
    "options":['static','center','absolute','relative'],
    "answer_index":1,

  },
  {
    "id":5,
    "question":
    "Which programming language was developed by Sun Microsystems in 1995?",
    "options":['Python','C++','Java','Flutter'],
    "answer_index":2,

  },
  {
    "id":6,
    "question":
    "How fast is USB 3.1 Gen 2 theoretically?",
    "options":['10 Gb/s','5 Gb/s','8 Gb/s','1 Gb/s'],
    "answer_index":0,

  },
  {
    "id":7,
    "question":
    "What was the name given to Android 4.3?",
    "options":['Lollipop','Nutella','Froyo','Jelly Bean'],
    "answer_index":3,

  },
  {
    "id":8,
    "question":
    "Who won the UEFA Champions League in 2016?",
    "options":['FC Bayern Munich','Real Madrid F.C','Atletico Madrid','Manchester City F.C'],
    "answer_index":1,

  },
  {
    "id":9,
    "question":
    "What is the fourth digit of &pi;?",
    "options":['2','3','1','4'],
    "answer_index":2,

  },
  {
    "id":10,
    "question":
    "How many zeptometres are inside one femtometre?",
    "options":['1,000,000','10','10000','1,000,000,000'],
    "answer_index":0,

  },



];