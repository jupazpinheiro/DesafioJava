package com.sw.desafio.appJuliaPaz.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sw.desafio.appJuliaPaz.model.domain.Forca;

@Repository
public interface ForcaRepository extends CrudRepository<Forca, Integer> {

}
