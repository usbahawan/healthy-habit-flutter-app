import 'package:flutter/material.dart';

void main() {
  runApp(const HealthyHabitsApp());
}

class HealthyHabitsApp extends StatelessWidget {
  const HealthyHabitsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthy Habits Guide',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HabitsHomePage(),
    );
  }
}

class HabitsHomePage extends StatefulWidget {
  const HabitsHomePage({super.key});

  @override
  State<HabitsHomePage> createState() => _HabitsHomePageState();
}

class Habit {
  String name;
  String description;
  bool isCompleted;
  final IconData icon;

  Habit({
    required this.name,
    required this.description,
    this.isCompleted = false,
    required this.icon,
  });
}

class _HabitsHomePageState extends State<HabitsHomePage> {
  final List<Habit> habits = [
    Habit(name: 'Drink Water', description: '8 glasses a day', icon: Icons.local_drink),
    Habit(name: 'Exercise', description: '30 mins of daily activity', icon: Icons.directions_run),
    Habit(name: 'Read', description: 'Read 20 pages', icon: Icons.book),
    Habit(name: 'Meditate', description: '10 mins of mindfulness', icon: Icons.self_improvement),
    Habit(name: 'Sleep well', description: '7-8 hours of sleep', icon: Icons.bedtime),
    Habit(name: 'Eat Healthy', description: 'Include veggies & fruits', icon: Icons.restaurant),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Healthy Habit Guide'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        elevation: 2,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: habits.length,
        itemBuilder: (context, index) {
          final habit = habits[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              leading: CircleAvatar(
                backgroundColor: habit.isCompleted 
                    ? Colors.teal.withOpacity(0.2) 
                    : Colors.grey.withOpacity(0.2),
                child: Icon(
                  habit.icon, 
                  color: habit.isCompleted ? Colors.teal : Colors.grey,
                ),
              ),
              title: Text(
                habit.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  decoration: habit.isCompleted ? TextDecoration.lineThrough : null,
                ),
              ),
              subtitle: Text(habit.description),
              trailing: Checkbox(
                value: habit.isCompleted,
                activeColor: Colors.teal,
                onChanged: (bool? value) {
                  setState(() {
                    habit.isCompleted = value ?? false;
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Great job tracking your habits! Keep it up!')),
          );
        },
        tooltip: 'Motivate Me',
        child: const Icon(Icons.thumb_up),
      ),
    );
  }
}