public class MyApp extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        NewRelic.withApplicationToken("GENERATED_TOKEN").start(this.getApplication());
    }
}
