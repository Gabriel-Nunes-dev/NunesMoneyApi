package com.nunes.nunesmoneyapi.repository;

import com.nunes.nunesmoneyapi.model.Pessoa;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PessoaRepository extends JpaRepository<Pessoa, Long> {
}
