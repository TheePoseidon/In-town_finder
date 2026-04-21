# Kigali City Finder

A Flutter mobile application that helps Kigali residents locate and navigate to essential public services and lifestyle destinations across the city.

## Features

- **8 place categories** — Hospitals, Police Stations, Libraries, Utility Offices, Restaurants, Cafés, Parks, and Tourist Attractions
- **Interactive map** — OpenStreetMap-powered map with colour-coded pins for every location; tap a pin to preview, tap again for full details
- **Category filter** — filter map pins or browse a dedicated list per category
- **Place details** — address, opening hours, phone number, and an embedded mini-map for every place
- **Get Directions** — one tap opens Google Maps with turn-by-turn navigation to any place
- **Click-to-call** — direct phone dialling for places that have a contact number
- **Global search** — search across all 30+ locations by name, address, or description

## Screenshots

| Home | Map | Place Detail |
|------|-----|--------------|
| Category grid with hero header | Live map with filter chips | Mini-map, directions & call button |

## Tech Stack

| Layer | Technology |
|-------|------------|
| Framework | Flutter (Dart) |
| Maps | [flutter\_map](https://pub.dev/packages/flutter_map) + OpenStreetMap tiles |
| Coordinates | [latlong2](https://pub.dev/packages/latlong2) |
| Navigation | [url\_launcher](https://pub.dev/packages/url_launcher) → Google Maps |
| State | Flutter `setState` (local, lightweight) |

## Project Structure

```
lib/
├── main.dart                    # App entry point and theme
├── models/
│   ├── place.dart               # Place data model
│   └── category_info.dart       # Category definitions (icon, colour, label)
├── data/
│   └── kigali_places.dart       # Static dataset of 30+ Kigali locations
└── screens/
    ├── home_screen.dart         # Home — category grid
    ├── category_screen.dart     # Filterable place list per category
    ├── place_detail_screen.dart # Place details with embedded map
    ├── map_screen.dart          # Full interactive map with category filters
    └── search_screen.dart       # Global search across all places
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) ≥ 3.5.0
- Android Studio / VS Code with the Flutter extension
- An Android or iOS device / emulator
- **Windows users:** enable Developer Mode (`Settings → Privacy & Security → Developer Mode`) — required for Flutter plugin symlinks

### Installation

```bash
# Clone the repository
git clone https://github.com/TheePoseidon/In-town_finder.git
cd In-town_finder/city_finder

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Build for release

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release
```

## Data

All location data is stored as a static Dart list in [`lib/data/kigali_places.dart`](lib/data/kigali_places.dart). Each `Place` record contains:

| Field | Description |
|-------|-------------|
| `name` | Display name |
| `categoryId` | Links to one of the 8 categories |
| `description` | Short paragraph about the place |
| `address` | Human-readable Kigali street address |
| `latitude` / `longitude` | WGS-84 coordinates |
| `phone` | Contact number (optional) |
| `hours` | Opening hours (optional) |
| `website` | Website URL (optional) |

To add a new location, append a `Place` entry to the list in that file — no other changes are needed.

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add my feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).
