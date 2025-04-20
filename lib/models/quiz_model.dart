class Quiz_model{

  final String? text;
  final List<String?>? answers;

 const Quiz_model({this.text, this.answers});


 List get_shuffled_ansers(){
    final sh_list = List.of(answers as Iterable);
    sh_list.shuffle();
   return sh_list;
 }
}