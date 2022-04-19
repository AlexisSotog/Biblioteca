package cl.desafiolatam.booklet.app.ui.delegate;

import java.util.List;

import cl.desafiolatam.booklet.app.ui.dto.LibroDto;

public interface LibroDelegate {
	public List<LibroDto> getLibros();
	public List<LibroDto> addLibro(LibroDto libroDTO);
	public List<LibroDto> deleteLibro(int i);
	public List<LibroDto> updateLibro(LibroDto libroDTO);
}
