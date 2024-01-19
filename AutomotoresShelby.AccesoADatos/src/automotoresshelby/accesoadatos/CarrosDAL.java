/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package automotoresshelby.accesoadatos;

//@author OA

import java.util.*;
import java.sql.*;
import automotoresshelby.entidadesdenegocios.Carros;

public class CarrosDAL {
    static String obtenerCampos()
    {
        return "c.Id, c.Marca, c.Color, c.Modelo, c.Año, c.Precio";
    }
    
    private static String obtenerSelect(Carros pCarros)
    {
        String sql;
        sql = "Select ";
        if(pCarros.getTop_aux() > 0 && 
           ComunDB.TIPODB == ComunDB.TipoDB.SQLSERVER)
        {
            sql += "Top " + pCarros.getTop_aux() + " ";
        }
        sql += (obtenerCampos() + " From Carros c");
        return sql;
    }
    
    private static String agregarOrderBy(Carros pCarros)
    {
        String sql = " Order by c.Id Desc";
        if(pCarros.getTop_aux() > 0 && 
        ComunDB.TIPODB == ComunDB.TipoDB.MYSQL)
        {
            sql += "Limit " + pCarros.getTop_aux() + " ";
        }
        return sql;
    }
    
    public static int crear(Carros pCarros) throws Exception
    {
        int result;
        String sql;
        try(Connection conn = ComunDB.obtenerConexion();)
        {
            sql = "Insert Into Carros(Marca, Color, Modelo, Año, Precio ) Values(?,?,?,?,?)";
            try(PreparedStatement st = 
                ComunDB.createPreparedStatement(conn, sql);)
            {
                st.setString(1, pCarros.getMarca());
                st.setString(2, pCarros.getColor());
                st.setString(3, pCarros.getModelo());
                st.setString(4, pCarros.getAño());
                st.setString(5, pCarros.getPrecio());
                
                result = st.executeUpdate();
                st.close();
            }
            catch(SQLException ex)
            {
                throw ex;
            }
        }
        catch(SQLException ex)
        {
            throw ex;
        }
        return result;
    }
    
