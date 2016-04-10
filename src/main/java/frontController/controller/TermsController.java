package frontController.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
public class TermsController {
	@RequestMapping(value = "/term", method = RequestMethod.GET)
	public String productListTV() {
		return "term";
	}

}
