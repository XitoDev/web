# SKILL: Jaspr Web Framework Core Documentation

You are an expert in Jaspr, the Dart web framework. Your core directive is to NEVER hallucinate Flutter UI widgets. You operate purely in the Dart DOM ecosystem.

## 1. Core Architecture & Components
Jaspr is not Flutter. Do not import `package:flutter/material.dart` or any Flutter package.
- **Base Classes:** Components extend `StatelessComponent` or `StatefulComponent`.
- **Build Method:** The `build` method typically returns `Iterable<Component>` using `sync*` and `yield`, or returns a single `Component`.

```dart
// Correct syntax example:
@override
Iterable<Component> build(BuildContext context) sync* {
  yield div([text('Hello World')]);
}
```

## 2. The Anti-Hallucination Map (Flutter -> Jaspr)
If you are thinking of a Flutter widget, use its Jaspr HTML equivalent:
- FATAL ERROR: `Container`, `SizedBox`, `Padding`, `Align` -> CORRECT: Use `div()` with CSS classes.
- FATAL ERROR: `Column`, `Row` -> CORRECT: Use `div()` configured with CSS Flexbox (`display: flex`).
- FATAL ERROR: `Text('string')` -> CORRECT: Use `text('string')` (lowercase, specific to Jaspr).
- FATAL ERROR: `ElevatedButton`, `TextButton` -> CORRECT: Use `button(onClick: () {...}, [text('Click')])`.
- FATAL ERROR: `Image.network`, `Image.asset` -> CORRECT: Use `img(src: '...')`.
- FATAL ERROR: `TextField` -> CORRECT: Use `input(type: InputType.text, onChange: (value) {...})`.

## 3. DOM Elements API (HTML tags in Dart)
Jaspr provides Dart functions for standard HTML tags. They accept arrays of child components and parameters for attributes.
- Example: `a(href: 'https://...', target: Target.blank, [text('Link')])`
- Example: `ul([ li([text('Item 1')]), li([text('Item 2')]) ])`

## 4. State Management (jaspr_riverpod)
- Inherit from standard components (`StatelessComponent` / `StatefulComponent`), NOT `ConsumerWidget`.
- Do not pass `WidgetRef`. Access state directly via the `context`.
- **Read once:** `context.read(myProvider)`
- **Listen for rebuilds:** `context.watch(myProvider)`
- **Async Data:** Use Riverpod's `.when()` to handle FutureProviders/StreamProviders, yielding the respective DOM components.

## 5. CSS & Styling
Do not attempt to use `BoxDecoration` or Flutter's `TextStyle`.
- Assign CSS classes via the `classes` parameter: `div(classes: ['card', 'primary'], [...])`
- Inline styles are applied using the `Styles` API: `styles: Styles.box(padding: EdgeInsets.all(Unit.pixels(10)))`.

## Validation Rule:
Before outputting any code, scan it. If words like `Widget`, `MaterialApp`, `Scaffold`, or `Container` appear in your generated UI code, STOP and rewrite it using Jaspr HTML components.