package cl.desafiolatam.booklet.app.ui.delegate.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



import cl.desafiolatam.booklet.app.ui.delegate.LibroDelegate;
import cl.desafiolatam.booklet.app.ui.dto.LibroDto;
import cl.desafiolatam.booklet.app.ui.service.LibroService;

@Component("libroDelegate")
public class LibroDelegateImpl implements LibroDelegate {

	@Autowired
	private LibroService libroService;
	
	@Override
	public List<LibroDto> getLibros() {
		// TODO Auto-generated method stub
		return libroService.getLibros();
	}

	@Override
	public List<LibroDto> addLibro(LibroDto libroDTO) {
		// TODO Auto-generated method stub
		if (libroService.addLibro(libroDTO)) {
			return libroService.getLibros();
		}else {
			return null;
		}
		
	}

	@Override
	public List<LibroDto> deleteLibro(int i) {
		// TODO Auto-generated method stub
		if (libroService.deleteLibro(i)) {
			return libroService.getLibros();
		}else {
			return null;
		}
	}

	@Override
	public List<LibroDto> updateLibro(LibroDto libroDTO) {
		// TODO Auto-generated method stub
		if (libroService.updateLibro(libroDTO)) {
			return libroService.getLibros();
		}else {
			return null;
		}
	}
	
	

}
