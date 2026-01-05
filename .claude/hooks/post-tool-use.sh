#!/bin/bash
# PostToolUse Hook: 파일 수정 후 자동 prettier 실행
#
# 이 훅은 Claude Code가 파일을 수정한 후 자동으로 실행됩니다.
# 환경변수:
#   - CLAUDE_TOOL_NAME: 실행된 도구 이름 (Edit, Write 등)
#   - CLAUDE_FILE_PATH: 수정된 파일 경로

# Edit 또는 Write 도구로 파일이 수정된 경우에만 실행
if [[ "$CLAUDE_TOOL_NAME" == "Edit" || "$CLAUDE_TOOL_NAME" == "Write" ]]; then
  # 파일 경로가 존재하고 src/ 디렉토리 내의 파일인 경우
  if [[ -n "$CLAUDE_FILE_PATH" && "$CLAUDE_FILE_PATH" == *"/src/"* ]]; then
    # 지원하는 확장자인지 확인
    if [[ "$CLAUDE_FILE_PATH" =~ \.(vue|ts|tsx|js|jsx|json|css|scss)$ ]]; then
      # prettier 실행
      npx prettier --write "$CLAUDE_FILE_PATH" 2>/dev/null
    fi
  fi
fi
