/*
 * This source file was generated by FireStorm/DAO.
 * 
 * If you purchase a full license for FireStorm/DAO you can customize this header file.
 * 
 * For more information please visit http://www.codefutures.com/products/firestorm
 */

package com.mysecretwish.jdbc;

import com.mysecretwish.dao.*;
import com.mysecretwish.factory.*;
import com.mysecretwish.dto.*;
import com.mysecretwish.exceptions.*;
import java.sql.Connection;
import java.util.Collection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

public class CategorieEsperienzaDaoImpl extends AbstractDAO implements CategorieEsperienzaDao
{
	/** 
	 * The factory class for this DAO has two versions of the create() method - one that
takes no arguments and one that takes a Connection argument. If the Connection version
is chosen then the connection will be stored in this attribute and will be used by all
calls to this DAO, otherwise a new Connection will be allocated for each operation.
	 */
	protected java.sql.Connection userConn;

	/** 
	 * All finder methods in this class use this SELECT constant to build their queries
	 */
	protected final String SQL_SELECT = "SELECT cat_id, cat_descrizione FROM " + getTableName() + "";

	/** 
	 * Finder methods will pass this value to the JDBC setMaxRows method
	 */
	protected int maxRows;

	/** 
	 * SQL INSERT statement for this table
	 */
	protected final String SQL_INSERT = "INSERT INTO " + getTableName() + " ( cat_id, cat_descrizione ) VALUES ( ?, ? )";

	/** 
	 * SQL UPDATE statement for this table
	 */
	protected final String SQL_UPDATE = "UPDATE " + getTableName() + " SET cat_id = ?, cat_descrizione = ? WHERE cat_id = ?";

	/** 
	 * SQL DELETE statement for this table
	 */
	protected final String SQL_DELETE = "DELETE FROM " + getTableName() + " WHERE cat_id = ?";

	/** 
	 * Index of column cat_id
	 */
	protected static final int COLUMN_CAT_ID = 1;

	/** 
	 * Index of column cat_descrizione
	 */
	protected static final int COLUMN_CAT_DESCRIZIONE = 2;

	/** 
	 * Number of columns
	 */
	protected static final int NUMBER_OF_COLUMNS = 2;

	/** 
	 * Index of primary-key column cat_id
	 */
	protected static final int PK_COLUMN_CAT_ID = 1;

	/** 
	 * Inserts a new row in the categorie_esperienza table.
	 */
	public CategorieEsperienzaPk insert(CategorieEsperienza dto) throws CategorieEsperienzaDaoException
	{
		long t1 = System.currentTimeMillis();
		// declare variables
		final boolean isConnSupplied = (userConn != null);
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			// get the user-specified connection or get a connection from the ResourceManager
			conn = isConnSupplied ? userConn : ResourceManager.getConnection();
		
			stmt = conn.prepareStatement( "SELECT nextval('seq_tabelle_dominio')" );
			rs = stmt.executeQuery();
			if (rs.next()) {
				dto.setCatId( rs.getLong( 1 ) );
				rs.close();
				stmt.close();
			}
		
			stmt = conn.prepareStatement( SQL_INSERT );
			int index = 1;
			stmt.setLong( index++, dto.getCatId() );
			stmt.setString( index++, dto.getCatDescrizione() );
			System.out.println( "Executing " + SQL_INSERT + " with DTO: " + dto );
			int rows = stmt.executeUpdate();
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
			reset(dto);
			return dto.createPk();
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new CategorieEsperienzaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Updates a single row in the categorie_esperienza table.
	 */
	public void update(CategorieEsperienzaPk pk, CategorieEsperienza dto) throws CategorieEsperienzaDaoException
	{
		long t1 = System.currentTimeMillis();
		// declare variables
		final boolean isConnSupplied = (userConn != null);
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			// get the user-specified connection or get a connection from the ResourceManager
			conn = isConnSupplied ? userConn : ResourceManager.getConnection();
		
			System.out.println( "Executing " + SQL_UPDATE + " with DTO: " + dto );
			stmt = conn.prepareStatement( SQL_UPDATE );
			int index=1;
			stmt.setLong( index++, dto.getCatId() );
			stmt.setString( index++, dto.getCatDescrizione() );
			stmt.setLong( 3, pk.getCatId() );
			int rows = stmt.executeUpdate();
			reset(dto);
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new CategorieEsperienzaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Deletes a single row in the categorie_esperienza table.
	 */
	public void delete(CategorieEsperienzaPk pk) throws CategorieEsperienzaDaoException
	{
		long t1 = System.currentTimeMillis();
		// declare variables
		final boolean isConnSupplied = (userConn != null);
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			// get the user-specified connection or get a connection from the ResourceManager
			conn = isConnSupplied ? userConn : ResourceManager.getConnection();
		
			System.out.println( "Executing " + SQL_DELETE + " with PK: " + pk );
			stmt = conn.prepareStatement( SQL_DELETE );
			stmt.setLong( 1, pk.getCatId() );
			int rows = stmt.executeUpdate();
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new CategorieEsperienzaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Returns the rows from the categorie_esperienza table that matches the specified primary-key value.
	 */
	public CategorieEsperienza findByPrimaryKey(CategorieEsperienzaPk pk) throws CategorieEsperienzaDaoException
	{
		return findByPrimaryKey( pk.getCatId() );
	}

	/** 
	 * Returns all rows from the categorie_esperienza table that match the criteria 'cat_id = :catId'.
	 */
	public CategorieEsperienza findByPrimaryKey(long catId) throws CategorieEsperienzaDaoException
	{
		CategorieEsperienza ret[] = findByDynamicSelect( SQL_SELECT + " WHERE cat_id = ?", new Object[] {  new Long(catId) } );
		return ret.length==0 ? null : ret[0];
	}

	/** 
	 * Returns all rows from the categorie_esperienza table that match the criteria ''.
	 */
	public CategorieEsperienza[] findAll() throws CategorieEsperienzaDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " ORDER BY cat_id", null );
	}

	/** 
	 * Returns all rows from the categorie_esperienza table that match the criteria 'cat_id = :catId'.
	 */
	public CategorieEsperienza[] findWhereCatIdEquals(long catId) throws CategorieEsperienzaDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE cat_id = ? ORDER BY cat_id", new Object[] {  new Long(catId) } );
	}

