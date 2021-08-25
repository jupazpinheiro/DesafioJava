package com.sw.desafio.appJuliaPaz.model.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.desafio.appJuliaPaz.model.domain.Forca;
import com.sw.desafio.appJuliaPaz.model.repository.ForcaRepository;

@Service
public class ForcaService {
	
	@Autowired
	private ForcaRepository forcaRepository;
	public List<Forca> obterLista(){
		return (List<Forca>) forcaRepository.findAll();
	}
	public void incluir (Forca forca) {
		forcaRepository.save(forca);
	}
	public void excluir (Integer id) {
		forcaRepository.deleteById(id);
	}
	public Forca obterPorId(Integer id) {
		return forcaRepository.findById(id).orElse(null);
	}
}