    public static int modificar(Carros pCarros) throws Exception 
    {
        int result;
        String sql;
        try(Connection conn = ComunDB.obtenerConexion();)
        {
            sql = "UPDATE Carros SET Marca = ?, Color = ?, Modelo = ?, Año = ?, Precio = ? WHERE Id=?";
            try(PreparedStatement ps = ComunDB.createPreparedStatement(conn, sql);)
            {
                ps.setString(1, pCarros.getMarca());
                ps.setString(2, pCarros.getColor());
                ps.setString(3, pCarros.getModelo());
                ps.setString(4, pCarros.getAño());
                ps.setString(5, pCarros.getPrecio());
                ps.setInt(6, pCarros.getId());
                result = ps.executeUpdate();
                ps.close();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        catch(SQLException ex)
        {
            throw ex;
        }
        return result;
    }
    
    public static int eliminar(Carros pCarros) throws Exception
    {
        int result;
        String sql;
        try(Connection conn = ComunDB.obtenerConexion();)
        {
            sql = "Delete From Carros Where Id = ?";
            try(PreparedStatement ps = ComunDB.createPreparedStatement(conn, sql);)
            {
                ps.setInt(1, pCarros.getId());
                result = ps.executeUpdate();
                ps.close();
            }
            catch(SQLException ex)
            {
                throw ex;
            }
        }
        catch(SQLException ex)
        {
            throw ex;
        }
        return result;
    }
    
    static int asignarDatosResultSet(Carros pCarros, ResultSet pResultSet, int pIndex) throws Exception
    {
        pIndex++;
        pCarros.setId(pResultSet.getInt(pIndex));
        pIndex++;
        pCarros.setMarca(pResultSet.getString(pIndex));
         pIndex++;
        pCarros.setColor(pResultSet.getString(pIndex));
         pIndex++;
        pCarros.setModelo(pResultSet.getString(pIndex));
         pIndex++;
        pCarros.setAño(pResultSet.getString(pIndex));
         pIndex++;
        pCarros.setPrecio(pResultSet.getString(pIndex));
        return pIndex;
    }
    
    private static void obtenerDatos(PreparedStatement pPS, ArrayList<Carros> pCarros) throws Exception
    {
        try(ResultSet resultset = ComunDB.obtenerResulSet(pPS);)
        {
            while(resultset.next())
            {
                Carros carros = new Carros();
                asignarDatosResultSet(carros,resultset,0);
                pCarros.add(carros);
            }
            resultset.close();
        }
        catch(SQLException ex)
        {
            throw ex;
        }
    }
    
    public static Carros obtenerPorId(Carros pCarros) throws Exception
    {
        Carros carros = new Carros();
        ArrayList<Carros> carross = new ArrayList();
        try(Connection conn = ComunDB.obtenerConexion();)
        {
            String sql = obtenerSelect(pCarros);
            sql += " Where Id = ?";
            try(PreparedStatement ps = ComunDB.createPreparedStatement(conn, sql);)
            {
                ps.setInt(1, pCarros.getId());
                obtenerDatos(ps, carross);
                ps.close();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        catch(SQLException ex)
        {
            throw ex;
        }
        if(carross.size() > 0)
        {
            carros = carross.get(0);
        }
        return carros;
    }

    public static ArrayList<Carros> obtenerTodos() throws Exception
    {
        Carros carros = new Carros();
        ArrayList<Carros> carross = new ArrayList();
        try(Connection conn = ComunDB.obtenerConexion();)
        {
            String sql = obtenerSelect(new Carros());
            sql += agregarOrderBy(new Carros());
            try(PreparedStatement ps = ComunDB.createPreparedStatement(conn, sql);)
            {
                obtenerDatos(ps, carross);
                ps.close();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        catch(SQLException ex)
        {
            throw ex;
        }
        
        return carross;
    }
    
    static void querySelect(Carros pCarros, ComunDB.UtilQuery pUtilQuery) throws Exception
    {
        PreparedStatement statement = pUtilQuery.getStatement();
        if(pCarros.getId() > 0)
        {
            pUtilQuery.AgregarWhereAnd(" c.Id = ? ");
            if(statement != null)
            {
                statement.setInt(pUtilQuery.getNumWhere(), 
                        pCarros.getId());
            }
        }
        
        if(pCarros.getMarca() != null && 
           pCarros.getMarca().trim().isEmpty() == false)
        {
            pUtilQuery.AgregarWhereAnd(" c.Marca Like ? ");
            if(statement != null)
            {
                statement.setString(pUtilQuery.getNumWhere(), 
                        "%" + pCarros.getMarca() + "%");
            }
        }
        
        if(pCarros.getColor() != null && 
           pCarros.getColor().trim().isEmpty() == false)
        {
            pUtilQuery.AgregarWhereAnd(" c.Color Like ? ");
            if(statement != null)
            {
                statement.setString(pUtilQuery.getNumWhere(), 
                        "%" + pCarros.getColor() + "%");
            }
        }
        
        if(pCarros.getModelo() != null && 
           pCarros.getModelo().trim().isEmpty() == false)
        {
            pUtilQuery.AgregarWhereAnd(" c.Modelo Like ? ");
            if(statement != null)
            {
                statement.setString(pUtilQuery.getNumWhere(), 
                        "%" + pCarros.getModelo() + "%");
            }
        }
        
       
        if(pCarros.getAño() != null && 
           pCarros.getAño().trim().isEmpty() == false)
        {
            pUtilQuery.AgregarWhereAnd(" c.Año Like ? ");
            if(statement != null)
            {
                statement.setString(pUtilQuery.getNumWhere(), 
                        "%" + pCarros.getAño() + "%");
            }
        }
        
        if(pCarros.getPrecio() != null && 
           pCarros.getPrecio().trim().isEmpty() == false)
        {
            pUtilQuery.AgregarWhereAnd(" c.Precio Like ? ");
            if(statement != null)
            {
                statement.setString(pUtilQuery.getNumWhere(), 
                        "%" + pCarros.getPrecio() + "%");
            }
        }
    }
    public static ArrayList<Carros> buscar(Carros pCarros) throws Exception
    {
        ArrayList<Carros> carros = new ArrayList();
        try(Connection conn = ComunDB.obtenerConexion();)
        {
            String sql = obtenerSelect(pCarros);
            ComunDB comundb = new ComunDB();
            ComunDB.UtilQuery utilQuery = 
            comundb.new UtilQuery(sql,null,0);
            querySelect(pCarros, utilQuery);
            sql = utilQuery.getSQL();
            sql += agregarOrderBy(pCarros);
            try(PreparedStatement ps = ComunDB.createPreparedStatement(conn, sql);)
            {
                utilQuery.setStatement(ps);
                utilQuery.setSQL(null);
                utilQuery.setNumWhere(0);
                querySelect(pCarros, utilQuery);
                obtenerDatos(ps, carros);
                ps.close();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        catch(SQLException ex)
        {
            throw ex;
        }
        
        return carros;
    }
}