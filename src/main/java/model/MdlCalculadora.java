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

@Entity(name="calculadora")
public class MdlCalculadora { //persistence class
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  long id;           //persistence attribute
    @Column(name="conta_efetuada")
    private  String contaEfetuada;       //persistence attribute
    public MdlCalculadora(){}          //zero parameter constructor
    public String getContaEfetuada() {   
        return contaEfetuada;
    }
    public void setContaEfetuada(String contaEfetuada) {
        this.contaEfetuada = contaEfetuada;
    }
    public long getId() {
        return id;
    }
    public void setId(long id) {
        this.id = id;
    }  
}