#!/bin/bash

PURPLE_BG='\033[48;5;98m'
SELECT_BG='\033[38;5;196m\033[48;5;192m'
NO_COLOR='\033[0m'

##################### 버전관리 start

version_index="0.0.1"


# 버전 체크
if [ "$1" = "check_version" ]; then
    echo "$version_index"
    exit 1
fi

github_repo_version=$(curl -s "https://snowfawn.github.io/fawn/fawn.sh" | bash -s -- check_version)

if [ "$version_index" != "$github_repo_version" ]; then
    echo "레포지토리 버전과 틀립니다."
    echo -e "1 : 레포지토리 버전으로 덮어쓰기 ${PURPLE_BG} (do ' some.sh' not '. some.sh') ${NO_COLOR} "
    echo "2 : 그냥 종료"
    echo "3 : 기존 스크립트 실행"
    read choose_index
    if [ "$choose_index" == "1" ]; then
        script_path=$(realpath "$0")
        curl -o $script_path "https://snowfawn.github.io/fawn/fawn.sh"
        exit 1
    elif [ "$choose_index" == "2" ]; then
        return 1
    fi
fi

##################### 버전관리 end



echo "hello fawn"