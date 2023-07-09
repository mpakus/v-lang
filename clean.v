import os

fn main() {
  path := '/Users/mpak/Downloads/'
  files := os.ls(path)!
  exts := ['.mp4', '.mov', '.avi']

  for file in files {
    if os.file_ext(file).to_lower() in exts {
      println('- ${file}')
      os.rm('${path}/${file}')!
    }
  }
}