	/** 
	 * Returns all rows from the categorie_esperienza table that match the criteria 'cat_descrizione = :catDescrizione'.
	 */
	public CategorieEsperienza[] findWhereCatDescrizioneEquals(String catDescrizione) throws CategorieEsperienzaDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE cat_descrizione = ? ORDER BY cat_descrizione", new Object[] { catDescrizione } );
	}

	/**
	 * Method 'CategorieEsperienzaDaoImpl'
	 * 
	 */
	public CategorieEsperienzaDaoImpl()
	{
	}

	/**
	 * Method 'CategorieEsperienzaDaoImpl'
	 * 
	 * @param userConn
	 */
	public CategorieEsperienzaDaoImpl(final java.sql.Connection userConn)
	{
		this.userConn = userConn;
	}

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows)
	{
		this.maxRows = maxRows;
	}

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows()
	{
		return maxRows;
	}

	/**
	 * Method 'getTableName'
	 * 
	 * @return String
	 */
	public String getTableName()
	{
		return "categorie_esperienza";
	}

	/** 
	 * Fetches a single row from the result set
	 */
	protected CategorieEsperienza fetchSingleResult(ResultSet rs) throws SQLException
	{
		if (rs.next()) {
			CategorieEsperienza dto = new CategorieEsperienza();
			populateDto( dto, rs);
			return dto;
		} else {
			return null;
		}
		
	}

	/** 
	 * Fetches multiple rows from the result set
	 */
	protected CategorieEsperienza[] fetchMultiResults(ResultSet rs) throws SQLException
	{
		Collection resultList = new ArrayList();
		while (rs.next()) {
			CategorieEsperienza dto = new CategorieEsperienza();
			populateDto( dto, rs);
			resultList.add( dto );
		}
		
		CategorieEsperienza ret[] = new CategorieEsperienza[ resultList.size() ];
		resultList.toArray( ret );
		return ret;
	}

	/** 
	 * Populates a DTO with data from a ResultSet
	 */
	protected void populateDto(CategorieEsperienza dto, ResultSet rs) throws SQLException
	{
		dto.setCatId( rs.getLong( COLUMN_CAT_ID ) );
		dto.setCatDescrizione( rs.getString( COLUMN_CAT_DESCRIZIONE ) );
	}

	/** 
	 * Resets the modified attributes in the DTO
	 */
	protected void reset(CategorieEsperienza dto)
	{
	}

	/** 
	 * Returns all rows from the categorie_esperienza table that match the specified arbitrary SQL statement
	 */
	public CategorieEsperienza[] findByDynamicSelect(String sql, Object[] sqlParams) throws CategorieEsperienzaDaoException
	{
		// declare variables
		final boolean isConnSupplied = (userConn != null);
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			// get the user-specified connection or get a connection from the ResourceManager
			conn = isConnSupplied ? userConn : ResourceManager.getConnection();
		
			// construct the SQL statement
			final String SQL = sql;
		
		
			System.out.println( "Executing " + SQL );
			// prepare statement
			stmt = conn.prepareStatement( SQL );
			stmt.setMaxRows( maxRows );
		
			// bind parameters
			for (int i=0; sqlParams!=null && i<sqlParams.length; i++ ) {
				stmt.setObject( i+1, sqlParams[i] );
			}
		
		
			rs = stmt.executeQuery();
		
			// fetch the results
			return fetchMultiResults(rs);
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new CategorieEsperienzaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(rs);
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Returns all rows from the categorie_esperienza table that match the specified arbitrary SQL statement
	 */
	public CategorieEsperienza[] findByDynamicWhere(String sql, Object[] sqlParams) throws CategorieEsperienzaDaoException
	{
		// declare variables
		final boolean isConnSupplied = (userConn != null);
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			// get the user-specified connection or get a connection from the ResourceManager
			conn = isConnSupplied ? userConn : ResourceManager.getConnection();
		
			// construct the SQL statement
			final String SQL = SQL_SELECT + " WHERE " + sql;
		
		
			System.out.println( "Executing " + SQL );
			// prepare statement
			stmt = conn.prepareStatement( SQL );
			stmt.setMaxRows( maxRows );
		
			// bind parameters
			for (int i=0; sqlParams!=null && i<sqlParams.length; i++ ) {
				stmt.setObject( i+1, sqlParams[i] );
			}
		
		
			rs = stmt.executeQuery();
		
			// fetch the results
			return fetchMultiResults(rs);
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new CategorieEsperienzaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(rs);
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

}