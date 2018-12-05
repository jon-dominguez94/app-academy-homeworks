function fetchSearchGiphys (searchItem) {
  return $.ajax({
    method: "GET",
    url: "http://api.giphy.com/v1/gifs/search?q=${searchItem}&api_key=dc6zaTOxFJmzC&limit=2"
  });
}

export default fetchSearchGiphys;