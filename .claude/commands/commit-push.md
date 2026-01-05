# Git Commit & Push

변경사항을 확인하고 의미있는 커밋 메시지로 커밋 후 푸시합니다.

## 1. 현재 상태 확인

먼저 다음 명령어들을 실행하여 변경사항을 파악하세요:

```bash
git status
```

```bash
git diff --stat
```

```bash
git diff
```

## 2. 커밋 메시지 작성 규칙

### 타입
- `feat`: 새로운 기능
- `fix`: 버그 수정
- `refactor`: 리팩토링 (기능 변경 없음)
- `style`: 코드 포맷팅, 세미콜론 누락 등
- `docs`: 문서 수정
- `test`: 테스트 추가/수정
- `chore`: 빌드, 설정 파일 수정

### 형식
```
<type>: <subject>

<body> (선택)

🤖 Generated with Claude Code
```

### 예시
```
feat: Vue Flow 노드 드래그앤드롭 구현

- 사이드바에서 캔버스로 드래그 기능 추가
- 노드 타입별 아이콘 표시
- 드롭 위치에 노드 생성

🤖 Generated with Claude Code
```

## 3. 커밋 & 푸시 실행

```bash
git add -A && git commit -m "<메시지>" && git push
```

## 4. 주의사항

- `.env`, 민감 정보 포함 파일 커밋 금지
- 빌드 결과물 (`dist/`) 커밋 금지
- `console.log` 디버깅 코드 제거 확인
- typecheck, lint 통과 확인 후 커밋

---

$ARGUMENTS
