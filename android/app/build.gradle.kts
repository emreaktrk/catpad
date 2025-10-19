plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.akturk.catpad.catpad"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.akturk.catpad.catpad"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("standart") {
            storeFile = file("keystore/signature.jks")
            keyAlias = "catpat"
            keyPassword = "12345678"
            storePassword = "12345678"
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("standart")
        }
    }
}

flutter {
    source = "../.."
}
