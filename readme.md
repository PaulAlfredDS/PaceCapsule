# 🚶‍♂️ PaceCapsule

> Transform your daily walks into meaningful memories. One destination. One moment. One beautiful time capsule.

## 🎯 What is PaceCapsule?

PaceCapsule is a mindful walking app that captures the essence of your journey. Choose a destination, walk there mindfully, capture a moment, and create a lasting memory capsule of your experience.

### Core Features (v1.0 - SLC)
- 📍 **Smart Destination Selection** - Choose from nearby landmarks for your walk
- 🚶 **Live Walk Tracking** - Real-time steps, distance, and route visualization  
- 📸 **Moment Capture** - Photo and reflection at your destination
- 🎴 **Beautiful Memory Capsules** - Shareable walk summaries with stats
- 💯 **10K Step Integration** - Seamlessly works with your daily fitness goals

## 🏗 Architecture

Built on proven patterns from enterprise location-tracking apps, adapted for simplicity:

```
PaceCapsule/
├── App/              # App lifecycle, environment config
├── Model/            # Core Data entities, data models
├── View/             # SwiftUI views (5 screens)
├── ViewModel/        # Business logic (TDD-first)
├── Services/         # Location, health, photo services
└── Tests/            # Comprehensive test suite
```

### Tech Stack
- **Frontend**: SwiftUI + Combine
- **Data**: Core Data (offline-first)
- **Backend**: Supabase (PostgreSQL + Auth)
- **Architecture**: MVVM with protocol-oriented services
- **Testing**: TDD with 80%+ coverage on ViewModels
- **Analytics**: Mixpanel for user insights

## 🚀 Getting Started

### Prerequisites
- Xcode 15+
- iOS 17.0+ deployment target
- Supabase account (free tier works)
- Apple Developer account (for device testing)

### Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/pacecapsule.git
cd pacecapsule
```

2. Install dependencies via SPM (automatic in Xcode)

3. Configure Supabase
   - Copy `Config/Supabase.example.plist` to `Config/Supabase.plist`
   - Add your Supabase project URL and anon key

4. Configure Mixpanel
   - Copy `Config/Analytics.example.plist` to `Config/Analytics.plist`
   - Add your Mixpanel project token

5. Configure signing
   - Open `PaceCapsule.xcodeproj`
   - Select your development team
   - Update bundle identifier

6. Run tests first! (We're TDD)
```bash
cmd+U or Product > Test
```

## 🧪 Development Process

We follow strict TDD practices:

1. **Write test first** (red)
2. **Write minimal code to pass** (green)
3. **Refactor** (clean)

### Running Tests
```bash
# All tests
cmd+U

# Specific test file
cmd+click on test class > Run

# With coverage
cmd+9 > Show Coverage
```

## 📱 Screenshots

[Coming soon - space for 3 key screenshots]
- Landmark selection screen
- Active walk with live stats
- Beautiful memory capsule

## 🗺 Roadmap

### v1.0 - SLC Release (Current)
- [x] Basic walk tracking
- [x] Landmark selection
- [x] Moment capture
- [ ] Memory capsule generation
- [ ] App Store submission

### v1.1 - User Accounts
- [ ] Anonymous usage (current)
- [ ] Optional account creation
- [ ] Cloud backup of capsules
- [ ] Multi-device sync

### v1.2 - Social Features
- [ ] Share walks with friends
- [ ] Weekly challenges
- [ ] Community landmarks
- [ ] Leaderboards

### v2.0 - Premium Features
- [ ] Custom walk distances
- [ ] Multiple waypoints
- [ ] Advanced analytics
- [ ] Guided meditation walks
- [ ] Weather-based recommendations

## 🔧 Configuration

### Environment Variables
Create `Config/Environment.swift`:
```swift
enum Environment {
    static let supabaseURL = "YOUR_SUPABASE_URL"
    static let supabaseAnonKey = "YOUR_ANON_KEY"
    static let mixpanelToken = "YOUR_MIXPANEL_TOKEN"
}
```

### Required Permissions
- **Location Services** (always/when in use)
- **Camera** (for moment capture)
- **Photo Library** (to save capsules)
- **Motion & Fitness** (step counting)

## 📊 Analytics Events

Key events tracked for product improvement:
- `walk_started` - User begins journey
- `landmark_selected` - Destination chosen
- `destination_reached` - Arrival at landmark
- `moment_captured` - Photo/reflection added
- `capsule_created` - Memory saved
- `capsule_shared` - Social sharing

## 🤝 Contributing

This is currently a solo project in active development. Feel free to:
- Report bugs via Issues
- Suggest features via Discussions
- Submit PRs for bug fixes

### Code Style
- SwiftLint enforced
- 100 character line limit
- Descriptive variable names
- Comments for complex logic only

## 📈 Current Status

- **Development Phase**: Building SLC (v1.0)
- **Test Coverage**: 0% (starting TDD now)
- **Target Launch**: 3 weeks
- **Platform**: iOS only (iPhone)

## 🛠 Technical Architecture

### Core Technologies
- **Combine**: Reactive data flows and location updates
- **Core Data**: Offline-first data persistence
- **MapKit**: Landmark search and navigation
- **HealthKit**: Step counting integration
- **CoreLocation**: Geofencing and GPS tracking

### Key Patterns
- **MVVM Architecture**: Clear separation of concerns
- **Protocol-Oriented**: Testable service layer
- **Offline-First**: Works without internet
- **TDD**: Test-driven development throughout

## 🙏 Acknowledgments

- Architecture patterns adapted from TraKid enterprise codebase
- Inspired by mindfulness apps like Headspace
- Built for the quantified self movement
- Time capsule concept for digital memories

## 📄 License

[MIT License](LICENSE) - Use freely, attribution appreciated

---

**Remember**: Every step is a story. Every walk is a time capsule. 🚶‍♂️✨

*Built with ❤️ for mindful walkers everywhere*
