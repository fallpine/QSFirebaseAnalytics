# QSFirebaseAnalytics

`QSFirebaseAnalytics` 是一个简单的 Firebase Analytics 封装库，用于在 iOS 项目中快速完成 Firebase 初始化和事件打点。

## 功能

- 初始化 Firebase
- 自动设置默认事件参数：
  - App 版本号 `version`
  - 当前语言地区 `language`
- 记录自定义事件
- 事件名自动追加 App 版本号，便于按版本区分统计数据

## 安装

使用 CocoaPods 添加依赖：

```ruby
pod 'QSFirebaseAnalytics'
```

然后执行：

```bash
pod install
```

## Firebase 配置

使用前需要先在 Firebase 控制台创建 iOS 应用，并将下载的 `GoogleService-Info.plist` 添加到主工程中。

## 使用方法

在 App 启动时初始化：

```swift
import QSFirebaseAnalytics

FirebaseAnalytics.configure()
```

例如可以放在 `AppDelegate` 中：

```swift
func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
) -> Bool {
    FirebaseAnalytics.configure()
    return true
}
```

记录事件：

```swift
FirebaseAnalytics.addEvent(name: "login")
```

记录带参数的事件：

```swift
FirebaseAnalytics.addEvent(
    name: "purchase",
    parameters: [
        "item_id": "10001",
        "price": 9.99
    ]
)
```

## 注意事项

- 事件名最终会自动追加当前 App 版本号，例如 `login_101`。
- Firebase Analytics 要求事件名长度不能超过 40 个字符，请控制传入的事件名长度。
- 如果主工程已经初始化过 Firebase，本库不会重复初始化。

## 要求

- iOS 15.0+
- Swift 5+
- CocoaPods

## License

MIT
