package com.nunes.nunesmoneyapi.controller;

import com.nunes.nunesmoneyapi.event.RecursoCriadoEvent;
import com.nunes.nunesmoneyapi.model.Categoria;
import com.nunes.nunesmoneyapi.repository.CategoriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/categorias")
public class CategoriaController {

    @Autowired
    private CategoriaRepository categoriaRepository;

    @Autowired
    ApplicationEventPublisher publisher;

//    Método que lista categorias existentes
    @GetMapping
    public List<Categoria> listar() {
        return categoriaRepository.findAll();
    }

//    Método que insere categorias
    @PostMapping
    public ResponseEntity<Categoria> criar(@Valid @RequestBody Categoria categoria, HttpServletResponse response) {
    Categoria categoriaSalva = categoriaRepository.save(categoria);

    publisher.publishEvent(new RecursoCriadoEvent(this, response, categoriaSalva.getCodigo()));

    return ResponseEntity.status(HttpStatus.CREATED).body(categoriaSalva);
}


//    Método que busca categoria específica a partir do código
    @GetMapping("/{codigo}")
    public ResponseEntity<Categoria> buscarPeloCodigo(@PathVariable Long codigo) {
        return this.categoriaRepository.findById(codigo).map(categoria -> ResponseEntity.ok(categoria))
                .orElse(ResponseEntity.notFound().build());
    }

}
