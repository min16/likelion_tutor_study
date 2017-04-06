require ('open-uri')        # 웹 페이지 open 에 필요.
require ('json')            # JSON을 Hash로 변환하는데 필요.

# page에 해당 웹 페이지를 열어서 저장.
page = open('http://www.nlotto.co.kr/common.do?method=getLottoNumber&drwNo=746')

# lotto_info 에 page 내용 (JSON 형식의 data) 을 읽어서 저장.
lotto_info = page.read

# lotto_hash 에 JSON 형식인 lotto_info 를 Hash 로 파싱(변환)하여 저장.
lotto_hash = JSON.parse(lotto_info)

puts lotto_hash    #=> JSON 데이터가 Hash 로 변환되어 출력.
