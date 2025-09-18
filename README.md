<div align="center">

# ☕ Smart Ahwa Manager

**A Flutter-based coffee shop order management system** designed with clean architecture principles, Object-Oriented Programming (OOP), and SOLID design patterns for scalability and maintainability.

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![Material Design](https://img.shields.io/badge/Material%20Design-757575?style=for-the-badge&logo=material-design&logoColor=white)](https://material.io/)

</div>

---

## 🎯 Overview

Smart Ahwa Manager is a lightweight yet robust café/ahwa order management system built with Flutter. It demonstrates clean architecture principles, proper separation of concerns, and follows industry best practices for maintainable and scalable mobile applications.

### ✨ Key Features

- **📊 Dashboard** - Real-time order management with pending orders display
- **➕ Add Orders** - Simple form for creating new customer orders
- **📈 Sales Reports** - Analytics and reporting for business insights
- **🏗️ Clean Architecture** - Feature-based structure with clear separation of concerns


---

## 🏗️ Architecture & Design Patterns

### 📁 Project Structure

```
lib/
├── core/                           # Shared modules and utilities
│   ├── helper/
│   │   └── extension.dart         # Navigation extensions
│   └── routes/                    # Centralized routing
│       ├── app_router.dart        # Route configuration
│       └── routes.dart            # Route constants
├── features/                      # Feature-based modules
│   ├── dashboard/                 # Order management feature
│   │   ├── logic/
│   │   │   └── order_services.dart # Business logic layer
│   │   ├── model/
│   │   │   ├── orders_model.dart  # Domain models
│   │   │   └── drinks_type.dart   # Enums and types
│   │   └── views/
│   │       ├── screens/           # Screen widgets
│   │       └── widgets/           # Reusable UI components
│   └── report/                    # Reporting feature
│       └── views/screens/
└── ahwa_manager.dart              # Main application entry point
```

### 🧩 Object-Oriented Programming (OOP) Principles


#### 1. **Abstraction**

```dart
abstract class OrderServices {
  void addOrder(OrdersModel orderModel);
  List<OrdersModel> getAllPendingOrders();
  void isCompleted(String customerId);
  List<OrdersModel> gatAllOrders();
}
```


---

## 🎯 SOLID Principles Implementation

### 1. **Single Responsibility Principle (SRP)**

Each class has one clear responsibility:

- **`OrdersModel`** - Only handles order data and state
- **`OrderServices`** - Only manages order business logic
- **`OrderListItem`** - Only handles order display
- **`AppRouter`** - Only handles navigation routing



### 2. **Liskov Substitution Principle (LSP)**

Subclasses can replace their base classes:

```dart
class Orders implements OrderServices {
  // Can be substituted anywhere OrderServices is expected
  // Maintains the same contract as the abstract class
}
```

### 3. **Interface Segregation Principle (ISP)**

Interfaces are focused and specific:

```dart
abstract class OrderServices {
  // Only contains methods that are actually needed
  // No unnecessary methods that implementing classes don't use
}
```
---

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK (3.0 or higher)
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/smart_ahwa_manager.git
   cd smart_ahwa_manager
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Building for Production

```bash
# Android APK
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

---

## 🎨 UI/UX Features

- **Material Design 3** components and theming
- **Responsive design** for different screen sizes
- **Intuitive navigation** with clear visual hierarchy
- **Real-time updates** with state management
- **Accessibility** support with proper semantics

---

## 🔧 Technical Stack

- **Framework**: Flutter 3.x
- **Language**: Dart 3.x
- **State Management**: ValueNotifier (in-memory)
- **Navigation**: Custom router implementation
- **Architecture**: Clean Architecture + Feature-based structure
- **Design Patterns**: Singleton, Factory, Observer, Strategy, Extension

---


---

