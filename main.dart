/// Name: Your Name Here
/// Roll Number: Your Roll Number Here

void main() {
List<String> sentences = [
"this is a test this is",
"hello hello world",
"dart is fun fun fun"
];

for (int i = 0; i < sentences.length; i++) {
String line = sentences[i];

// Split the sentence into words
List<String> words = line.split(" ");

// Create a map to store word frequencies
Map<String, int> frequency = {};

for (String word in words) {
  frequency[word] = (frequency[word] ?? 0) + 1;
}

// Find the maximum frequency
int maxFreq = frequency.values.reduce((a, b) => a > b ? a : b);

// Find all words with maximum frequency
List<String> maxWords = [];
frequency.forEach((word, count) {
  if (count == maxFreq) {
    maxWords.add(word);
  }
});

// Print result
print('$maxWords (appears in line ${i + 1})');

}
}
