#1. 특정 폴더를 들어간다.
#2. 파일을 생성한다.
#3. 파일을 작성한다
# Dir.methods, [].methods, 1.methods Directory, Array, Numeric에서 쓸 수 있는 method들을 확인할 수 있는 코드

puts Dir.pwd

Dir.chdir("src")
puts Dir.pwd

# 30개의 파일을 만든다. 1.txt ~ 30.txt까지 만든다.
# 1.txt : "1번째 내용" 2.txt : "2번째 내용" ... 30.txt "30번째 내용"
#내 풀이(코드)
[*1..30].each do |i| File.open(i.to_s + ".txt", 'w+') {|f| f.write(i.to_s + "번째 내용")} end

#강사님 풀이
#1. 파일을 만든다 / 2. 반복한다.
File.open("out.txt", "w") do |f|
    f.write("잘 써지는 감?")
end
#파일을 읽고 쓰고 지우고 등등 할 때 모두 File.open


30.times do |i| #i는 index라서 0부터 시작하는 문제 발생
    i += 1
    File.open(i.to_s + ".txt", "w") do |file|
        file.write(i.to_s + "번째 내용")
    end
end
