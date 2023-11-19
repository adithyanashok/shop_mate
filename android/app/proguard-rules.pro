# Add rules to keep classes and methods related to Google Sign-In
-keep class com.google.android.gms.auth.api.** { *; }
-keep class com.google.android.gms.common.api.** { *; }
-keep class com.google.android.gms.common.ConnectionResult { *; }
-keep class com.google.android.gms.common.GoogleApiAvailability { *; }

# Add rules to keep classes and methods for your authentication logic
-keep class com.example.shop_mate.auth.** { *; }

# Add rules to keep Flutter-related classes
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }
