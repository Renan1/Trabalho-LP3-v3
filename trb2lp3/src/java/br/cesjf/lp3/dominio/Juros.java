
package br.cesjf.lp3.dominio;

/**
 *
 * @author fernando.lagrotta
 */
public class Juros {
    
    protected double taxa_juros = 0;
    protected double valor_inicial = 0;
    protected int meses = 0;
    protected double resultado = 0;    
    

public Juros() {
   }

public double calculaJuros(){
      
        
      resultado= valor_inicial*Math.pow(1+taxa_juros,meses);
      return resultado;
      
   }

    public int getMeses() {
        return meses;
    }

    public void setMeses(int meses) {
        this.meses = meses;
    }

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }

    public double getTaxa_juros() {
        return taxa_juros;
    }

    public void setTaxa_juros(double taxa_juros) {
        this.taxa_juros = taxa_juros;
    }

    public double getValor_inicial() {
        return valor_inicial;
    }

    public void setValor_inicial(double valor_inicial) {
        this.valor_inicial = valor_inicial;
    }

    

}