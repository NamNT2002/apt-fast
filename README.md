Hướng dẫn cài đặt apt-fast trên Ubuntu
======================================
Bước 1:
==
sudo apt-get install git -y
==
Bước 2:
==
git clone https://github.com/NamNT2002/apt-fast
==
Bước 3:
============================
cd apt-fast && sh apt-fast.sh
============================
Chú ý: nếu bạn muốn thay thế apt-get hoàn toàn thành apt-fast thì bạn thực hiện thêm lệnh sau:

===========================================================
echo "alias apt-get='apt-fast'" >> ~/.bashrc
source ~/.bashrc    
===========================================================
