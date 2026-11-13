# Claudeの提供形態とライセンス

## 実装サービス別の利用可否

| 機能 | WEB: Claude | WEB: Claude Code | desktopアプリ: Claude | desktopアプリ: Claude Code | Claude for VSCode: Claude Code | Claude CLI: Claude Code | Chrome拡張: Claude in Chrome |
|---|---|---|---|---|---|---|---|
| CHAT | 〇 | 〇 | 〇 | 〇 | 〇 | 〇 | ✕ |
| Cowork ※1 | 〇 | － | 〇 | － | － | － | 〇 ※2 |
| Code | ✕ | 〇 | ✕ | 〇 | 〇 | 〇 | ✕ |

※1 Claude Codeにはローカルファイル操作やスケジュール実行など、Coworkと似た機能があるが、Coworkとは別の機能であり、Cowork自体はClaude Codeには実装されていない

※2 Chromeのサイドパネルは、Coworkセッションとして動作する（従来型のサイドパネルはCoworkではない。Proは順次展開中、Enterpriseは管理者の有効化まで従来型）。ブラウザ操作の実体はChrome拡張機能で、Coworkはその操作機能を使って作業を進める側

### Claude in Chrome（Chrome拡張）を呼び出せる機能

Chrome拡張は、次の2つの機能から呼び出せる。

- Cowork: Chromeのサイドパネル（Coworkセッションとして動作）、Claude Desktop、claude.ai（Desktop経由）
- Code: Claude Codeから呼び出し、開発したものをブラウザで動作確認する

## ライセンス別の利用可否

| 機能 | Free | Pro | Max | Ultra | Team | Enterprise |
|---|---|---|---|---|---|---|
| CHAT | 〇 | 〇 | 〇 | 〇 | 〇 | 〇 |
| Cowork ※3 | ✕ | 〇 | 〇 | 〇 | 〇 | 〇（管理者の有効化が必要） |
| Code | ✕ ※4 | 〇 | 〇 | 〇 | 〇 | 〇 |
| Claude in Chrome ※5 | ✕ | 〇 | 〇 | 〇 | 〇 | 〇（管理者の有効化が必要） |
| Claude for Excel ※6 | ✕ | 〇 | 〇 | 〇 | 〇 | 〇（管理者による配布が必要な場合あり） |

※3 WebとモバイルのCoworkはベータ版(全プラン共通)。Enterpriseは、Web・モバイルでは管理者の有効化が必要。デスクトップアプリは全有料プランで利用可能

※4 Freeでも、Consoleアカウント（API課金）を使えば利用可能（サブスクリプションに含まれていないという意味で'✕'）

※5 Claude in Chrome：Chromeの拡張機能（Chrome Web Storeからインストールし、Claudeアカウントでサインイン）。ページの閲覧・クリック・入力などのブラウザ操作を担い、頭脳にあたるのはClaude。操作の実行役は拡張機能で、指示を出す入口は次の3つ：①Chromeのサイドパネル（Coworkセッションとして動作する、拡張機能内のチャット画面。Proは順次展開中(未提供のアカウントあり)、Enterpriseは管理者の有効化まで従来型）、②Claude Desktop（コネクタ設定で有効化。Chat/Cowork/Claude Codeから指示可）、③Claude Code。claude.ai(Web)・モバイル単体からは直接操作できないが、Claude Desktopを開いて接続していれば、別の画面から指示してChromeを操作できる（サイドパネルで始めたセッションはWeb・Desktop・モバイルで続けられる）。サインイン済みのサイトを操作できるため、プロンプトインジェクションなどのリスクに注意

※6 Claude for Excel：Excelの中でClaudeを使うためのアドイン。Claudeのアプリ（Web・デスクトップ）とは別に、Excel側にアドインを追加して使う。開いているブックについて質問したり、数式の関係を保ったまま前提条件を変更したり、エラーの原因を調べたり、モデルやテンプレートを作成したりできる。Microsoft AppSourceの「Claude for Microsoft 365」として提供され、1つのアドインでExcel・PowerPoint・Word・Outlookを横断して使える。利用にはPro以上の有料プランが必要。対応するExcelは、Excel for the web（無料のMicrosoftアカウントでも可）とMicrosoft 365版で、2019などの買い切り版は非対応。マクロ・VBAも非対応。外部から入手したファイルでは、プロンプトインジェクションに注意

※ WEB版とデスクトップアプリの連携：同じアカウントなら、デスクトップで始めた会話やプロジェクト（添付ファイル含む）を、claude.aiやスマホから続けられる（セッションは端末ではなくClaudeアカウントに紐づく）。ただし、ローカルファイルやパソコンの操作が必要なCowork等のタスクは、Claude Desktopを開いてオンラインにしておく必要がある

## ライセンスの違い（概要）

個人向けが Free / Pro / Max / Ultra、組織向けが Team / Enterprise。
（2026年11月時点。公式: https://claude.com/pricing ／ 料金・上限は変更される場合あり）

