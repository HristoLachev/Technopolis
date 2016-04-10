package frontController.controller;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExeptionController {

	@RequestMapping(value = "/exeption", method = RequestMethod.GET)
	public String returnHome(HttpSession session) {
		return "exeption";
	}

}
