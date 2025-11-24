# 베이스 이미지 설정
FROM ubuntu:latest

# [RUN] 실행 시 출력할 셸 스크립트 파일을 컨테이너 내부에 생성하고 권한 부여
RUN echo '#!/bin/bash' > /app_runner.sh && \
    echo 'echo "Lab 5: Dockerfile build success!"' >> /app_runner.sh && \
    chmod +x /app_runner.sh

# [CMD] 컨테이너가 시작될 때 자동으로 실행할 명령어 지정
CMD ["/app_runner.sh"]
