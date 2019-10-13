# scan_script_EachData

- やりたいこと
任意のスクリプトによる処理を、複数のファイルに対して実行する。

- 利点
$ script file1  
-> output1 が出力する script があった場合、  

$ script file1 file2 file3 ...  
-> output1 output2 output3 ... が出力するようにしたい。  

script の argc を見て、引数の数によって処理を変えれば良いが、  
全てに同じ機能を入れるのが面倒。  

scan_script_EachData.csh を使えば、  
$ ./scan_script_EachData.csh script file1 file2 file3 ...  
-> output1 output2 output3 ... が出力して楽が出来る。
