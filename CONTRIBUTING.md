# Contributing to Yakiyo

Thank you for your interest in contributing to Yakiyo! This document provides guidelines and rules for contributing to the project.

## Git Commit Convention

We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification for our commit messages. The format is:

```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### Types
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code changes that neither fix bugs nor add features
- `perf`: Performance improvements
- `test`: Adding or modifying tests
- `chore`: Changes to the build process or auxiliary tools

### Examples
```
feat(auth): implement Google Sign-In
fix(pill-schedule): resolve timezone issue in schedule display
docs(readme): update project structure documentation
```

## Code Style and Formatting

1. **Dart/Flutter Style**
   - Follow the [Dart style guide](https://dart.dev/guides/language/effective-dart/style)
   - Use `flutter format` before committing
   - Maximum line length: 80 characters

2. **File Organization**
   - Feature-based architecture
   - Each feature should have its own directory with the following structure:
     ```
     feature/
     ├── data/
     │   ├── models/
     │   └── repositories/
     ├── domain/
     │   ├── entities/
     │   └── use_cases/
     └── presentation/
         ├── screens/
         ├── widgets/
         └── providers/
     ```

## Error Handling

1. **Error Types**
   - Use custom error classes in `lib/core/error/`
   - All errors should be properly logged
   - User-facing errors should be localized

2. **Error Handling Pattern**
   ```dart
   try {
     // Operation
   } on CustomException catch (e) {
     // Handle specific error
   } catch (e) {
     // Handle unexpected errors
   }
   ```

## Testing Requirements

1. **Unit Tests**
   - Required for all business logic
   - Minimum 80% code coverage
   - Test file naming: `*_test.dart`

2. **Widget Tests**
   - Required for all UI components
   - Test user interactions
   - Test error states

3. **Integration Tests**
   - Required for critical user flows
   - Test feature interactions

## Pull Request Process

1. **Before Submitting**
   - Update documentation
   - Add tests
   - Ensure all tests pass
   - Format code

2. **PR Description**
   - Clear description of changes
   - Link to related issues
   - Screenshots for UI changes
   - Test coverage report

3. **Review Process**
   - At least one approval required
   - All CI checks must pass
   - No merge conflicts

## Branch Strategy

1. **Main Branches**
   - `main`: Production-ready code
   - `develop`: Development branch

2. **Feature Branches**
   - Format: `feature/feature-name`
   - Branch from: `develop`
   - Merge back to: `develop`

3. **Release Branches**
   - Format: `release/v1.0.0`
   - Branch from: `develop`
   - Merge back to: `main` and `develop`

## Version Control

1. **Versioning**
   - Follow [Semantic Versioning](https://semver.org/)
   - Format: `MAJOR.MINOR.PATCH`

2. **Changelog**
   - Keep `CHANGELOG.md` updated
   - Document all notable changes
   - Group changes by type

## Code Review Guidelines

1. **What to Review**
   - Code quality
   - Test coverage
   - Documentation
   - Performance implications
   - Security considerations

2. **Review Comments**
   - Be constructive
   - Provide context
   - Suggest improvements
   - Reference documentation

## Getting Help

- Create an issue for bugs
- Use discussions for questions
- Join our development chat
- Check the documentation

## License

By contributing to Yakiyo, you agree that your contributions will be licensed under the project's MIT License. 