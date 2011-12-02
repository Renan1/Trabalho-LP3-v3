
package br.cesjf.lp3.dominio;

/**
 *
 * @author Fernando
 */
public class IMC {
    
   protected double altura = 0;
   protected double massa = 0;
   protected double resultado = 0;

   public IMC() {
   }

   public double calculaIMC(){
       
      resultado=(massa/(altura*altura));
      return resultado;
      
   }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public double getMassa() {
        return massa;
    }

    public void setMassa(double massa) {
        this.massa = massa;
    }

    public double getResultado() {
        return resultado;
    }

    public void setResultado(double resultado) {
        this.resultado = resultado;
    }

   
   

}

