let barrier;
{
  let data = {name: "shibata", password: "hogehoge"};
  barrier = function(){
    return data;
  };
}
console.log(barrier());
