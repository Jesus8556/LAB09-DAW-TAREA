/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.List;
import modelos.Alumnos;
import modelos.Cursos;
import modelos.Matricula;

/**
 *
 * @author jesus
 */
public interface IMatriculaDAO {
    public List<Alumnos> buscarAlumnos(Alumnos alumno);
    public List<Matricula> buscarMatricula(Matricula matricula);
    public List<Cursos> buscarCursos();
    public List<Matricula> obtener();
    public boolean grabarMatricula(String[] datosMatricula, String codigoCursos[], String[] montos);
}
