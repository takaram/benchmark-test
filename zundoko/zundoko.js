// 配列からランダムに値を取り出す
function sample(arr) {
  const n = Math.floor(Math.random() * arr.length);
  return arr[n];
}

function zundoko() {
  const zundoko = ["ズン", "ドコ"];
  const target = ["ズン", "ズン", "ズン", "ズン", "ドコ"];
  const target_str = target.join('');
  const history = [];

  while (history.join('') != target_str) {
    let next = sample(zundoko);
    process.stdout.write(next);

    if (history.length >= target.length) {
      history.shift();
    }
    history.push(next);
  }
  console.log("キヨシ！");
}

for (let i = 0; i < 10000; i++) {
  zundoko();
}
