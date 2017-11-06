puts (1..45).to_a.sample(6) # 1~45까지의 숫자들을 array로 바꿔서 6개 숫자 random sampling
puts [*1..45].sample(6) # 1~45까지의 숫자 배열에서 6개 숫자 random sampling

menu = ["회덥밥", "스테이크", "까르보나라", "갈비살"]
print menu.sample

print ["회덥밥", "스테이크", "까르보나라", "갈비살"].sample