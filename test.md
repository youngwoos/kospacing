test
================

`kospacing` 패키지의 `spacing()`함수는 문장을 입력하면 띄어쓰기가 된 문장을 반환합니다.

패키지 설치
-----------

``` r
install.packages("devtools")
library(devtools)
install_github("youngwoos/kospacing")
```

사용법
------

``` r
library(kospacing)
spacing("아래와같은방식으로API를사용할수있으며,호출건수에대해서별도의제한은없으나,1회 호출에200글자로글자수를제한하고있다.")
```

    ## [1] "아래와 같은 방식으로 API를 사용할 수 있으며, 호출 건수에 대해서 별도의 제한은 없으나, 1회 호출에 200글자로 글자수를 제한하고 있다. "

#### Data Frame에 적용

``` r
df <- data.frame(var1 = c("최근음성인식정확도가높아짐에따라",
                          "많은음성데이터가Text로변환되고분석되기시작했는데,",
                          "이를위해잘동작하는띄어쓰기엔진은거의필수적인게되어버렸다"))

df$var2 <- spacing(df$var1)
df
```

    ##                                                       var1
    ## 1                         최근음성인식정확도가높아짐에따라
    ## 2        많은음성데이터가Text로변환되고분석되기시작했는데,
    ## 3 이를위해잘동작하는띄어쓰기엔진은거의필수적인게되어버렸다
    ##                                                                 var2
    ## 1                              최근 음성인식 정확도가 높아짐에 따라 
    ## 2           많은 음성 데이터가 Text로 변환되고 분석되기 시작했는데, 
    ## 3 이를 위해 잘 동작하는 띄어쓰기엔진은 거의 필수적인 게 되어 버렸다

참고 자료
---------

`kospacing`은 전희원님이 개발한 [한글 자동 띄어쓰기 API](http://freesearch.pe.kr/archives/4647)를 쉽게 활용할 수 있도록 만든 패키지입니다. [박찬엽님의 코드](https://mrchypark.github.io/r/httr/api/한글-띄어쓰기-API-이용하기.html)를 참고하여 함수를 작성했습니다.

-   [전희원, 딥러닝 기반 한글 자동 띄어쓰기 API 공개](http://freesearch.pe.kr/archives/4647)
-   [박찬엽, 한글 띄어쓰기 API 이용하기](https://mrchypark.github.io/r/httr/api/한글-띄어쓰기-API-이용하기.html)
