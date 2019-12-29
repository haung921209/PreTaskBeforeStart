# 2019 NHN TOAST Rookies pretask

[![Build Status](https://travis-ci.com/haung921209/PreTaskBeforeStart.svg?branch=master)](https://travis-ci.org/haung921209/PreTaskBeforeStart)


1. 개발환경
   * 자바 8+
   * SpringMVC
   * Tomcat8.5
   * JSP
   * Mybatis
   * MySQL




2. 구현스펙
    * 이메일, 비밀번호, 본문을 입력 받아 디비에 추가

        ![스크린샷 2019-12-29 오후 11 39 13](https://user-images.githubusercontent.com/14533484/71558291-ce20bd80-2a94-11ea-9ca2-cff0562da828.png)

        ![DB 생성시 스팩](https://user-images.githubusercontent.com/14533484/71558469-1e008400-2a97-11ea-8699-0d950d714662.png)

    * 글 등록 시 현재 시각도 기록

        ![readView모습](https://user-images.githubusercontent.com/14533484/71558297-ded13380-2a94-11ea-8162-7e3d23ddf3c4.png)

    * DB에 있는 내용을 최신 글이 맨 위에 오도록 페이징 없이 출력

        ![listView모습](https://user-images.githubusercontent.com/14533484/71558294-d7118f00-2a94-11ea-9b03-c0c4df104127.png)

        
    * 비밀번호 입력 받아 방명록 글 수정 가능

        * 수정
        ![수정시 경고창](https://user-images.githubusercontent.com/14533484/71558303-edb7e600-2a94-11ea-990a-36c1800eeaf2.png)

        * 삭제

        ![삭제창](https://user-images.githubusercontent.com/14533484/71558306-f5778a80-2a94-11ea-8118-e5d63324227e.png)


        ![삭제창 with 경고창](https://user-images.githubusercontent.com/14533484/71558308-fc9e9880-2a94-11ea-8d8d-5608dbdeb4ba.png)


    * 수정 시 별도 테이블 컬럼에 수정 시각 기록

        ![게시글 사진 - 수정날짜 다름](https://user-images.githubusercontent.com/14533484/71558605-9ddb1e00-2a98-11ea-9964-8764b252229d.png)


    * 이메일이 올바른지 서버쪽 클라이언트 쪽 모두에서 체크

        * 클라이언트
        ![스크린샷 2019-12-29 오후 11 38 16](https://user-images.githubusercontent.com/14533484/71558285-bcd7b100-2a94-11ea-8fd7-dc7928e0e6ac.png)

            - alert 함수를 이용하여, 입력에 대해 유효함 확인

        * 서버
        ![스크린샷 2019-12-30 오전 12 02 36](https://user-images.githubusercontent.com/14533484/71558509-b5fe6d80-2a97-11ea-85a3-53318713e2ec.png)

            - 별도의 경고 없음.









