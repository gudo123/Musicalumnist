# 프로젝트에 대해

뮤지컬에 대해 이야기를 나누고 짧은 줄거리를 볼 수 있는 CRUD입니다.
뮤지컬과 칼럼니스트를 혼합한 단어로 '뮤지컬럼니스트'라 정했습니다.

첫 페이지는 Musicalumnist.html으로, 중간의 제목을 누르면 index.jsp로 이동합니다.

index.jsp에서는 뮤지컬을 1 ~ 20위까지 4x5 배열로 구성했으며, 1 ~ 3위는 금, 은, 동으로 테두리를 표현했습니다.
각각의 뮤지컬을 누르면 reviews.jsp로 넘어가게 됩니다. 해당 jsp에서는 DB에 저장되어 있는 짧은 줄거리를 확인할 수 있고, 각 작품에 대한 이야기를 나눌 수 있는 리뷰 생성을 할 수 있으며 기존의 리뷰들을 수정 및 삭제를 할 수 있습니다.

삭제를 누르게 되면 deleteReview.jsp이 작동하여 리뷰가 삭제가 되고
수정을 누르게 되면 리뷰를 수정 할 수 있는 editReview.jsp로 이동하게 되고 버튼을 누르면 updater.jsp가 작동하게 됩니다.

DB는 musicaldb로 테이블은 musicals, details, reviews로 구성되어 있습니다. 
PK는 id로 설정했으며, details와 reviews의 FK는 musical_id로 musicals의 id를 받게끔 하였습니다.
DB는 root에 비밀번호 041140입니다.

css에서 사용된 폰트는 창원단감아삭체, 국민연금체, 돌기마요고딕을 사용하였으며
body에 검은색을 사용하였고, 제목과 부제목엔 각각 #EA445A, #74F0ED에 흰색 그림자를 두어 입체감을 나타냈습니다.

학기 프로젝트
