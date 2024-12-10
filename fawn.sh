#!/bin/bash

# 심볼릭 링크 생성
sudo ln -s /home/mizuda/bamjun/projects/snowfawn/fawn/ban.sh /usr/local/bin/fawn

# 실행 권한 부여
chmod +x /home/mizuda/bamjun/projects/snowfawn/fawn/ban.sh

echo "설정이 완료되었습니다. 이제 'fawn' 명령어로 스크립트를 실행할 수 있습니다."
