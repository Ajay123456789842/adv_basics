import 'package:adv_basics/models/quiz_question.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
   [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'Whats the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion('Which programming language is used for Flutter development?', 
  [
  'Dart',
 'Swift',
 'java',
 'Python',
  ]
  ),
  QuizQuestion('What is the purpose of the Flutter Engine?',
   [
    'To compile Dart code to machine code',
 'To provide a library of pre-built widgets',
 'To manage the state of the application',
 'To handle HTTP requests',

   ]
   ),
   QuizQuestion('Which widget is used to create a text input field in Flutter?', 
   [
    'TextField',
'Text',
'TextInput',
'InputField',
   ]
   ),

   QuizQuestion('Which widget is used to create a list in Flutter?',
    [
      'ListView',
'ListWidget',
 'ListLayout',
 'ListContainer',

    ]),
    QuizQuestion('What is the purpose of the FutureBuilder widget in Flutter?', 
    [
      'To build a widget tree based on the state of a future',
       'To handle user input',
 'To create a new widget',
'To manage the state of the application'

    ]),
    QuizQuestion(' Which widget is used to create a grid in Flutter?', 
    [
      'GridView',
 'GridWidget',
 'GridLayout',
 'GridContainer'

    ])
];
