## What to build

1. 랜덤하게 로또 번호 6개를 뽑아서,
2. 이번주 로또 번호와 비교하여,
3. 몇 등인지 알려주는 프로그램.

## Direction

### 1. 자동 추첨 번호 고르기
  * my_numbers 이라는 배열에 1..45 에서 6개의 랜덤한 숫자를 뽑아 정렬하여 저장한다.

### 2. web 에서 가져온 정보를 정리하기.
* 우리에게 필요한 건, 이번 주 로또 추첨 번호들 + 보너스 번호 뿐이다.

* 받아온 정보를 다음과 같이 정리한다.

  1. drw_numbers 라는 배열에, 이번 주 추첨 번호 6개를 저장한다.

  2. bonus_number 변수에 이번 주 보너스 번호를 저장한다.

### 3. 랜덤으로 뽑은 번호와 실제 추첨 번호를 비교하기
*  #### 겹치는 번호 저장하기.
  * match_numbers 라는 배열에 랜덤 추첨번호와 이번주 당첨번호 중에서 겹치는 번호를 저장한다. (보너스 번호는 제외한다.)

* #### 로또 당첨 규칙.
  * 1등 : 번호 6개가 모두 같을 경우

  * 2등 : 번호 6개 중 5개가 같고 보너스 번호가 맞은 경우

  * 3등 : 번호 6개 중 5개가 같을 경우

  * 4등 : 번호 6개 중 4개가 같을 경우

  * 5등 : 번호 6개 중 3개가 같을 경우

  * 그 외 : 꽝

### 4. 사용자에게 보여주기.

* drw_numbers 와 bonus_number 를 보여준다.

* my_numbers 를 보여준다.

* match_numbers 를 보여준다.

* 몇 등인지 결과를 보여준다.

* 출력 결과 예시.

<pre><code>
  이번주 로또 번호는 [1, 2, 3, 9, 12, 23] 이고, 보너스 번호는 10 입니다.
  추첨한 로또 번호는 [4, 9, 12, 17, 28, 37] 입니다.
  겹치는 번호는 [9, 12] 입니다.
  결과는 꽝 입니다.
</code></pre>


### 5. 참고

##### 가져온 JSON 정보를 hash로 파싱 했을 때. (743 회차)
<pre><code>
{
    "bnusNo" => 10,                    // 보너스 번호 => 10
    "firstWinamnt" => 2608641000,      // 1등 당첨 금액 => 2608641000 원
    "totSellamnt" => 73436852000,      // 총 판매 금액 => 73436852000 원
    "returnValue" => "success",        // 요청 결과 => 성공
    "drwtNo1" => 15,                   // 1번 번호 => 15
    "drwtNo2" => 19,                   // 2번 번호 => 19
    "drwtNo3" => 21,                   // 3번 번호 => 21
    "drwtNo4" => 34,                   // 4번 번호 => 34
    "drwtNo5" => 41,                   // 5번 번호 => 41
    "drwtNo6" => 44,                   // 6번 번호 => 44
    "drwNoDate" => "2017-02-25",       // 추첨한 날짜 => 2017년 2월 25일
    "drwNo" => 743,                    // 추첨 회차 => 743회차
    "firstPrzwnerCo" => 7              // 1등 당첨자 수 => 7명
}
</code></pre>