| ライセンス | 区分 | 料金 | 使用量 | 主な特徴 |
|---|---|---|---|---|
| Free | 個人 | $0 | 5時間ごと・週ごとに制限あり | Web/デスクトップ/モバイルでのチャット、Web検索、ファイル作成、コード実行、メモリ、Artifacts、プロジェクト最大5件。モデルはSonnet・Haikuのみ |
| Pro | 個人 | 月額$20（年払いは月$17相当、前払い$200） | Freeより多い（5時間セッションあたり最低Freeの5倍） | Freeの全機能に加え、Claude Code、Research、Opus、Claude in Chrome、Claude for Excel（Excelアドイン）、Microsoft 365連携、無制限のプロジェクト、Fable用の利用クレジット |
| Max | 個人 | 月額$100 | Proの5倍（5時間ごと・週ごと） | Proの全機能に加え、Fable（週上限の半分まで）、月$100のAPIクレジット、新機能の早期アクセス、混雑時の優先アクセス |
| Ultra | 個人 | 月額$200 | 週あたりProの10倍。認証済みアカウントは5時間制限なし | Maxの全機能に加え、月$200のAPIクレジット（Maxの2倍） |
| Team | 組織 | Standardシート: 月$20（年払い）/ $25（月払い）<br>Premiumシート: 月$100（年払い）/ $125（月払い） | StandardはProより多い。PremiumはStandardの5倍 | 2〜150ユーザー向け。Claude Code、Cowork、一元課金、SSO、管理者コントロール、既定でコンテンツをモデル学習に使わない、プールAPIクレジット最大月$500 |
| Enterprise | 組織 | 1シート月$20（年払い、最低20シート）＋APIレートの従量課金 | モデル・タスクに応じた従量 | Teamの全機能に加え、管理者による支出上限、ロールベースのアクセス制御、SCIM、監査ログ、Compliance API、カスタムデータ保持、IPアロウリスト、HIPAA対応、Claude Security（ベータ） |

### 主な違い

- **Free と Pro**: ProでClaude Code・Opus・Researchが使え、使用量も増える。FreeはSonnet/Haikuのみ。
- **Pro と Max**: Maxは使用量がProの5倍で、Fableの利用、月$100のAPIクレジットが付く。
- **Max と Ultra**: Ultraは認証済みアカウントで5時間制限がなくなり、週の使用量が10倍（Pro比）、APIクレジットが$200になる。旧名称は Max=「Max 5x」、Ultra=「Max 20x」（価格は同じ）。
- **Team と Enterprise**: Teamは小規模グループ向けのセルフ管理型。Enterpriseは高度なセキュリティ・コンプライアンス・管理機能が加わり、利用料はシート料金に加えてAPIレートで課金される。
- **Enterpriseの契約形態**: セルフサーブ型と営業担当経由型があり、後者は請求書払い（支払条件付き）やAWS Marketplaceでの購入などが選べる。

### 選び方の目安

- 個人で使い始める → Pro。上限に頻繁に達するなら Max、終日Claude/Claude Codeを使うなら Ultra
- チームで管理機能・一元課金が必要 → Team
- 監査ログ、SCIM、データ保持設定などの要件がある → Enterprise

## モデルの種類

（2026年11月時点。最新のモデル名・提供状況は公式ページで確認すること）

Claudeのモデルは、規模・性能・速度・コストのバランスで複数のティアに分かれている。

| ティア | モデル（現行） | 位置づけ |
|---|---|---|
| Mythos | Claude Mythos 5.2 / Claude Fable 5.2 | 最上位ティア。MythosとFableは同じ基盤モデルで、Fableは生物・サイバーセキュリティ領域に追加の安全対策を施した版。Fableは有料プランから利用可（Proは利用クレジット、Maxは週上限の半分まで）。※Mythosの最初のモデル「Claude Mythos Preview」は一般非公開で、Project Glasswingを通じて一部の信頼できる組織のみが利用 |
| Opus | Claude Opus 5.5 | 高性能モデル。複雑な推論や長時間のエージェント作業向け。Pro以上で利用可 |
| Sonnet | Claude Sonnet 5.5 | 賢さと効率のバランスが良い、日常利用向けの標準モデル。Freeでも利用可 |
| Haiku | Claude Haiku 5.5 | 小型・高速・低コスト。軽いタスクや大量処理向け。Freeでも利用可 |

APIモデルID：`claude-fable-5-2` / `claude-opus-5-5` / `claude-sonnet-5-5` / `claude-haiku-5-5`

### ライセンスとモデルの関係

| ライセンス | 利用できるモデル |
|---|---|
| Free | Sonnet、Haiku のみ |
| Pro | Free＋Opus。Fableは利用クレジットで利用 |
| Max | Pro＋Fable（週上限の半分まで） |
| Ultra | Max＋より多い使用量（モデルの種類はMaxと同じ） |
| Team / Enterprise | 有料プランの各モデルを利用可（シート種別・組織の設定による） |

- 上位プランで使えるモデルが増えるのはFree→Pro→Maxの段階まで。Max以降（Ultra）は主に使用量・APIクレジットの違い。
- 同じプランなら、モデル選択は会話ごとに切り替えられる。

### 補足：Fable 5 / Mythos 5 の経緯

Claude Fable 5 と Mythos 5 は2026年6月9日に公開されたが、6月12日に米商務省の輸出管理に対応するため一時アクセスが停止され、同規制が6月30日に解除されたのを受けて7月1日にアクセスが再開された。詳細: https://www.anthropic.com/news/fable-mythos-access
