# CLAUDE.md - 프로젝트 컨텍스트

> 이 파일은 Claude Code가 자동으로 참조합니다.

---

## 📌 프로젝트 개요

**노코드 AI Agent Builder** - Vue Flow 기반 워크플로우 에디터로 AI 에이전트를 시각적으로 구성하는 웹 애플리케이션

### 핵심 특징
- Vue 3 + TypeScript + Pinia 기반 SPA
- Vue Flow로 드래그앤드롭 워크플로우 에디터 구현
- Tailwind CSS + Headless UI 스타일링
- 하이브리드 폴더 구조 (타입 기반 + 도메인 분리)
- 공통 모듈은 core/ 폴더에서 관리

---

## 🛠 기술 스택

### Core
| 기술 | 버전 | 용도 |
|------|------|------|
| Vue | ^3.4.0 | 프레임워크 |
| TypeScript | ^5.3.0 | 언어 |
| Vite | ^5.0.0 | 빌드 도구 |
| Vue Router | ^4.2.0 | 라우팅 |
| Pinia | ^2.1.0 | 상태 관리 |
| axios | ^1.6.0 | HTTP 클라이언트 |

### UI/스타일링
| 기술 | 버전 | 용도 |
|------|------|------|
| Tailwind CSS | ^3.4.0 | 유틸리티 CSS |
| @headlessui/vue | ^1.7.0 | Headless UI 컴포넌트 |
| @heroicons/vue | ^2.1.0 | 아이콘 |

### 유틸리티
| 기술 | 버전 | 용도 |
|------|------|------|
| @vueuse/core | ^10.7.0 | Vue Composables |
| dayjs | ^1.11.0 | 날짜 처리 |
| vee-validate | ^4.12.0 | 폼 검증 |
| zod | ^3.22.0 | 스키마 검증 |
| vue-sonner | ^1.0.0 | 토스트 알림 |

### 특수 기능
| 기술 | 버전 | 용도 |
|------|------|------|
| @vue-flow/core | ^1.46.0 | 플로우차트/다이어그램 |
| xlsx | ^0.18.5 | 엑셀 처리 |
| jspdf | ^3.0.3 | PDF 생성 |
| pdfjs-dist | ^5.4.296 | PDF 뷰어 |
| html2canvas | ^1.4.1 | 화면 캡처 |

---

## 📁 폴더 구조

```
src/
├── core/                          # 🔧 공통/핵심 모듈
│   ├── api/                       # API 공통 설정
│   │   ├── client.ts              # axios 인스턴스
│   │   ├── interceptors.ts        # 요청/응답 인터셉터
│   │   ├── error-handler.ts       # 에러 핸들링
│   │   └── types.ts               # API 공통 타입
│   ├── components/                # 공용 컴포넌트 (Common 접두사)
│   │   ├── CommonButton.vue
│   │   ├── CommonInput.vue
│   │   ├── CommonModal.vue
│   │   ├── CommonSpinner.vue
│   │   ├── CommonSkeleton.vue
│   │   └── CommonLoadingOverlay.vue
│   ├── composables/               # 공용 Composables
│   │   ├── useLoading.ts
│   │   └── useToast.ts
│   ├── layouts/                   # 레이아웃
│   │   ├── DefaultLayout.vue
│   │   ├── AuthLayout.vue
│   │   └── DashboardLayout.vue
│   ├── errors/                    # 에러 처리
│   │   ├── index.ts
│   │   ├── error-boundary.vue
│   │   └── error-messages.ts
│   ├── constants/                 # 상수
│   ├── types/                     # 공용 타입
│   └── utils/                     # 유틸리티 함수
│
├── api/                           # 🌐 도메인별 API
│   ├── auth.api.ts
│   └── user.api.ts
│
├── stores/                        # 📦 Pinia 스토어
│   ├── auth.store.ts
│   └── ui.store.ts
│
├── components/                    # 🧩 도메인별 컴포넌트
│   ├── auth/
│   └── dashboard/
│
├── views/                         # 📄 페이지
│   ├── auth/
│   ├── dashboard/
│   └── NotFoundView.vue
│
├── router/                        # 🧭 라우터
│   ├── index.ts
│   ├── routes/
│   └── guards/
│
├── assets/                        # 🎨 에셋
│   ├── images/
│   │   ├── common/
│   │   └── domain/
│   │       ├── auth/
│   │       └── dashboard/
│   ├── fonts/
│   │   └── pretendard/
│   └── styles/
│
├── App.vue
├── main.ts
└── env.d.ts
```

