package com.example.flutter_devfest;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.sentry.Sentry;
import io.sentry.android.AndroidSentryClientFactory;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    Sentry.init("https://be576d4240e341d99972ae968672312c@sentry.io/1845078", new AndroidSentryClientFactory(this));
    GeneratedPluginRegistrant.registerWith(this);
  }
}
