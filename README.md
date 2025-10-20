# 🎨 Flutter Animations Masterclass

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)

**A comprehensive collection of Flutter animation implementations showcasing both implicit and explicit animation techniques**

[Features](#-features) • [Installation](#-installation) • [Animations Guide](#-animations-guide) • [Examples](#-examples) • [Contributing](#-contributing)

</div>

---

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Project Structure](#-project-structure)
- [Installation](#-installation)
- [Complete Animations Guide](#-complete-animations-guide)
- [Code Examples](#-code-examples)
- [Technical Details](#-technical-details)
- [Learning Resources](#-learning-resources)
- [Contributing](#-contributing)

---

## 🌟 Overview

This project is a comprehensive demonstration of Flutter's animation capabilities, created as an educational resource for developers learning Flutter animations. It covers everything from basic implicit animations to advanced custom painting and Lottie integrations.

### Why This Project?

- **Complete Reference**: Covers 30+ different animation types
- **Best Practices**: Implements proper animation controller management
- **Clean Code**: Well-structured, documented, and easy to understand
- **Production Ready**: Includes proper lifecycle management and disposal
- **Interactive Examples**: Each animation includes working demos with controls

---

## ✨ Features

### 🎯 Core Features

- ✅ **15 Implicit Animations** - Simple, declarative animations
- ✅ **11 Explicit Animations** - Full control with AnimationController
- ✅ **Page Transitions** - Custom route animations
- ✅ **Custom Paint Animations** - Canvas-based animations with gradients
- ✅ **Lottie Integration** - Beautiful JSON-based animations
- ✅ **Clip Path Animations** - Advanced path-based effects
- ✅ **Interactive Examples** - Tom & Jerry themed animations

### 🛠️ Technical Features

- Proper state management with `StatefulWidget`
- `SingleTickerProviderStateMixin` for animation controllers
- Memory-efficient disposal patterns
- Reusable widget components
- Clean navigation architecture
- Custom page transition builder

---

## 📁 Project Structure

```
Animtations/
│
├── lib/
│   ├── home_screens/
│   │   ├── home_screen.dart              # Main navigation hub
│   │   └── screens/
│   │       ├── implicit_screen.dart      # 15 implicit animations
│   │       ├── explicit_screen.dart      # 11 explicit animations
│   │       ├── page_transition_screen.dart
│   │       └── custome_paint_screen.dart
│   │
│   ├── implicit/                         # 15 Implicit Animation Examples
│   │   ├── animated_align.dart           # Tom & Jerry chase (9 positions)
│   │   ├── animated_container.dart       # Size, color, border animations
│   │   ├── animated_default_text_style.dart
│   │   ├── animated_list.dart            # Dynamic list with insert/remove
│   │   ├── animated_opacity.dart         # Multi-element fade
│   │   ├── animated_opacity_rotation.dart # Combined animations
│   │   ├── animated_padding.dart         # Grid padding animation
│   │   ├── animated_physical_model.dart  # 3D elevation effects
│   │   ├── animated_positioned.dart      # Full chase scene (4 characters)
│   │   ├── animated_positioned_directional.dart # Directional controls
│   │   ├── animated_scale_icon.dart      # Scale + AnimatedIcon
│   │   ├── animated_slide.dart           # Offset-based sliding
│   │   ├── animated_switcher.dart        # Widget replacement with transitions
│   │   ├── cross_fade.dart               # Smooth Tom/Jerry swap
│   │   └── tween_animation_builder.dart  # Custom opacity tween
│   │
│   ├── explicit/                         # 11 Explicit Animation Examples
│   │   ├── align_transition.dart         # TopCenter → BottomCenter
│   │   ├── animated_builder.dart         # 360° rotation (with alternative)
│   │   ├── default_text_style_transition.dart
│   │   ├── fade_transition.dart          # 0→1 smooth fade
│   │   ├── indexed_stack_transition.dart # Stack-based switching
│   │   ├── positioned_transition.dart    # Tom, Jerry, Dog chase
│   │   ├── rotation_fade_transition.dart # Combined rotation + fade
│   │   ├── rotation_transition.dart      # 7.5 turns rotation
│   │   ├── scale_transition.dart         # 1x→2x scaling
│   │   ├── size_transition.dart          # Vertical/horizontal growth
│   │   └── slide_transition.dart         # Offset positioning
│   │
│   ├── lottie_package/
│   │   └── lottie_package.dart           # PageView with auto-timer
│   │
│   ├── clip_path/
│   │   └── clip_path_animation.dart      # Path-based morphing
│   │
│   ├── widgets/
│   │   ├── elevated_button.dart          # Reusable custom button
│   │   └── page_transition_builder.dart  # Custom route transitions
│   │
│   └── pages/
│       └── new_page.dart                 # Demo page for transitions
│
└── assets/
    ├── jerry.png                          # Tom & Jerry characters
    ├── tom.png
    ├── dog.png
    ├── cheese.png
    ├── bird.json                          # Lottie animations
    ├── car.json
    └── tigger.json
```

---

## 🚀 Installation

### Prerequisites

- Flutter SDK: `>=3.0.0`
- Dart SDK: `>=3.0.0`

### Setup Steps

1. **Clone the repository**
```bash
git clone https://github.com/habibaamr26/Animtations.git
cd Animtations
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Add required packages to `pubspec.yaml`**
```yaml
dependencies:
  flutter:
    sdk: flutter
  lottie: ^2.7.0  # For Lottie animations

flutter:
  assets:
    - asset/jerry.png
    - asset/tom.png
    - asset/dog.png
    - asset/cheese.png
    - asset/bird.json
    - asset/car.json
    - asset/tigger.json
  uses-material-design: true
```

4. **Run the app**
```bash
flutter run
```

---

## 🎭 Complete Animations Guide

### 1️⃣ Implicit Animations (15 Types)

Implicit animations automatically animate between values when properties change. Perfect for simple UI transitions.

#### Featured Animations:

| Animation | Description | Key Features | Use Case |
|-----------|-------------|--------------|----------|
| **AnimatedAlign** | 9-position chase animation | Tom & Jerry characters, Switch-based positioning | Character movement, UI repositioning |
| **AnimatedContainer** | Complete property animations | Size (100→200), Color (grey→teal), BorderRadius (25→18) | Dynamic UI changes, morphing containers |
| **AnimatedDefaultTextStyle** | Text style morphing | Font size (20→40), Color (black→orange), Weight | Typography transitions, emphasis |
| **AnimatedList** | Dynamic list animations | Insert/Remove with SizeTransition, GlobalKey management | Todo apps, dynamic content |
| **AnimatedOpacity** | Multi-element fade | Staggered timing (500ms, 1500ms, 2000ms) | Show/hide UI elements |
| **AnimatedOpacity + Rotation** | Combined animations | Clockwise/anti-clockwise rotation with fade | Loading states, interactive icons |
| **AnimatedPadding** | Grid padding effects | GridView with 8→20 padding animation | Responsive grids, spacing changes |
| **AnimatedPhysicalModel** | 3D elevation effects | Elevation (0→60), Material design shadows | Card depth, emphasis effects |
| **AnimatedPositioned** | 4-character chase scene | Jerry, Tom, Dog, Cheese with different timings | Complex scene choreography |
| **AnimatedPositionedDirectional** | Directional controls | Arrow-based movement, Boundary detection | Interactive positioning |
| **AnimatedScale + Icon** | Scale & IconMorphing | 1x→5x scale, AnimatedIcons.list_view | Icon transformations, zoom effects |
| **AnimatedSlide** | Offset-based movement | Offset(0,0)→Offset(1,-1) diagonal slide | Drawer animations, panel slides |
| **AnimatedSwitcher** | Widget replacement | 4 widget types, Custom transitions (Scale+Rotation) | Content switching, loading states |
| **AnimatedCrossFade** | Smooth transitions | Tom↔Jerry swap, Custom curves | Toggle states, view switching |
| **TweenAnimationBuilder** | Custom property tweens | Opacity 0→1 with custom builder | Any property animation |

**Key Benefits:**
- ✅ No controller management needed
- ✅ Automatic animation on state changes
- ✅ Simple and declarative
- ✅ Less boilerplate code
- ✅ Perfect for UI state changes

---

### 2️⃣ Explicit Animations (11 Types)

Explicit animations give you full control using `AnimationController`. Ideal for complex, choreographed animations.

#### Featured Animations:

| Animation | Description | Implementation Highlights | Duration |
|-----------|-------------|--------------------------|----------|
| **AlignTransition** | Alignment animations | TopCenter → BottomCenter, 5s forward + 2s reverse | 5s/2s |
| **AnimatedBuilder** | Custom builder pattern | 360° rotation using `2π`, Reusable child optimization | 3s |
| **DefaultTextStyleTransition** | Text style transitions | TextStyleTween, Font morphing | 2s |
| **FadeTransition** | Opacity control | Tween(0,1), Jerry image fade | 1s |
| **IndexedStackTransition** | Stack switching | Layer management (partial implementation) | - |
| **PositionedTransition** | Multi-character chase | RelativeRect for Jerry (250,250), Tom (110,110), Dog (30,30) | 1s |
| **RotationFadeTransition** | Combined effects | Rotation (0→1 turn) + Fade (1→0), Flutter logo | 2s |
| **RotationTransition** | Pure rotation | 7.5 turns, Jerry spinning | 3s |
| **ScaleTransition** | Size scaling | 1x→2x Flutter logo, Combined with SizeTransition | 2s |
| **SizeTransition** | Growth animations | Vertical axis, 0→1 sizeFactor | 1s |
| **SlideTransition** | Positional sliding | Offset(0,0)→Offset(0.5,-0.5) | 2s |

**Advanced Example - Multi-Character Chase:**
```dart
// PositionedTransition with Tom & Jerry chase scene
jerryRect = RelativeRectTween(
  begin: RelativeRect.fromLTRB(0, 0, 0, 0),
  end: RelativeRect.fromLTRB(250, 250, 0, 0),
).animate(controller);

tomRect = RelativeRectTween(
  begin: RelativeRect.fromLTRB(0, 0, 0, 0),
  end: RelativeRect.fromLTRB(110, 110, 0, 0),
).animate(controller);

dogRect = RelativeRectTween(
  begin: RelativeRect.fromLTRB(0, 0, 0, 0),
  end: RelativeRect.fromLTRB(30, 30, 0, 0),
).animate(controller);
```

**AnimatedBuilder Alternative Pattern:**
```dart
// Alternative: Positioned Transition using AnimatedBuilder
AnimatedBuilder(
  animation: object,
  builder: (context, child) {
    return PositionedDirectional(
      top: 100 * controller.value,        // 0→100
      start: -100 * controller.value + 100,  // 100→0
      width: -150 * controller.value + 200,
      height: 150 * controller.value + 50,
      child: child!,
    );
  },
  child: Container(color: Colors.blue),
)
```

---

### 3️⃣ Page Transitions

Custom route animations for seamless navigation between screens.

**PageTransitionBuilder Implementation:**
```dart
class PageTransitionBuilder extends PageRouteBuilder {
  final WidgetBuilder page;
  final RouteTransitionsBuilder Function;

  PageTransitionBuilder({
    required this.page,
    required this.Function
  }) : super(
    pageBuilder: (context, animation, secondAnimation) => page(context),
    transitionDuration: Duration(seconds: 1),
    reverseTransitionDuration: Duration(seconds: 1),
    transitionsBuilder: Function,
  );
}
```

**Usage Example:**
```dart
Navigator.push(
  context,
  PageTransitionBuilder(
    page: (context) => NewPage(),
    Function: (context, animation, secondAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  ),
);
```

---

### 4️⃣ Custom Animations

#### Custom Paint Animation
Creates canvas-based animations with gradient effects:
```dart
class MyPainter extends CustomPainter {
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
        colors: [Colors.red, Colors.blue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: radius,
        ),
      );
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      radius,
      paint
    );
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) {
    return oldDelegate.radius != radius;
  }
}
```

**Features:**
- Animated circle with linear gradient (red→blue)
- Radius interpolation (1→50)
- Repeating animation with reverse
- Optimized repainting

#### Lottie Package Integration
Beautiful, scalable animations from JSON files:

```dart
class LottiePackage extends StatefulWidget {
  // Features:
  // - PageView carousel (bird, car, tiger)
  // - Auto-advancing timer (3 seconds)
  // - BottomNavigationBar synchronization
  // - Automatic loop restart
}
```

**Timer Implementation:**
```dart
Timer.periodic(Duration(seconds: 3), (timer) {
  if (pageController.page!.toInt() < lottieList.length - 1) {
    count++;
    pageController.nextPage(
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn
    );
  } else {
    timer.cancel();
    count = 0;
    pageController.jumpToPage(0);
  }
});
```

#### ClipPath Animation
Advanced path-based shape morphing effects (placeholder for custom implementation).

---

## 💻 Code Examples

### Example 1: Animated Align with Tom & Jerry

```dart
class AnimatedAlignWidget extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedAlign(
          alignment: _getPosition(tomPosition),
          duration: Duration(milliseconds: 500),
          child: Image.asset("asset/tom.png", width: 100, height: 100),
        ),
        AnimatedAlign(
          alignment: _getPosition(tomPosition + 1),
          duration: Duration(milliseconds: 500),
          child: Image.asset("asset/jerry.png", width: 100, height: 100),
        ),
      ],
    );
  }

  AlignmentGeometry _getPosition(int position) {
    switch (position % 9) {
      case 1: return Alignment.topCenter;
      case 2: return Alignment.topRight;
      case 3: return Alignment.centerLeft;
      case 4: return Alignment.center;
      case 5: return Alignment.centerRight;
      case 6: return Alignment.bottomLeft;
      case 7: return Alignment.bottomCenter;
      case 8: return Alignment.bottomRight;
      default: return Alignment.topLeft;
    }
  }
}
```

### Example 2: Animated List with Insert/Remove

```dart
class CostumeAnimatedList extends StatefulWidget {
  final GlobalKey<AnimatedListState> key = GlobalKey();
  final List<int> items = [];

  void insertItem() {
    items.insert(items.length, items.length);
    key.currentState!.insertItem(
      items.length - 1,
      duration: Duration(milliseconds: 500)
    );
  }

  void removeItem(int index) {
    final removedItem = items[index];
    items.removeAt(index);
    key.currentState!.removeItem(
      index,
      duration: Duration(milliseconds: 500),
      (context, animation) => FadeTransition(
        opacity: animation,
        child: ListTile(
          leading: Text("New Item $removedItem"),
        ),
      ),
    );
  }
}
```

### Example 3: AnimatedSwitcher with Custom Transitions

```dart
AnimatedSwitcher(
  switchInCurve: Curves.bounceInOut,
  switchOutCurve: Curves.easeOut,
  duration: Duration(milliseconds: 500),
  child: widgets[counter % widgets.length],
  transitionBuilder: (child, animation) {
    return ScaleTransition(
      scale: animation,
      child: RotationTransition(
        turns: animation,
        child: child,
      ),
    );
  },
)
```

### Example 4: Positioned Directional with Controls

```dart
class AnimatedPositionedDirectional extends StatefulWidget {
  double start = 0;
  double top = 0;

  void moveLeft() {
    start = max(0, start - 50);
  }

  void moveRight() {
    start = start + 50;
    if (start > MediaQuery.of(context).size.width) start = 0;
  }

  void moveDown() {
    top = top + 50;
    if (top > MediaQuery.of(context).size.height) top = 0;
  }

  Widget build(BuildContext context) {
    return AnimatedPositionedDirectional(
      top: top,
      start: start,
      duration: Duration(milliseconds: 500),
      child: Image.asset("asset/jerry.png", width: 100, height: 100),
    );
  }
}
```

---

## 🔧 Technical Details

### Animation Controller Best Practices

1. **Always use `SingleTickerProviderStateMixin`** for single controller:
```dart
class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
}
```

2. **Proper initialization in `initState`**:
```dart
@override
void initState() {
  super.initState();
  controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  );
  animation = Tween<double>(begin: 0, end: 1).animate(controller);
}
```

3. **Always dispose controllers** to prevent memory leaks:
```dart
@override
void dispose() {
  controller.dispose();
  super.dispose();
}
```

4. **Use `late` keyword** for controller initialization

### Performance Optimization Tips

✅ **Const Constructors**: Used throughout for immutable widgets
✅ **Reusable Components**: `CostumeElevatedButton` reduces rebuilds
✅ **Efficient Repainting**: `shouldRepaint` implementation in CustomPainter
✅ **Child Optimization**: AnimatedBuilder child parameter prevents rebuilds
✅ **Proper Keys**: GlobalKey usage for AnimatedList state management

### Common Patterns

**Toggle Animation:**
```dart
ElevatedButton(
  onPressed: () {
    controller.value == 0
      ? controller.forward()
      : controller.reverse();
    setState(() {});
  },
  child: Text("Animate"),
)
```

**Repeating Animation:**
```dart
controller = AnimationController(
  vsync: this,
  duration: Duration(seconds: 2),
)..repeat(reverse: true);
```

---

## 📚 Learning Resources

### Flutter Animation Documentation
- [Introduction to Animations](https://docs.flutter.dev/ui/animations)
- [Implicit Animations](https://docs.flutter.dev/ui/animations/implicit-animations)
- [Explicit Animations](https://docs.flutter.dev/ui/animations/tutorial)
- [AnimatedBuilder](https://api.flutter.dev/flutter/widgets/AnimatedBuilder-class.html)
- [Custom Painters](https://api.flutter.dev/flutter/rendering/CustomPainter-class.html)

### Concepts Covered

| Concept | Description | Examples in Project |
|---------|-------------|---------------------|
| **Tweens** | Interpolation between values | All explicit animations |
| **Curves** | Easing functions | `Curves.easeInOutExpo`, `bounceInOut` |
| **AnimationController** | Lifecycle management | 11 explicit examples |
| **SingleTickerProviderStateMixin** | Provides Ticker | All explicit widgets |
| **AnimatedBuilder** | Efficient rebuilds | Rotation, Positioned alternative |
| **Custom Painters** | Canvas API graphics | Gradient circle animation |
| **Lottie** | JSON animations | PageView carousel |
| **GlobalKey** | State access | AnimatedList management |

### Animation Timing
- **Implicit**: 500ms - 2000ms (automatic)
- **Explicit**: 1s - 5s (controlled)
- **Page Transitions**: 1s (both directions)
- **Lottie Auto-advance**: 3s per slide

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

### How to Contribute

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/AmazingAnimation
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add AnimatedContainer with gradient'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/AmazingAnimation
   ```