---

## 📝 네이밍 컨벤션

### 폴더/파일

| 대상 | 규칙 | 예시 |
|------|------|------|
| 폴더 | kebab-case | `user-profile/` |
| 컴포넌트 | PascalCase | `UserCard.vue` |
| Composables | camelCase + use | `useAuth.ts` |
| 스토어 | kebab-case.store | `auth.store.ts` |
| API | kebab-case.api | `auth.api.ts` |
| 타입 | kebab-case.types | `user.types.ts` |
| 유틸 | kebab-case | `format-date.ts` |

### 컴포넌트 종류

| 종류 | 접두사/접미사 | 예시 |
|------|--------------|------|
| 공용 | `Common` 접두사 | `CommonButton`, `CommonModal` |
| 레이아웃 | `Layout` 접미사 | `DefaultLayout`, `AuthLayout` |
| 페이지 | `View` 접미사 | `LoginView`, `DashboardView` |
| 도메인 | 도메인명 | `UserCard`, `OrderList` |

### 변수/함수

| 대상 | 규칙 | 예시 |
|------|------|------|
| 변수 | camelCase | `userName`, `isLoading` |
| 상수 | UPPER_SNAKE | `API_URL`, `MAX_COUNT` |
| 함수 | camelCase + 동사 | `fetchUser`, `handleClick` |
| 이벤트 | handle 접두사 | `handleSubmit`, `handleClick` |
| boolean | is/has/can 접두사 | `isActive`, `hasPermission` |

### 타입/인터페이스

| 대상 | 규칙 | 예시 |
|------|------|------|
| 인터페이스 | PascalCase | `User`, `ApiResponse` |
| Props 타입 | 컴포넌트 + Props | `CommonButtonProps` |
| Emits 타입 | 컴포넌트 + Emits | `CommonButtonEmits` |

---

## 🎨 코딩 스타일

### 컴포넌트 기본 구조

```vue
<script setup lang="ts">
// 1. imports
import { ref, computed } from 'vue'
import CommonButton from '@/core/components/CommonButton.vue'

// 2. types
interface Props {
  title: string
  disabled?: boolean
}

// 3. props & emits
const props = withDefaults(defineProps<Props>(), {
  disabled: false,
})

const emit = defineEmits<{
  click: [event: MouseEvent]
  update: [value: string]
}>()

// 4. composables
const { isLoading, withLoading } = useLoading()

// 5. reactive state
const count = ref(0)

// 6. computed
const doubleCount = computed(() => count.value * 2)

// 7. methods
const handleClick = (event: MouseEvent) => {
  emit('click', event)
}

// 8. lifecycle (if needed)
onMounted(() => {
  // ...
})
</script>

<template>
  <!-- 템플릿 -->
</template>

<style scoped>
/* 스타일 (최소화, Tailwind 우선 사용) */
</style>
```

### Pinia 스토어 구조 (Composition API)

```typescript
// stores/example.store.ts
import { defineStore } from 'pinia'
import { ref, computed } from 'vue'

export const useExampleStore = defineStore('example', () => {
  // state
  const items = ref<Item[]>([])
  const isLoading = ref(false)

  // getters
  const itemCount = computed(() => items.value.length)

  // actions
  const fetchItems = async () => {
    isLoading.value = true
    try {
      items.value = await api.getItems()
    } finally {
      isLoading.value = false
    }
  }

  return {
    // state
    items,
    isLoading,
    // getters
    itemCount,
    // actions
    fetchItems,
  }
})
```

### API 레이어 구조

