package com.sw.desafio.appJuliaPaz.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sw.desafio.appJuliaPaz.model.domain.Forca;
import com.sw.desafio.appJuliaPaz.model.service.ForcaService;

@Controller
public class ForcaController {
	
	@Autowired //injeção de dependência par new forcaService
	private ForcaService forcaService;

	@GetMapping(value = "/")
	public String inicializa() {
		return "index";
	}
	
	@GetMapping(value = "/forca")
	public String telaCadastro() {
		return "forca/cadastro";
	}
	
	@GetMapping(value = "/forca/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		Forca forcaExcluido = forcaService.obterPorId(id);
		forcaService.excluir(id);
		
		model.addAttribute("mensagem", "Excluido com sucesso!");
		return obterLista(model);
	}
	
	@PostMapping(value = "/forca/incluir")
	public String incluir (Model model, Forca forca) {
		
		forcaService.incluir(forca); 
		
		model.addAttribute("mensagem", "Personagem "+ forca.getNome()+" cadastrado com sucesso!");
		return obterLista(model);
	}
	
	@GetMapping(value = "/forca/{id}/consultar")
	public String consultar(Model model, @PathVariable Integer id) {
		Forca forca = forcaService.obterPorId(id);
		
		model.addAttribute("forca", forca);
		return "forca/cadastro";
	}
	
	@GetMapping(value = "/forca/lista")
	public String obterLista(Model model) {
		
		
		model.addAttribute("personagens", forcaService.obterLista());
		
		return "/forca/lista";
	}
	@GetMapping(value = "/voltar")
	public String voltar() {
		return "redirect:/forca/lista";
	}
	
}
