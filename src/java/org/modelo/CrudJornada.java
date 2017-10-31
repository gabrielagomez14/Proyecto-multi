
package org.modelo;

import java.util.*;
import java.sql.*;
import org.conexion.Conexion;

/**
 * Nombre de la clase:CrudJornada
 * Fecha:17/10/2017
 * Version:1.0
 * Copyright:ITCA-FEPADE
 * @author Ale Gomez, Alexander Lue, Carlos Paniagua
 */
public class CrudJornada extends Conexion
{
    private PreparedStatement pre;
    private ResultSet res;
    private String sql;
    
    public List<Jornada>view()throws Exception
    {
        List<Jornada>ljr=new ArrayList<>();
        try 
        {
            this.conectar();
            sql="select * from jornada";
            pre=this.getCon().prepareCall(sql);
            res=pre.executeQuery();
            while (res.next()) 
            {                
                Jornada jor=new Jornada();
                jor.setIdJornada(res.getInt("idjornada"));
                jor.setNumJornada(res.getInt("numjornada"));
                jor.setFechaInicio(res.getString("fechainicio"));
                jor.setFechaFin(res.getString("fechafin"));
                jor.setNumPartidoDif(res.getInt("numpardiferidos"));
                jor.setFechaParDif(res.getString("fechapardiferido"));
                jor.setIdPartido(res.getInt("idpartido"));
                ljr.add(jor);
            }
        } catch (Exception e) 
        {
            throw e;
        }
        return ljr;
    }
    
    public void add(Jornada jor)throws Exception
    {
        try 
        {
            this.conectar();
            sql="INSERT INTO public.jornada(\n" 
            +"idjornada, numjornada, fechainicio, fechafin, numpardiferidos, fechapardiferido, idpartido)\n" 
            +"VALUES (?, ?, ?, ?, ?, ?, ?);";
            pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, jor.getIdJornada());
            pre.setInt(2, jor.getNumJornada());
            pre.setString(3, jor.getFechaInicio());
            pre.setString(4, jor.getFechaFin());
            pre.setInt(5, jor.getNumPartidoDif());
            pre.setString(6, jor.getFechaParDif());
            pre.setInt(7, jor.getIdPartido());
            pre.executeUpdate();
        } catch (Exception e) 
        {
            throw e;
        }
    }
    
    public void update(Jornada jor)throws Exception
    {
        try 
        {
           this.conectar();
           sql="UPDATE public.jornada\n"
            +"SET numjornada=?, fechainicio=?, fechafin=?, numpardiferidos=?, fechapardiferido=?, idpartido=?\n"
            +"WHERE idjornada=?";
            pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, jor.getNumJornada());
            pre.setString(2, jor.getFechaInicio());
            pre.setString(3, jor.getFechaFin());
            pre.setInt(4, jor.getNumPartidoDif());
            pre.setString(5, jor.getFechaParDif());
            pre.setInt(6, jor.getIdPartido());
            pre.setInt(7, jor.getIdJornada());
            pre.executeUpdate();
        } catch (Exception e) 
        {
            throw e;
        }
    }
    
    public void delete(Jornada jor)throws Exception
    {
        try 
        {
            this.conectar();
            sql="DELETE FROM public.jornada\n" 
                +"WHERE idjornada=?";
            pre=this.getCon().prepareStatement(sql);
            pre.setInt(1, jor.getIdJornada());
            pre.executeUpdate();
        } catch (Exception e) 
        {
            throw e;
        }
    }
    
    public int ContarJor(Object obj)throws Exception
    {
        int cont=0;
        try 
        {
            this.conectar();
            sql="select count(*) as cantidad from jornada";
            pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while (res.next()) 
            {                
                cont=res.getInt("cantidad")+1;
            }
        } catch (Exception e) 
        {
            throw e;
        }
        return cont;
    }
    
    public List<Partido>viewPar()throws Exception
   {
       List<Partido>lpar=new ArrayList<>();
       try 
       {
         this.conectar();
         sql="select * from partido";
         pre=this.getCon().prepareCall(sql);
         res=pre.executeQuery();
           while (res.next()) 
           {               
               Partido par=new Partido();
               par.setIdPartido(res.getInt("idpartido"));
               par.setNombre(res.getString("nombrepar"));
               par.setTipoPartido(res.getString("tipopartido"));
               par.setNumGoles(res.getInt("numgoles"));
               par.setFecha(res.getString("fechapar"));
               par.setIdEquipo(res.getInt("idequipo"));
               par.setEqVisitante(res.getString("eqvisitante"));
               par.setEqLocal(res.getString("eqlocal"));
               par.setMarcadorVisi(res.getInt("marcadorvisitante"));
               par.setMarcadorLocal(res.getInt("marcadorlocal"));
               par.setIdEquipo(res.getInt("idequipo"));
               par.setIdDetalle(res.getInt("iddetalle"));
               lpar.add(par);
           }
       } catch (Exception e) 
       {
           throw e;
       }
       return lpar;
   }
}
