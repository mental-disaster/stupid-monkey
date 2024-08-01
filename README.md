# Stupid Monkey

---

## 개발환경
- Dart 3.4.4
- Flutter 3.22.3

## Database

sqlite3 및 drift 사용

db관련 변경사항 발생할 경우 ```/lib/db/database.dart```파일에
변경사항 반영 및 스키마 버전 변경 후 아래 명령어로 반영
```shell
dart run build_runner build
```

## Code Style Format

dartfmt로 코드 포맷팅
<br>Dart 내장 포맷터로 별도의 설치나 설정 과정이 필요하지 않음

```shell
# 모든 프로젝트 파일 적용 
dart format .
```
