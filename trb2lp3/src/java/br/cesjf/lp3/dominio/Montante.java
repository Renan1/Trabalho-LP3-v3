/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.dominio;

/**
 *
 * @author curso
 */
public class Montante {
    
    protected int mes;
    protected Double valor;

    /**
     * Get the value of valor
     *
     * @return the value of valor
     */
    public Double getValor() {
        return valor;
    }

    /**
     * Set the value of valor
     *
     * @param valor new value of valor
     */
    public void setValor(Double valor) {
        this.valor = valor;
    }

    /**
     * Get the value of mes
     *
     * @return the value of mes
     */
    public int getMes() {
        return mes;
    }

    /**
     * Set the value of mes
     *
     * @param mes new value of mes
     */
    public void setMes(int mes) {
        this.mes = mes;
    }

    
}
