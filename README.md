# Yakiyo - Medication Management App

Yakiyo is a Flutter-based medication management application that helps users track and manage their medication schedules effectively.

## Features

- Clean Architecture implementation
- Medication schedule management
- User authentication
- Device status monitoring
- Event logging
- Intake tracking

## Project Structure

```
lib/
├── common/          # Shared widgets and utilities
├── core/           # Core functionality and constants
├── features/       # Feature-based modules
│   ├── auth/       # Authentication feature
│   ├── device_status/
│   ├── event_log/
│   ├── home/
│   ├── intake_log/
│   ├── pill_schedule/
│   └── settings/
└── services/       # Service layer implementations
```

## Getting Started

1. Clone the repository
```bash
git clone https://github.com/ShaunCleanCode/yakiyo.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Development Guidelines

Please refer to [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines on:
- Git commit conventions
- Code style and formatting
- Error handling
- Testing requirements
- Pull request process

## Tech Stack

- Flutter
- Firebase
- Clean Architecture
- Provider for state management

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
