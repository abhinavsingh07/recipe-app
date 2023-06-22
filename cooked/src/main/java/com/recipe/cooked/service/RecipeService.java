package com.recipe.cooked.service;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.recipe.cooked.model.RecipeAutoComplete;
import com.recipe.cooked.model.ResponseAsRecipe;
import com.recipe.cooked.model.Recipe;
import com.recipe.cooked.model.ResponseAsResult;

@Service
public class RecipeService {
	private static final String API_KEY = "8a35a72edef6471980c39f6068200ce2";
	
	private String[] mealTypes= {"main course","bread","breakfast","dessert","soup","snack","beverage","drink","salad","sauce"};
	
	@Autowired
	private RestTemplate restTemplate;

	public List<RecipeAutoComplete> getAutoCompleteSearch(String search, int number) {

		List<RecipeAutoComplete> list = restTemplate
				.getForObject("/autocomplete?apiKey=" + API_KEY + "&query=" + search + "&number=" + number, List.class);
		System.out.print("getAutoCompleteSearch::hit=" + list.size());
		return list;
	}

	public List<Recipe> searchRecipe(String queryParams) {

		List<Recipe> list = restTemplate.getForObject("/complexSearch?apiKey=" + API_KEY + "&" + queryParams,
				ResponseAsResult.class).getResults();
		System.out.println("searchRecipe::hit=" + list.size());
		return list;
	}
	
	public List<Recipe> getRecipeInfo(int recipeId) {

		Recipe response = restTemplate.getForObject("/"+recipeId+"/information?apiKey=" + API_KEY,
				Recipe.class);
		System.out.println("getRecipeInfo::hit");
		return Arrays.asList(response);
	}
	
	public List<Recipe> getRandomRecipes(int number) {
		String mealType=mealTypes[new Random().nextInt(mealTypes.length)];
		ResponseAsRecipe response = restTemplate.getForObject("/random?apiKey=" + API_KEY+"&limitLicense=true&tags="+mealType+"&number="+number,
				ResponseAsRecipe.class);
		System.out.println("getRandomRecipes::hit"+response.getRecipes().size());
		return response.getRecipes();
	}
}
