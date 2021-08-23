function solution(str, ending) {
  const str_arr = str.split("");
  const ending_arr = ending.split("");
  const splice_length = str_arr.length - ending_arr.length;

  const str_str = str_arr.splice(splice_length, ending.length).join("");
  const ending_str = ending_arr.join("");

  if (str_str == ending_str) {
    return true;
  }
  return false;
}

console.log(solution("abcde", "cde"));
