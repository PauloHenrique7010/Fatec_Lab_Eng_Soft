/*
** This file contains the persistence class.
** Each class attribute is known as persistence attribute
 */
package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author paulo
 */

@Entity(name="usuario")
public class Usuario { //persistence class
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  long id;           //persistence attribute
    @Column(name="nome_usuario")
    private  String nomeUsuario;       //persistence attribute

    @Column(name="senha")
    private String senha;

    public Usuario(){}          //zero parameter constructor
    public String getNomeUsuario() {   
        return nomeUsuario;
    }
    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }  

    public String getSenha(){
        return senha;
    }

    public void setSenha(String senha){
        this.senha = senha;
    }
}