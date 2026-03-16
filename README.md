# Healthy Habits Guide 🌿

## 📖 About the Project
**Healthy Habits Guide** is a beautifully designed, simple, and effective habit-tracking mobile application built to help users cultivate and maintain a healthy lifestyle. It provides a predefined set of beneficial daily routines and allows users to interactively track their completion progress throughout the day. 

Whether it's staying hydrated, getting enough sleep, or practicing mindfulness, this app serves as a gentle daily reminder to focus on personal well-being.

## ✨ Features
- **Daily Habit Tracking**: Keep track of essential daily habits including:
  - 💧 Drinking Water (8 glasses a day)
  - 🏃 Exercise (30 mins of daily activity)
  - 📖 Reading (Read 20 pages)
  - 🧘 Meditation (10 mins of mindfulness)
  - 🛌 Sleeping Well (7-8 hours of sleep)
  - 🥗 Eating Healthy (Include veggies & fruits)
- **Interactive UI**: Easily check off completed habits using checkboxes. Completed items visually update with a grayed-out background and strikethrough text.
- **Modern Material Design**: Built using Google's **Material 3** design guidelines featuring a refreshing and calming `Teal` color scheme.
- **Motivational Prompts**: Includes an interactive action button that provides immediate positive reinforcement via snackbar notifications.
- **Cross-Platform**: Designed to compile and run seamlessly on Android, iOS, Web, Windows, macOS, and Linux from a single codebase.

## 🛠️ Technology Stack
- **Framework**: [Flutter](https://flutter.dev/) (SDK `^3.11.0`)
- **Language**: [Dart](https://dart.dev/)
- **UI Design**: Material 3 (MaterialApp, Scaffold, ColorScheme)
- **State Management**: Built-in Stateful Widgets (`setState`)

## 🚀 Getting Started

### Prerequisites
To build and run this project, you will need to have the following installed on your local machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- An IDE such as [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/) with the Flutter/Dart extensions installed.

### Installation & Running

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd healthyhabitsguide
   ```

2. **Install dependencies**
   Fetch the necessary packages by running:
   ```bash
   flutter pub get
   ```

3. **Run the app**
   Connect a device, start an emulator, or run it on the web using:
   ```bash
   flutter run
   ```

## 📱 App Structure 
The core logic and UI components reside primarily in `lib/main.dart`:
- `HealthyHabitsApp`: The root stateless widget configuring the application theme (`ThemeData`) and title.
- `HabitsHomePage`: The main stateful widget holding the state of the habit list and building the UI using `ListView.builder`.
- `Habit`: A simple Dart class (data model) representing individual habits, storing properties like `name`, `description`, `isCompleted`, and `icon`.

## 🤝 Contributing
Contributions, issues, and feature requests are highly welcome! If you want to improve the **Healthy Habits Guide** by adding new features (like adding custom habits or local storage), feel free to:
1. Fork the repository
2. Create a new branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License
This project is open-source and available under the [MIT License](LICENSE).
