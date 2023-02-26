import 'dart:io';

void main(List<String> arguments) {
  // data processing in dart

  /*
  we need a command line argument that represents the path to a CSV file
  that we want to process

  // CSV : Comma Separated Values

  we can get all the command line arguments by adding an argument to the 
  main method itself
  */

  /*
  And since this program needs to process an input file,
  it is invalid to run the program without any arguments.
  So if we call this program without arguments,
  we would like it to fail gracefully
  */
  if (arguments.isEmpty) {
    print('Usage: dart totals.dart <inputFile.csv>');
    // program should terminate immediately when called without arguments
    exit(1);
  }

  final inputFile = arguments.first;
  // read line by line
  /*
  So what this command does is to create a handle or reference to the file
  using the value that was passed as an argument. And then it reads all the 
  contents in one go, and returns them as a List of Strings
  */
  final lines = File(inputFile).readAsLinesSync();

  // create an empty map
  final totalDurationByTag = <String, double>{};
  //  we want to remove the header from our list of lines
  lines.removeAt(0);

  var totalDuration = 0.0;

  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('""', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('""', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
    totalDuration += duration;
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    print('$tag: ${durationFormatted}h');
  }

  print('Total for all the tags: ${totalDuration.toStringAsFixed(1)}h');

  /*
  So if we wanted to calculate the total time spent, we would have to extract
  the duration value from each line. And then add all the durations together.
  However, the purpose of this tool is to gives a breakdown of all the 
  time spent on each activity type
  */

  /*
  Okay, so given a list of lines that represent the contents of our CSV file.
  We can declare a variable called durationByTag, and this would be an 
  empty map. Then, we can remove the first line, as this only contains 
  the header for the entire file. Then, we can iterate through all the lines
  with a for loop. And for each line, we can get all the values by splitting
  the line using a comma as the separator. And then we read out the duration
  and the tag values which can be found at index 3 and 5. In fact, if we count
  from the left, we can see the job has index 0, clocked in and clocked 
  out have index 1 and 2, duration has index 3 and so on) And we can read 
  each column value by index. After this, we can update the durationByTag by 
  adding the duration value. And once the loop is complete, we can print the 
  duration for each tag.
  */
}