5. **Open a Pull Request**

### Ideas for Contributions

- [ ] Add physics-based animations (spring, gravity)
- [ ] Implement gesture-driven animations (drag, swipe)
- [ ] Add 3D transformation examples
- [ ] Create video tutorials for each animation
- [ ] Add unit tests for animation states
- [ ] Implement dark mode support
- [ ] Complete ClipPath animation examples
- [ ] Add Hero animations between screens
- [ ] Create animation performance benchmarks
- [ ] Document animation curves comparison

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👩‍💻 Author

**Habiba Amr**
- GitHub: [@habibaamr26](https://github.com/habibaamr26)
- LinkedIn: [Add your LinkedIn profile]
- Portfolio: [Add your portfolio if available]

---

## 🌟 Acknowledgments

- Flutter team for the amazing animation framework
- Lottie team for beautiful JSON animations
- Tom & Jerry for inspiring the character animations 🐱🐭

---

## ⭐ Show Your Support

If you found this project helpful, please consider:

- ⭐ **Star** this repository
- 🔄 **Fork** it to experiment
- 📝 **Share** it with other Flutter developers
- 🐛 **Report bugs** via issues
- 💡 **Suggest features** via discussions

---

## 📊 Project Stats

- **Total Animations**: 30+
- **Code Files**: 40+
- **Animation Types**: Implicit, Explicit, Custom, Lottie
- **Lines of Code**: ~2,500+
- **Asset Files**: 7 (4 images + 3 Lottie JSON)
- **Reusable Components**: 2 (Button, PageTransition)

---

<div align="center">

**Happy Animating! 🎨✨**

Made with ❤️ and Flutter

*"Animation is not the art of drawings that move, but the art of movements that are drawn."*

</div>
