# 👋 Hello World Website

第一步：一個真・跑得起嘅網站，為 Hutchison Telecom 份工打底。

## 點樣跑

```bash
./run.sh
```

然後開瀏覽器去 http://localhost:8080，或用 curl 試 API：

```bash
curl http://localhost:8080/api/hello
curl "http://localhost:8080/api/hello?name=tom"
```

## 每個檔案學到咩（對應 job requirements）

| 檔案 | 學到嘅 skill |
|---|---|
| `pom.xml` | **Maven**：Java 世界嘅 build 工具，聲明依賴、打包（CI/CD 會用到） |
| `HelloApplication.java` | **Java** 入口，`@SpringBootApplication` 自動配置 |
| `HelloController.java` | **Spring Boot** + **Web Service API**：`@RestController`、`@GetMapping`，回傳 JSON |
| `static/index.html` | **JavaScript**：`fetch()` call 後端 API，前後端分離嘅基本功 |
| `run.sh` | **UNIX shell script**：一鍵 build + run |
| `application.properties` | **Spring Boot** 設定（port、DB 連線等，之後接 Oracle 會用） |

## 下一步可以加

1. 第二個 API：`/api/time` 回傳而家時間（學多個 endpoint）
2. 接 Oracle 資料庫：將句 "Hello" 存入 DB 再讀返出嚟（**SQL** + **Oracle RDBMS**）
3. 寫個 PL/SQL stored procedure（**Oracle PL/SQL**）
4. 用 React 重寫個前端（**React JS**）
5. 加 GitHub Actions 自動 build（**CI/CD**）
