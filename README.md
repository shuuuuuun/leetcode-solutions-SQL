# LeetCode Solutions — SQL
**Folloing Japanese**
A personal collection of LeetCode SQL solutions. The goal is to keep answers clean, reproducible, and easy to review (like a professional codebase), while tracking learning progress over time.

---

## Highlights

* Clear folder structure by difficulty
* Consistent file naming and per‑file metadata header
* Practical Git workflow (branch → PR → main)
* Optional linting and monthly progress tags

---

## Repository Structure (recommended)

```
.
├── easy/
├── medium/
├── hard/              # optional
├── .editorconfig      # line endings / indentation (optional)
├── .gitattributes     # stable diffs for .sql (optional)
├── LICENSE
└── README.md
```

> Note: If some folders don’t exist yet, create them as you go.

---

## File Naming Convention

Use lowercase snake\_case with a 4‑digit, zero‑padded problem ID:

```
<difficulty>/<4-digit-id>_<kebab-or-snake-title>.sql
```

Examples:

```
medium/0608_tree_node.sql
medium/0626_exchange_seats.sql
```

---

## SQL Dialects

* **Primary:** MySQL (LeetCode default)
* **Others:** If a solution targets a different dialect (e.g., SQL Server/T‑SQL), note it in the file header and optionally provide a MySQL variant when practical.

---

## Recommended Workflow

1. Create a problem branch from `main`:

   ```bash
   git switch -c problems/<id>-<slug>
   # e.g. problems/626-exchange-seats
   ```
2. Add solution file(s) under the right folder and commit.
3. Push and open a Pull Request to `main`.
4. After review/merge, delete the problem branch.

### Progress Tags & Releases (optional)

* Tag monthly or by milestone:

  ```bash
  git tag -a leetcode-sql/vYYYY.MM -m "Monthly snapshot"
  git push origin leetcode-sql/vYYYY.MM
  ```
* Optionally create a GitHub Release from the tag.

---

## Problem Index (add entries as you go)

|  # | Title | Difficulty | File | Dialect | Notes |
| -: | ----- | ---------- | ---- | ------- | ----- |
|    |       |            |      |         |       |

> Tip: Keep the table sorted by problem ID. Add a brief note on the main idea (e.g., window functions, self‑join, CTE).

---

## Solution File Header Template

Add a short, standardized header at the top of each `.sql` file:

```sql
-- LeetCode <ID>. <Title> (<Difficulty>) — <Dialect>
-- URL: https://leetcode.com/problems/<slug>/
-- Approach: <core idea in 1–2 lines>
-- Complexity: O(n) or as applicable
-- Alternatives: <optional>
```

---

## Linting / Formatting (optional)

If you want consistent formatting in PRs, consider [sqlfluff](https://github.com/sqlfluff/sqlfluff):

```bash
pip install sqlfluff
sqlfluff lint --dialect mysql .
```

---

## Local Testing (optional)

LeetCode runs queries on its own datasets. For local trials you can:

* Use a local MySQL container and craft minimal mock tables/data.
* Save sample inputs in comments or companion `.sql` files for quick re‑runs.

---

## License

MIT. See `LICENSE` for details.

---

## Roadmap / Ideas

* Add a small script to auto‑generate the Problem Index from filenames
* Provide dual‑dialect variants (MySQL + SQL Server) when relevant
* Enable CI for SQL linting on PRs


# LeetCode 解答集 — SQL

個人の LeetCode SQL 解答リポジトリです。実務のコードベースのように、読みやすさ／再現性／レビューしやすさを重視しつつ、学習の進捗を継続的に可視化します。

---

## 特徴

* 難易度ごとの明確なディレクトリ構成
* 一貫したファイル命名と、各ファイル先頭のメタ情報ヘッダー
* 実務的な Git 運用（ブランチ → PR → main）
* 任意で Lint と月次の進捗タグ運用

---

## リポジトリ構成（推奨）

```
.
├── easy/
├── medium/
├── hard/              # 任意
├── .editorconfig      # 改行コード/インデントの統一（任意）
├── .gitattributes     # .sql の diff 安定化（任意）
├── LICENSE
└── README.md
```

> まだ存在しないフォルダは、必要になったタイミングで作成してください。

---

## ファイル命名規則

4 桁の 0 埋め問題番号 + スラグ（英小文字）を推奨します：

```
<difficulty>/<4桁id>_<kebab-or-snake-title>.sql
```

例：

```
medium/0608_tree_node.sql
medium/0626_exchange_seats.sql
```

---

## SQL 方言

* **基本:** MySQL（LeetCode 標準）
* **その他:** SQL Server（T‑SQL）など別方言の解法を書く場合は、ファイル先頭のヘッダーに方言を明記し、可能なら MySQL 版も併記します。

---

## 推奨ワークフロー

1. `main` から問題単位でブランチを切る：

   ```bash
   git switch -c problems/<id>-<slug>
   # 例: problems/626-exchange-seats
   ```
2. 該当フォルダに解答ファイルを追加してコミット。
3. Push して、`main` への Pull Request を作成。
4. レビュー/マージ後、問題ブランチを削除。

### 進捗タグ & Releases（任意）

* 月次またはマイルストーンでタグを打つ：

  ```bash
  git tag -a leetcode-sql/vYYYY.MM -m "Monthly snapshot"
  git push origin leetcode-sql/vYYYY.MM
  ```
* 必要に応じて、タグから GitHub Release を作成します。

---

## 問題索引（随時追記）

|  # | Title | Difficulty | File | Dialect | Notes |
| -: | ----- | ---------- | ---- | ------- | ----- |
|    |       |            |      |         |       |

> ヒント：番号順で管理し、アプローチ（例：ウィンドウ関数／自己結合／CTE など）を一言メモしておくと見返しやすいです。

---

## 各 SQL ファイルのヘッダー雛形

各 `.sql` ファイルの先頭に、短い標準化ヘッダーを入れます：

```sql
-- LeetCode <ID>. <Title> (<Difficulty>) — <Dialect>
-- URL: https://leetcode.com/problems/<slug>/
-- Approach: <コアとなる考え方を1–2行で>
-- Complexity: O(n) など
-- Alternatives: <任意>
```

---

## 体裁統一 / Lint（任意）

PR 時にフォーマットを揃えるなら [sqlfluff](https://github.com/sqlfluff/sqlfluff) の利用を検討：

```bash
pip install sqlfluff
sqlfluff lint --dialect mysql .
```

---

## ローカル検証（任意）

LeetCode は独自データで実行されますが、ローカル検証用に：

* MySQL コンテナなどを用意し、最小限のモックテーブル/データを作成
* 入力例をコメントや別 `.sql` に保存して素早く再実行できるようにする

---

## ライセンス

MIT。詳細は `LICENSE` を参照してください。

---

## ロードマップ / アイデア

* ファイル名から索引テーブルを自動生成するスクリプト
* 必要に応じて二重方言（MySQL + SQL Server）の併記
* PR 時に SQL Lint を自動実行する CI の導入
