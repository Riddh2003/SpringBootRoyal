package com.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Bean.ArrayBean;

@Controller
public class FindArrayIndexController {
	
	@GetMapping("/algo")
	public String findIndex() {
		return "FindSumOfIndex";
	}
	
	@PostMapping("/findindex")
	public String index(ArrayBean arrayBean,Model model) {
		String str[] = arrayBean.getArray().split(",");
		int arr[] = new int[str.length];
		for(int i = 0;i<str.length;i++) {
			arr[i] = Integer.valueOf(str[i]);
		}
		int result[] = findpair(arr, arrayBean.getTarget());
		model.addAttribute("array", arrayBean);
		if(result != null) {
			model.addAttribute("ans",result);			
		}
		return "FindIndex";
	}
	
	public static int[] findpair(int[] array,int target) {
		Map<Integer,Integer> map = new HashMap<Integer,Integer>();
		for(int  i = 0;i<array.length;i++) {
			int complement = target - array[i];
			if(map.containsKey(complement)) {
				return new int[] {map.get(complement),i};
			}
			map.put(array[i],i);
		}
		return null;
	}
}