```typescript
// api/example.api.ts
import client from '@/core/api/client'
import type { Example, CreateExampleDto } from '@/types/example.types'

export const exampleApi = {
  getAll: () => 
    client.get<Example[]>('/examples'),
  
  getById: (id: number) => 
    client.get<Example>(`/examples/${id}`),
  
  create: (data: CreateExampleDto) => 
    client.post<Example>('/examples', data),
  
  update: (id: number, data: Partial<CreateExampleDto>) => 
    client.put<Example>(`/examples/${id}`, data),
  
  delete: (id: number) => 
    client.delete(`/examples/${id}`),
}
```

---

## ⚠️ 금지 사항

- ❌ `any` 타입 사용 금지 (불가피한 경우 주석으로 사유 명시)
- ❌ `console.log` 커밋 금지 (디버깅 후 제거)
- ❌ 인라인 스타일 금지 (Tailwind 사용)
- ❌ 하드코딩된 문자열/숫자 금지 (상수화)
- ❌ 컴포넌트 내 직접 API 호출 금지 (api/ 레이어 사용)
- ❌ `v-html` 사용 주의 (XSS 취약점)

---

## ✅ 권장 사항

- ✅ 모든 import는 `@/` alias 사용
- ✅ Props/Emits는 TypeScript 제네릭으로 정의
- ✅ 비동기 작업은 try-catch로 에러 처리
- ✅ 공용 컴포넌트 적극 활용
- ✅ Composables로 로직 재사용
- ✅ 반응형 디자인 (mobile-first)

---

## 🔗 관련 문서

- `docs/ARCHITECTURE.md` - 전체 아키텍처 스펙
- `docs/TEAM-VIBE-CODING-GUIDE.md` - 팀 협업 가이드
- `docs/prompts/` - 프롬프트 템플릿
- `docs/context/` - 도메인별 컨텍스트

---

## 🚨 자주 발생하는 실수

> 작업 중 발견된 실수를 여기에 추가하세요.

<!-- 예시:
- Vue Flow 노드 데이터 변경 시 `updateNode` 대신 직접 수정하면 반응성 깨짐
- Pinia store에서 $reset() 호출 시 composition API 스토어는 동작 안 함
-->

---

## ✅ 작업 완료 전 필수 검증

모든 작업 완료 후 다음을 반드시 확인:

### 1. 타입 체크
```bash
npm run typecheck
```
- 에러 0개 확인
- any 타입 사용 여부 검토

### 2. 린트 체크
```bash
npm run lint
```
- 에러 0개 확인
- 경고도 가능하면 해결

### 3. 빌드 테스트
```bash
npm run build
```
- 빌드 성공 확인
- 콘솔 경고 검토

### 4. 브라우저 테스트 시나리오

#### 플로우 에디터 기능
- [ ] 노드 드래그앤드롭으로 캔버스에 추가
- [ ] 노드 간 엣지 연결/삭제
- [ ] 노드 선택 및 속성 편집
- [ ] 캔버스 줌/팬 동작
- [ ] 워크플로우 저장/불러오기

#### 일반 기능
- [ ] 페이지 라우팅 정상 동작
- [ ] 반응형 레이아웃 (모바일/태블릿/데스크톱)
- [ ] 에러 상태 처리 및 표시
- [ ] 로딩 상태 표시

---

## 🔧 Claude Code 워크플로우

### 슬래시 커맨드

| 커맨드 | 용도 |
|--------|------|
| `/commit-push` | 변경사항 확인 후 커밋 & 푸시 |
| `/check-fix` | typecheck + lint 실행 및 자동 수정 |
| `/dev-test` | 개발 서버 실행 및 테스트 시나리오 안내 |
| `/code-simplifier` | 코드 리뷰 및 단순화 |
| `/verify-app` | 앱 전체 검증 체크리스트 |

### 작업 패턴 (Boris Cherny 방법론)

1. **Plan**: 요청 분석 → 코드베이스 탐색 → 구현 계획 수립
2. **Implement**: TodoWrite로 단계 관리 → 순차 구현 → 진행 보고
3. **Verify**: `/check-fix` → `/dev-test` → 브라우저 테스트
4. **Commit**: `/commit-push`로 의미있는 커밋 메시지 작성
