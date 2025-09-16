# 💰 FlowMate

**FlowMate** is a simple personal Flutter app to track money given and spent with friends. 💸  
Keep track of who owes what with ease - all your data stays private and offline! 🔒

---

## ✨ Features

- 👥 **Add friends** with unique IDs
- 💵 **Record transactions** (+/-) with reason and date  
- ⚖️ **See balance** per friend at a glance
- 📱 **Offline storage** with Hive - data persists across app restarts
- 🎯 **Simple & personal** - built for ease of use

---

## 🛠️ Dependencies

- 🚀 Flutter 3.x
- 📦 Hive & Hive Flutter
- 🆔 uuid

---

## 🚀 Getting Started

### 1. **📥 Clone the repo:**
```bash
git clone <your-repo-url>
cd FlowMate
```

### 2. **📦 Install packages:**
```bash
flutter pub get
```

### 3. **⚡ Generate Hive adapters:**
```bash
dart run build_runner build --delete-conflicting-outputs
```

### 4. **🎯 Run the app:**
```bash
flutter run
```

---

## 📲 Build APK

```bash
flutter build apk --release
```

📁 The APK will be located at: `build/app/outputs/flutter-apk/app-release.apk`  
📱 Install it directly on your Android device (Android 9+ supported)

---

## 📋 Notes

- 🔒 **Personal use only** - keep your money tracking private
- 🗑️ **Reset data**: Uninstall the app to clear all data  
- 📱 **Compatibility**: Works on Android 9 and above
- 💾 **Data**: All information stored locally on your device

---

## 📄 License

This project is private and not intended for publishing. 🏠  
Use freely for personal purposes! ✨

---

**Made with ❤️ for personal finance tracking**
