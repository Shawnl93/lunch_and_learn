<div align="center">
  <h1>Lunch and Learn</h1>
  <img width="500" alt="lunch and learn" src="https://media1.giphy.com/media/fe1HeAafNr9qD0PUnR/giphy.gif?cid=6104955e2losblqq3b4xkzerkmeutz0t1yz3h6c4gws0itcx&rid=giphy.gif&ct=s">
</div

## Table of Contents
- [Project Overview](#project-overview)
- [Learning Goals](#learning-goals)
- [Built With](#built-with)
- [Api Keys](#api-key)

## Project Overview
Lunch and Learn is an application where you can eat your food and learn about it too!

## Learning Goals

-> Expose an API that aggregates data from multiple external APIs</br>
-> Expose an API that requires an authentication token</br>
-> Expose an API for CRUD functionality</br>
-> Determine completion criteria based on the needs of other developers</br>
-> Test both API consumption and exposure, making use of at least one mocking tool (VCR, Webmock, etc).</br>

## Built With
- Rails 5.2.8
- Ruby 2.7.4


## Setup

1. Clone the repository
2. cd into the root directory
3. Install gem packages: `bundle install`
4. Setup the database: `rails db:{drop,create,migrate}`
5. bundle exec figaro install

## api-key
[Edamam Recipe Search Api](https://developer.edamam.com/edamam-recipe-api)</br>
[Youtube Api](https://developers.google.com/youtube/v3/getting-started)</br>
[Unsplash Api](https://unsplash.com/documentation)</br>

## APIs

<details close>
<summary> Get a favorite </summary>
<br>

Request: <br>
```
GET /api/v1/favorites?api_key={key}
```

JSON Response Example:
```json
{
    "data": [
        {
            "id": "1",
            "type": "favorite",
            "attributes": {
                "recipe_title": "Crab Fried Rice (Khaao Pad Bpu)",
                "recipe_link": "https://www.tastingtable.com/.....",
                "country": "thailand",
                "created_at": "2023-01-18T02:09:10.429Z"
            }
        }
    ]
}
```
</details>

<details close>
<summary> Learn Resources </summary>
<br>

Request: <br>
```
GET /api/v1/learning_resources?country={country}
```

JSON Response Example:
```json
{
    "data": {
        "id": null,
        "type": "learning_resource",
        "attributes": {
            "country": "laos",
            "videos": {
                "title": "A Super Quick History of Laos",
                "youtube_video_id": "uw8hjVqxMXw"
            },
            "images": [
                {
                    "alt_tag": "time lapse photography of flying hot air balloon",
                    "url": "https://images.unsplash.com/photo-1540611025311-01df3cef54b5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=Mnw0MDAxNzB8MHwxfHNlYXJjaHwxfHxsYW9zfGVufDB8fHx8MTY3Mzk4MjM3MA&ixlib=rb-4.0.3&q=80&w=1080"
                }
            ]
        }
    }
}
```
</details>

<details close>
<summary> Get Recipes </summary>
<br>

Request: <br>
```
GET /api/v1/recipes?country={country}
```

JSON Response Example:
```json
{
    "data": [
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Andy Ricker's Naam Cheuam Naam Taan Piip (Palm Sugar Simple Syrup)",
                "url": "https://www.seriouseats.com/recipes/2013/11/andy-rickers-naam-cheuam-naam-taan-piip-palm-sugar-simple-syrup.html",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/611/61165abc1c1c6a185fe5e67167d3e1f0.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=63f52da1d49cf242a2d12202b70f907379cf177868f8d0cd1fab42af74c9e4a9"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "THAI COCONUT CREMES",
                "url": "https://food52.com/recipes/37220-thai-coconut-cremes",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/8cd/8cd5ec2ff6310a088761956e4e571219.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=a870d5aa80a6d269391685c7f6d83a7ff8ba4e57042dd1cc936a87644b9c6190"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Sriracha",
                "url": "http://www.jamieoliver.com/recipes/vegetables-recipes/sriracha/",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/cb5/cb5a93a9d2592f7aa5233c85f3728c15.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=806f151886b6d085456542c921ebcbad2dfc81b8939e4603f7d4c895ab98c5fb"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Hibiscus Tea Sorbet",
                "url": "https://www.epicurious.com/recipes/food/views/hibiscus-tea-sorbet-230783",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/b32/b32e6db02766c8b3f0921bc5eb34aec8.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=64f2ead0ffd2e50d4aa162b770974aaa5ca6c77851ff0693077ed422cae292c3"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Spicy Tamarind Caramel Recipe",
                "url": "http://www.seriouseats.com/recipes/2014/03/spicy-tamarind-caramel-sauce-with-cayenne.html",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/401/4018430a473784fd6599bc098b356cb5.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=bb7c238fe158f1e70472ef64d8f9f872c03b67cd43e7bfc7c2304c078eb9d85a"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Thai green prawn curry",
                "url": "http://www.bbc.co.uk/food/recipes/leelikolminicurrygre_12734",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/6c3/6c3df6dcb45286057913432ea632affa.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=29237c586b3b3b789b307c46678d0775796de37a26a5b62ff253e114288f4439"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Crab Fried Rice (Khaao Pad Bpu)",
                "url": "https://www.tastingtable.com/entry_detail/chefs_recipes/12214/Fried_rice_with_a_welcome_addition.htm",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/512/512defec203557af1175f7e2393b0ac3.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=5f66f2adb695a56507a4b9138f2b5d11aa9d1f45644ae03c1f4d6a3c6a533464"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Thai minced chicken salad",
                "url": "https://www.bbcgoodfood.com/recipes/thai-minced-chicken-salad",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/cde/cded26db113c1570d3c8864854e3d067.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=17402a8d88630fd4d6ca507c39baf23572c6b2e3fba69ba541889b671bb17c50"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Corn & Coconut Thai street food dessert",
                "url": "https://food52.com/recipes/28547-corn-coconut-thai-street-food-dessert",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/3c9/3c978c99e28259b48db5a3bed73c4e1c.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=0c9203e27ae5993b91b0853c3e40623f254367781b9049e5b06d84b795b222c7"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Crispy Fried Eggs Recipe",
                "url": "http://www.seriouseats.com/recipes/2016/06/crispy-fried-eggs-recipe.html",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/273/273b4112aa325d94a32b6cf1e1aeb07a.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=3d1078572e49ede58bc5fa5e3e1ac8d1fcc26ff0b98c67180d656c265c3ed971"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Thai Zucchini Salad (Larb)",
                "url": "http://www.eatingwell.com/recipe/280059/thai-zucchini-salad-larb/",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/079/07977c6c557c83854f1db342a1d27d1f?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=37fc3c0997ebcca80184cbb0ab8b2ffba86f96b1da034041f24f3ef60ea562d4"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Vegetable Pad Thai",
                "url": "http://www.cookstr.com/recipes/vegetable-pad-thai",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/7c5/7c52d02d7f7c39dc4307a09892e7d841.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=889a0c44225a3a91f046f2312a4dfbf9763f86f9f836a64617e54bd6c33c8e98"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Thai Curry",
                "url": "https://www.epicurious.com/recipes/food/views/thai-curry-367651",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/1ff/1ff057d26e846d94675785aab572e91f.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=8215ade88154465ccce1686158f60a559382b2a3b433167f5c44618e5230d757"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Chile-Lime Sauce",
                "url": "https://www.epicurious.com/recipes/food/views/chile-lime-sauce",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/bd8/bd8c7cfe690142c4807e7ff88b080ce5.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=2f27c0523e486b16f9b080e4a0cd05e6a37b688b6f90a76e55ef0e65c9c76a56"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Pumpkin in Sweet Coconut Cream (Fak Thong Kaeng Buat) Recipe",
                "url": "http://www.seriouseats.com/recipes/2012/11/my-thai-pumpkin-sweet-coconut-cream-recipe.html",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/8b2/8b23a73a7cf0c062d4cb7ea4f996479e.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=629987d4a40bec26043930ac797fa137390e96568bf6d62d42383b30331d81cb"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Minced Chicken and Cashew with Thai Basil",
                "url": "https://food52.com/recipes/5593-minced-chicken-and-cashew-with-thai-basil",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/b80/b807a1eba3d4a85e8f522fafdf9d7fb8.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=f848771d9b479209b09d088d9860eb9fb1264f821f78ccaeeaf1ad862a49a4f2"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Thai Noodle Stir-fry",
                "url": "http://www.cookstr.com/recipes/thai-noodle-stir-fry",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/62d/62d86c960be9c7eb1f242612128d0c7a.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=9fcbbb9beb8d854509db0094f6a97c3cbe7a9ee99fdb5c77c1432d36770dced2"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Sriracha Salt",
                "url": "https://www.epicurious.com/recipes/food/views/sriracha-salt",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/087/0873ec7012ed87c869f0678d758ff52f.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=a014a50fcc8e1e8e849247fd500d43684ebbc25daade1af33132da7c4b3f39ce"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Bananas in Coconut Milk Recipe",
                "url": "http://www.thedailymeal.com/bananas-coconut-milk-recipe",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/cfa/cfa212ad5fd50cc13986c9e835ce101f.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=74d1f2aac6cb2b8233bb8222df75b212c18cde56a70f47b0acd42a6d91d98bc2"
            }
        },
        {
            "id": null,
            "type": "recipes",
            "attributes": {
                "title": "Beet Larb with Quinoa",
                "url": "http://www.eatingwell.com/recipe/263921/beet-larb-with-quinoa/",
                "country": "thailand",
                "image": "https://edamam-product-images.s3.amazonaws.com/web-img/256/2561260d282bd7d31e28fb12f43242c4.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEOv%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQCwNlGENT8hw2Zf1M6znMPXZd8Oo01KGT8dTJTyiVNKBwIhAJSAoIKatQJRSHe4dEFGR8%2F3FZAqLwF4y%2FQ52ZyExtfJKswECFMQABoMMTg3MDE3MTUwOTg2IgzBCBQOGdb9USm%2BkM4qqQTZCIBIBIrMjrsY4hjUg%2BAUxcWg%2Fg2KFSl%2FXfq1oXGEU8aGM%2Bh5zkeUAauk8%2Fb93cgeTxdvlTqLll%2F6yNOt0VpONbzo6gieefs8EP35qHb9w2E1p9PpVpQUZP6nL4RGoVZTJbQ9oDi7jhRuzYEVg6uYAngHmYdrI9VSb6kkl7PPLmKgtp2tLvTn1HsBywxjcVqIUQF7KgfvYscltPmen%2FIng1dDgTHQx6MU6g%2FG6a5OuITGCIG58IYBkwISmA8YxGX5PC%2Bu71urZJdZ%2FoTD56zoDepCms%2FSm6tLWF%2BGylZIJTW8HtvULjABTHi2T2H4zfCa9C5tLMmc8R1Iis7WTZbeLqqKvNPOA1mZMZmryCSOusZEz1PHebjWJsWvWhus3tyEe9vkY5eWaRdNGBpcM%2FckIcE8nrwSxF5nOK9CcyfDTvnzY%2Bwr2D3wG9AaM8v4Ta0VvYYMIc%2Bv8QvEvQh22gWZEm8lx7jeM7n9d4%2Bd4qv8EawPpPg3RJlmtUpDDLjrKZHo%2BfHIiNuo%2FOpz3WOAuJOctz%2Fm%2FsW0smbGM6a8lOZgosH6hW2kIG81I7Hb6tucsiZWW%2BZx10ZeZaxw%2F9eSKbQdMczJck5QPCT7KoPbg%2FIl0x2tiK%2F%2BwBwHwnMk28szabnP%2BHxoIEG3w9U2s%2FxEOVWI%2B1YjuJrsP1QyRj6UIuGj01z1aoiRIavI73sbzmuntcmZy2%2FToGuqd3g7AqEPp0qKIcgDiBBdD7gDMOarnZ4GOqgBvYZXz4mlKt%2BubGP%2B22WAABdyghaFyFIgvbnaSGNqGfNYT357gQDvAA0tXrANEfEk8GTVKqzG0rSU38pW7b0lKmGxJg7WJ7Cn5DRCiPHU2c7BSGFdZdc0f%2FlS5uZlRO2tFjKwk2rHRoYagdQgSDQJ9UsZCU310Lwfe9AAov%2BIzmUgLLPtB0xsgaPGYhQYLFy6lf5uBvESB1yqXOSa53cP75y6p05WmhBk&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20230118T023956Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFUDGXR4L%2F20230118%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=9e874337066b836d0ede798c9d498df36b3126cd1a14ff32a4f24d20d8c6584e"
            }
        }
    ]
}
```
</details>

<details close>
<summary> Create Users </summary>
<br>

Request: <br>
```
POST /api/v1/users
```

JSON Response Example:
```json
{
    "data": {
        "id": "2",
        "type": "user",
        "attributes": {
            "name": "Athena Dao",
            "email": "please12341231@email.com",
            "api_key": "iE3vSeyuREGgJCQ2IfAI"
        }
    }
}
```
</details>

<details close>
<summary> Save Favorites </summary>
<br>

Request: <br>
```
POST /api/v1/favorites
```

JSON Response Example:
```json
{
    "success": "Favorite added successfully"
}
```
</details>
