
package org.modelo;

/**
 * Nombre de la clase:Jornada
 * Fecha:14/10/2017
 * version:1.0
 * Copyright:ITCA-FEPADE
 * @author Ale Gomez, Alexander Lue, Carlos Paniagua
 */
public class Jornada 
{
    private int idJornada;
    private int numJornada;
    private String fechaInicio;
    private String fechaFin;
    private int numPartidoDif;
    private String fechaParDif;
    private int idPartido;

    public Jornada() {
    }

    public Jornada(int idJornada, int numJornada, String fechaInicio, String fechaFin, int numPartidoDif, String fechaParDif, int idPartido) {
        this.idJornada = idJornada;
        this.numJornada = numJornada;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.numPartidoDif = numPartidoDif;
        this.fechaParDif = fechaParDif;
        this.idPartido = idPartido;
    }

    public int getIdJornada() {
        return idJornada;
    }

    public void setIdJornada(int idJornada) {
        this.idJornada = idJornada;
    }

    public int getNumJornada() {
        return numJornada;
    }

    public void setNumJornada(int numJornada) {
        this.numJornada = numJornada;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    public int getNumPartidoDif() {
        return numPartidoDif;
    }

    public void setNumPartidoDif(int numPartidoDif) {
        this.numPartidoDif = numPartidoDif;
    }

    public String getFechaParDif() {
        return fechaParDif;
    }

    public void setFechaParDif(String fechaParDif) {
        this.fechaParDif = fechaParDif;
    }

    public int getIdPartido() {
        return idPartido;
    }

    public void setIdPartido(int idPartido) {
        this.idPartido = idPartido;
    }

    
    
}
