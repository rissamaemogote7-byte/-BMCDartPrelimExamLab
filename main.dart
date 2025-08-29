import 'dart:io';

void main() {
  ///The purpose of this program is to determine or evaluate the grades of the Students
  print("=== Student Grade Evaluator ===");

  try {
    //Display name
    stdout.write("Enter your name: ");
    String? name = stdin.readLineSync();
    print(" ");

    // Prompt for assignment score
    stdout.write('Enter assignment score: ');
    double assignmentWeight = double.parse(stdin.readLineSync()!);

    print(" ");
    // Prompt for midterm score
    stdout.write('Enter midterm score: ');
    double midtermWeight = double.parse(stdin.readLineSync()!);

    print(" ");
    // Prompt for final exam score
    stdout.write('Enter final exam score: ');
    double finalExamWeight = double.parse(stdin.readLineSync()!);
    print(" ");
    print('\nAll inputs are valid!');
    print(
      'Assignment: $assignmentWeight, Midterm: $midtermWeight, Final Exam: $finalExamWeight',
    );
    print(" ");

    //Weights for different components
    double finalGrade =
        (assignmentWeight = 0.2) *
        (midtermWeight = 0.3) *
        (finalExamWeight = 0.5) /
        3;

    print("\n=== Results ===");
    print("Assignment: ${assignmentWeight.toStringAsFixed(1)}");
    print("Midterm: ${midtermWeight.toStringAsFixed(1)}");
    print("Final Exam: ${finalExamWeight.toStringAsFixed(1)}");
    print("Your Total Grade is: $finalGrade");

    String passingGradeThreshold;
    if (finalGrade >= 60.0) {
      passingGradeThreshold = "Passed";
    } else {
      passingGradeThreshold = "Failed";
    }

    print("Final Grade: $passingGradeThreshold");
  } catch (e) {
    print('\nInvalid input. Please enter numeric values only.');
    exit(1); // Exit the program with error code
  }