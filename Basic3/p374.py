#파일 삭제하기
import os

if os.path.exists("./Basic3/new_file1.txt"):
  os.remove("./Basic3/new_file1.txt")
else:
  print("삭제할 파일이 없어요")
  
#폴더만들기
if os.path.exists("./Basic3/mm"):
   print("이미 폴더가 있어요")
   os.rename("./Basic3/mm","./Basic3/new_mm")
   #폴더 삭제하기
if os.path.exists("./Basic3/new_mm"):
  os.rmdir("./Basic3/new_mm")
  

