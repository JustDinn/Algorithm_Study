import sys
from collections import defaultdict

# 입력 받기
word = sys.stdin.readline().strip().upper()

# 문자 개수를 저장할 딕셔너리
char_count = defaultdict(int)

# 문자 개수 세기
for char in word:
    char_count[char] += 1

# 최빈 문자 찾기
max_count = 0
max_char = ''
is_multi_max_char = False

for char, count in char_count.items():
    if count > max_count:
        max_count = count
        max_char = char
        is_multi_max_char = False  # 새로운 최빈 문자가 나왔으므로 초기화
    elif count == max_count:
        is_multi_max_char = True  # 공동 최빈 문자 존재

# 결과 출력
print("?") if is_multi_max_char else print(max_char)