package com.nunes.nunesmoneyapi.repository;

import com.nunes.nunesmoneyapi.model.Lancamento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface LancamentoRepository extends JpaRepository<Lancamento, Long> {
}
