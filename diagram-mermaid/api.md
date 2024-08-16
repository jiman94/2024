
#### 배포대상 목록 조회

```mermaid

---
title: 배포대상 목록 조회
---
sequenceDiagram
	Actor User
	participant Controller as SysDplyTgtMngController
	participant Service as SysDplyTgtMngService
    participant Repository as SysDplyTgtMngRepository
    participant Mapper as SysDplyTgtMngMapper
    participant Database as DB
    User ->> Controller: 목록 조회 요청
    Controller ->> Service: 목록 조회 요청
    Service ->> Repository: 목록 조회 요청
    Repository ->> Mapper: 목록 조회 요청
    Mapper -->> Database: 데이터베이스 질의 (SELECT)
    Database -->> Mapper: 조회 결과
    Mapper -->> Repository: 조회 결과
    Repository -->> Service: 조회 결과
    Service -->> Controller: 목록 조회 결과 응답
    Controller -->> User: 목록 조회 결과 응답
```