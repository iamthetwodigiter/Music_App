# Music App

A Flutter application that connects users with professional music services including production, mixing/mastering, lyrics writing, and vocals.

## 📱 App Demo
https://github.com/user-attachments/assets/3f6cfde3-8cf1-4da1-bfdf-2cf3ec0e4bd5

## 🏗️ Project Structure

The project follows a feature-first architecture for better scalability and maintainability:

```
lib/
├── core/                  # Core functionality
│   ├── router/            # App routing with GoRouter
│   └── theme/             # App theming with consistent colors & styles
├── features/              # Main features
│   └── home/              # Home feature
│       ├── models/        # Data models for music services
│       ├── repositories/  # Data sources including Firebase integration
│       ├── view/          # UI components
│       │   ├── pages/     # Screens like HomePage
│       │   └── widgets/   # Reusable UI components like ServiceTile
│       └── viewmodel/     # State management with Riverpod providers
└── main.dart              # Entry point
```

## 🧩 Architecture

This app follows the MVVM (Model-View-ViewModel) pattern for clean separation of concerns:

- **Models**: Data classes representing service information with clear typing
- **View**: UI components built with Flutter widgets, focused only on presentation
- **ViewModel**: Business logic and state management with Riverpod, handling data operations

## 🛠️ Technologies Used

- **Flutter**: UI framework for cross-platform development
- **Riverpod**: State management
- **GoRouter**: Declarative routing for navigation
- **Firebase/Firestore**: Backend services for storing and retrieving service data
- **Google Fonts**: Typography enhancement with custom fonts like Syne and Lobster

## ✨ Key Features

- Visually appealing UI with gradient backgrounds and custom tiles
- Responsive design that adapts to different screen sizes

## 🚀 Getting Started

1. Clone this repository
2. Run `flutter pub get` to install dependencies
3. Ensure you have Firebase configuration files in place
4. Run `flutter run` to start the app

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.
