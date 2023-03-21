require 'filesize'

w = File.open('size.csv', 'w')
w_all = File.open('size_all.csv', 'w')
size_all = 0
while gets
  (fn, cid) = $_.strip.split(',')
  size = `ipfs files stat --size /ipfs/#{cid}`.to_i
  size_all += size
  human = Filesize.from("#{size} B").pretty
  w.print [fn, cid, size, human].join(','), "\n"
  print [fn, cid, size, human].join(','), "\n"
end
w_all.print [size_all, Filesize.from("#{size_all} B").pretty].join(','), "\n"
print [size_all, Filesize.from("#{size_all} B").pretty].join(','), "\n"
w.close
w_all.close
