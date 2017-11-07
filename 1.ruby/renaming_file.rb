# 파일명 바꾸기
# 1. 해당 폴더로 들어간다
# 2. 폴더 안을 돌면서 파일들의 이름을 가져온다.. 
# 3. 이름을 바꾼다 "1.txt" -> "samsung1.txt".


# 1. 해당 폴더로 들어간다
Dir.chdir("src")

# 2. files라는 배열 안에 바꾸고자 하는 모든 파일 이름들을 넣는다.
puts Dir.entries(Dir.pwd)

# 3. 
# Dir.foreach(Dir.pwd) do |name|
#     puts name
#     #File.reaname("원래 이름", "새파일이름")
# end

files = Dir.entries(Dir.pwd).reject do |name|
        name[0] == '.'
    end
    
files.each do |f|
    File.rename(f, "samsung" + f)
end