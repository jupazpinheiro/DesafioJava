package com.sw.desafio.appJuliaPaz.model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Forca {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome; 
	private String planeta;
	private int categoria; 
	private int idade;
	private boolean lightSide; //+lightside / darkside
	
	public Forca() {
		this.planeta = "Tatoine";
		this.categoria = 2;
		this.lightSide = true;
				
	}
	public Forca(String nome, int idade) {
		this();
		this.nome = nome;
		this.idade = idade;
	}
	
	@Override
	public String toString() {		
		return "Sou "+nome+" do planeta "+planeta+" de categoria "+categoria+" com "+idade+ " do "+lightSide+" da força.";
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getPlaneta() {
		return planeta;
	}
	public void setPlaneta(String planeta) {
		this.planeta = planeta;
	}
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	public boolean isLightSide() {
		return lightSide;
	}
	public void setLightSide(boolean lightSide) {
		this.lightSide = lightSide;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
}
