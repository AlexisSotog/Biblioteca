package cl.desafiolatam.booklet.app.ui.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.desafiolatam.booklet.app.ui.delegate.LibroDelegate;
import cl.desafiolatam.booklet.app.ui.dto.LibroDto;

@Controller
public class LibroController {

	@Autowired
	private LibroDelegate libroDelegate;
	
	@RequestMapping(value = "/Booklet", method = {RequestMethod.GET, RequestMethod.POST})
	public String holaMundo(ModelMap model, @ModelAttribute("libroDTO") LibroDto libroDto) {
		model.addAttribute("libroDto", libroDto);
		//, @ModelAttribute("listaPersonaDTO") List<PersonaDTO> listaPersonaDTO
		//model.addAttribute("listaLibroDtoJson", libroDelegate.getLibros());
		return "index";
	}
	
}
