/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import java.util.*;
import modelos.Conexion;
import modelos.Cursos;

/**
 *
 * @author Luis
 */
public class CursosDAOImpl implements ICursosDAO {

    @Override
    public boolean registrar(Cursos curso) {
        Conexion co = new Conexion();
        String xcod = co.generarCodigo("cursos", "codigo");
        boolean registrar = false;
        Statement stm = null;
        Connection con = null;
        String sql = "INSERT INTO cursos values(" + xcod + ","
                + "'" + curso.getNombre() + "'," + curso.getCosto() + ","
                + "'" + curso.getFec_ini() + "','" + curso.getFec_fin() + "',"
                + curso.getDuracion() + "," + curso.getSesiones() + ","
                + curso.getCapacidad() + "," + curso.getInscritos() + ","
                + "'" + curso.getEstado() + "')";
        try {
            con = co.Conectar();
            stm = con.createStatement();
            stm.execute(sql);
            registrar = true;
            stm.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error: Clase CursosDAOImpl, método registrar");
            e.printStackTrace();
        }
        return registrar;
    }

    @Override
    public List<Cursos> obtener() {
        Connection con = null;
        Statement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM cursos ORDER BY codigo";
        List<Cursos> listaCursos = new ArrayList<>();

        try {
            Conexion co = new Conexion();
            con = co.Conectar();
            stm = con.createStatement();
            rs = stm.executeQuery(sql);

            while (rs.next()) {
                Cursos curso = new Cursos();
                curso.setCodigo(rs.getInt("codigo"));
                curso.setNombre(rs.getString("nombre"));
                curso.setCosto(rs.getDouble("costo"));
                curso.setFec_ini(rs.getDate("fec_ini"));
                curso.setFec_fin(rs.getDate("fec_fin"));
                curso.setDuracion(rs.getInt("duracion"));
                curso.setSesiones(rs.getInt("sesiones"));
                curso.setCapacidad(rs.getInt("capacidad"));
                curso.setInscritos(rs.getInt("inscritos"));
                curso.setEstado(rs.getString("estado"));

                listaCursos.add(curso);
            }
            stm.close();
            rs.close();
            con.close();

        } catch (SQLException e) {
            System.out.println("Error: Clase CursosDAOImpl, método obtener");
        }

        return listaCursos;
    }

    @Override
    public boolean actualizar(Cursos curso) {
        Conexion co = new Conexion();
        boolean actualizar = false;
        Statement stm = null;
        Connection con = null;
        String sql = "UPDATE cursos SET "
                + "nombre='" + curso.getNombre() + "', costo='" + curso.getCosto() + "', "
                + "fec_ini='" + curso.getFec_ini() + "', fec_fin='" + curso.getFec_fin() + "', "
                + "duracion='" + curso.getDuracion() + "', sesiones='" + curso.getSesiones() + "', "
                + "capacidad='" + curso.getCapacidad() + "', inscritos='" + curso.getInscritos() + "', "
                + "estado='" + curso.getEstado() + "' "
                + "WHERE codigo = " + curso.getCodigo();
        try {
            con = co.Conectar();
            stm = con.createStatement();
            stm.execute(sql);
            actualizar = true;
            stm.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("Error: Clase CursosDAOImpl, método actualizar");
            e.printStackTrace();
        }
        return actualizar;
    }

    @Override
    public boolean eliminar(String[] codigos) {
        Conexion co = new Conexion();
        boolean eliminado = false;
        Statement stm = null;
        Connection con = null;

        try {
            con = co.Conectar();
            stm = con.createStatement();

            for (String codigo : codigos) {
                String sql = "DELETE FROM cursos WHERE codigo = '" + codigo + "'";
                stm.addBatch(sql);
            }

            int[] resultados = stm.executeBatch();

            // Verificar los resultados
            for (int resultado : resultados) {
                if (resultado == Statement.EXECUTE_FAILED) {
                    eliminado = false;
                    break;
                }
            }

            stm.close();
            con.close();

            eliminado = true; // Si no hubo errores, se considera eliminado correctamente

        } catch (SQLException e) {
            System.out.println("Error: Clase CursosDAOImpl, método eliminar");
            e.printStackTrace();
        }

        return eliminado;
    }

    @Override
    public Cursos buscar(int codigo) {
        Connection co = null;
        Statement stm = null;
        ResultSet rs = null;
        String sql = "SELECT * FROM cursos WHERE codigo=" + codigo;
        Cursos curso = new Cursos();
        try {
            Conexion con = new Conexion();
            co = con.Conectar();
            stm = co.createStatement();
            rs = stm.executeQuery(sql);
            while (rs.next()) {
                curso.setCodigo(rs.getInt(1));
                curso.setNombre(rs.getString(2));
                curso.setCosto(rs.getDouble(3));
                curso.setFec_ini(rs.getDate(4));
                curso.setFec_fin(rs.getDate(5));
                curso.setDuracion(rs.getInt(6));
                curso.setSesiones(rs.getInt(7));
                curso.setCapacidad(rs.getInt(8));
                curso.setInscritos(rs.getInt(9));
                curso.setEstado(rs.getString(10));
            }
            stm.close();
            rs.close();
            co.close();
        } catch (SQLException e) {
            System.out.println("Error: Clase CursosDAOImpl, método buscar");
            e.printStackTrace();
        }
        return curso;
    }

}
