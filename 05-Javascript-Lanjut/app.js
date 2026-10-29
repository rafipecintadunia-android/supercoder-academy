// 05 - JS Lanjut - Hari 8-10 - Fetch API & LocalStorage
async function loadData(){
  const res = await fetch('https://api.github.com/users/rafipecintadunia-android');
  const data = await res.json();
  console.log(data);
}
loadData();
