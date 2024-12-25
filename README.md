# Bookly - Flutter App

Bookly is a modern and intuitive Flutter app designed to showcase books related to computer science and programming. The app follows the **MVVM architecture** and provides a seamless user experience with features like searching, detailed book views, and category suggestions.

---

## 📱 Features

- **Splash Screen** - Displays an engaging splash screen when the app launches.
- **Featured Books** - Shows a horizontal list of books related to **computer science**.
- **Newest Books List** - Displays the newest books related to **programming** with:
  - Book cover image
  - Title
  - Author name
  - Rating and rating count
- **Book Details Page** - Provides detailed information about a selected book along with related categories displayed below.
- **Search Functionality** - Allows users to search for books using a **text field**.
  - Displays related results in a vertical list similar to the newest books list.
- **Google Books API Integration** - Fetches book data dynamically using the **Google Books API**.
- **Modern UI** - Styled with **Google Fonts** for an elegant look.

---

## 🛠️ Technologies Used

- **Flutter** - Framework for building cross-platform mobile applications.
- **Cubit (State Management)** - Simplifies state management with **flutter_bloc**.
- **Google Books API** - Fetches book data dynamically.
- **Dio** - Handles HTTP requests.
- **Get It** - Dependency injection.
- **Go Router** - Simplifies navigation.
- **Cached Network Image** - Efficient image caching.
- **Google Fonts** - Custom font styling.
- **Font Awesome Flutter** - Icons for UI enhancements.
- **Equatable** - Simplifies value comparisons.
- **Dartz** - Functional programming utilities.
- **URL Launcher** - Opens external links.

---

## 🛠️ Architecture

Bookly is built using the **MVVM (Model-View-ViewModel)** architecture, which ensures:
- Clean and maintainable code structure.
- Clear separation of concerns.
- Improved scalability and testability.

---

## 🎥 Demo

<div align="center">

https://github.com/user-attachments/assets/0b3cba60-163d-4677-8bf2-554ed135180c


</div>

---

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-repo/bookly.git
   ```
2. **Navigate to the project directory:**
   ```bash
   cd bookly
   ```
3. **Install dependencies:**
   ```bash
   flutter pub get
   ```
4. **Run the app:**
   ```bash
   flutter run
   ```