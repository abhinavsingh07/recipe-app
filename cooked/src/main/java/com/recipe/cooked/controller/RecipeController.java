package com.recipe.cooked.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.recipe.cooked.model.RecipeAutoComplete;
import com.recipe.cooked.model.Recipe;
import com.recipe.cooked.model.ResponseAsResult;
import com.recipe.cooked.service.RecipeService;

import jakarta.websocket.server.PathParam;

@Controller
public class RecipeController {

	@Autowired
	private RecipeService recipeService;

//	@ResponseBody
	@GetMapping("/")
	public ModelAndView show() {
		ModelAndView model = new ModelAndView();
		//List<Result> allRecipeList = recipeService.getRandomRecipes(9);
		List<Recipe> randomRecipeList = recipeService.getRandomRecipes(6);
		model.addObject("randomRecipeList", randomRecipeList);
		//List<Result> bannerRecipeList=allRecipeList.subList(0,3);
		//model.addObject("bannerRecipeList", bannerRecipeList);
		model.setViewName("index");
		return model;
	}

	@GetMapping("/searchAutoComplete")
	public List<RecipeAutoComplete> getAutoCompleteTags(
			@RequestParam(value = "search", required = true) String search) {
		return recipeService.getAutoCompleteSearch(search,6);
	}

	@PostMapping("/recipes")
	public ModelAndView viewAllRecipe(@RequestParam(value = "query", required = true) String searchRecipe) {
		String qParam="query="+searchRecipe+"&addRecipeInformation=true";
		ModelAndView model = new ModelAndView();
		List<Recipe> list = recipeService.searchRecipe(qParam);
		model.addObject("listOfRecipes", list);
		model.setViewName("recipes");
		return model;
	}

	@GetMapping("/recipeView/{id}")
	public ModelAndView viewRecipeInfo(@PathVariable(value = "id") int recipeId) {
		ModelAndView model = new ModelAndView();
		List<Recipe> recipe = recipeService.getRecipeInfo(recipeId);
		model.addObject("recipeResult", recipe);
		model.setViewName("recipeInfo");
		return model;
	}

}
