# socialy

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 1.Use Layout builder to make responsive

### 1.1 Create responsive_layout.dart , mobile_layout.dart & web_layout.dart files
### 1.2 Then implement the layout builder widget to responsivr_layout file (contral the layouts by checking device's width)
```Dart
class ResponsiveLayout extends StatefulWidget {
  final Widget mobileLayout;
  final Widget webLayout;
  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.webLayout,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenMinLayout) {
          return widget.webLayout;
        } else {
          return widget.mobileLayout;
        }
      },
    );
  }
}
```
### 1.3 then add the ResponsiveLayout widget to Main.dart as Home
## 2. Setup consts (colors,styles) & reusable Widgets
