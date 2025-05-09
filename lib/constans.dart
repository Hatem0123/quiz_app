import 'package:quiz_pr1/models/quiz_model.dart';

List<Quiz_model>questions = [
  Quiz_model(
    text: 'What are the main building blocks of Flutter UIs?',
    answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  Quiz_model(text: 'How are Flutter UIs built?',answers:  [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  Quiz_model(
    text: 'What\'s the purpose of a StatefulWidget?',
    answers:  [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  Quiz_model(
    text: 'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers:  [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  Quiz_model(text:'What happens if you change data in a StatelessWidget?',
    answers:  [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  Quiz_model(
    text:  'How should you update data inside of StatefulWidgets?',
    answers:  [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
];