package com.nunes.nunesmoneyapi.repository;

import com.nunes.nunesmoneyapi.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaRepository extends JpaRepository <Categoria, Long> {
}
