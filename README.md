# Logoipsum - Login Screen (Flutter + GetX)

This is a beautifully styled login screen built using **Flutter** and **GetX** for state management. It was developed as part of an interview task to demonstrate Flutter architecture, state handling, UI design, and proper project structure.

---

## Features

- Clean and responsive login UI
- GetX state management
- Show/Hide password toggle
- Form validation with custom validators
- Google & Facebook login buttons (non-functional placeholders)
- Remember Me checkbox
- Forgot password link
- Custom design system: colors, text styles, shadows
- Fully modular and reusable widgets
- GetX snackbar feedback for actions

---

## Tech Stack

- **Flutter 3+**
- **GetX** – State management & dependency injection
- **Flutter SVG** – For vector icons
- **Custom design system** – Color palette, typography, shadows

---

##  Project Structure
    lib/
    ├── core/
    │ ├── utils/
    │ │ ├── app_colors.dart
    │ │ ├── text_styles.dart
    │ │ └── validators.dart
    | ├── data/
    |    ├── models/
    |       ├── (model content)
    |       └── services/
    |          └── (services content)
    ├── presentation/
    │ ├── controllers/
    │ │ └── login_controller.dart
    │ ├── pages/
    │ │ └── login_page.dart
    │ └── widgets/
    │ └── (Reusable components)
    └── main.dart

##  How to Run

1. **Clone the repo**
   ```bash
   git clone https://github.com/your-username/logoipsum.git
   cd logoipsum

2. **Install packages**
    ```bash
   flutter pub get

3. **Run the app**
   ```bash
   flutter run

## Screenshot

![WhatsApp Image 2025-07-08 at 19 37 36_d42f74ed](https://github.com/user-attachments/assets/74d7750c-7f0f-4f9d-bc54-23a0a3ec44e6)


## Acknowledgment
  Task created as part of a technical assessment.
  Design and implementation by @ToochiDennis
