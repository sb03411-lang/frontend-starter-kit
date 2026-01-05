# Type Check & Lint Fix

타입 체크와 린트를 실행하고 에러를 자동 수정합니다.

## 1. 타입 체크 실행

```bash
npm run typecheck
```

타입 에러가 있으면:
1. 에러 메시지에서 파일:라인 확인
2. 해당 파일 읽고 컨텍스트 파악
3. 타입 정의 수정 또는 타입 단언 추가
4. `any` 타입 사용 최소화 (불가피시 주석으로 사유 명시)

## 2. 린트 실행 및 자동 수정

```bash
npm run lint -- --fix
```

자동 수정 안 되는 에러가 있으면:
1. 에러 규칙 확인 (예: `@typescript-eslint/no-unused-vars`)
2. 해당 코드 수정 또는 정당한 사유로 예외 처리

## 3. 반복 확인

모든 에러가 해결될 때까지 1-2단계 반복:

```bash
npm run typecheck && npm run lint
```

## 4. 흔한 에러 유형

### TypeScript
- `TS2322`: 타입 불일치 → 올바른 타입으로 수정 또는 타입 가드 추가
- `TS2339`: 속성 없음 → 인터페이스에 속성 추가 또는 옵셔널 체이닝
- `TS7006`: 암시적 any → 명시적 타입 추가

### ESLint
- `no-unused-vars`: 미사용 변수 → 제거 또는 `_` 접두사
- `prefer-const`: let → const 변경
- `vue/multi-word-component-names`: 컴포넌트명 2단어 이상

---

$ARGUMENTS
