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

public class VincoliValiditaDaoImpl extends AbstractDAO implements VincoliValiditaDao
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
	protected final String SQL_SELECT = "SELECT viv_id, viv_descrizione FROM " + getTableName() + "";

	/** 
	 * Finder methods will pass this value to the JDBC setMaxRows method
	 */
	protected int maxRows;

	/** 
	 * SQL INSERT statement for this table
	 */
	protected final String SQL_INSERT = "INSERT INTO " + getTableName() + " ( viv_id, viv_descrizione ) VALUES ( ?, ? )";

	/** 
	 * SQL UPDATE statement for this table
	 */
	protected final String SQL_UPDATE = "UPDATE " + getTableName() + " SET viv_id = ?, viv_descrizione = ? WHERE viv_id = ?";

	/** 
	 * SQL DELETE statement for this table
	 */
	protected final String SQL_DELETE = "DELETE FROM " + getTableName() + " WHERE viv_id = ?";

	/** 
	 * Index of column viv_id
	 */
	protected static final int COLUMN_VIV_ID = 1;

	/** 
	 * Index of column viv_descrizione
	 */
	protected static final int COLUMN_VIV_DESCRIZIONE = 2;

	/** 
	 * Number of columns
	 */
	protected static final int NUMBER_OF_COLUMNS = 2;

	/** 
	 * Index of primary-key column viv_id
	 */
	protected static final int PK_COLUMN_VIV_ID = 1;

	/** 
	 * Inserts a new row in the vincoli_validita table.
	 */
	public VincoliValiditaPk insert(VincoliValidita dto) throws VincoliValiditaDaoException
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
				dto.setVivId( rs.getLong( 1 ) );
				rs.close();
				stmt.close();
			}
		
			stmt = conn.prepareStatement( SQL_INSERT );
			int index = 1;
			stmt.setLong( index++, dto.getVivId() );
			stmt.setString( index++, dto.getVivDescrizione() );
			System.out.println( "Executing " + SQL_INSERT + " with DTO: " + dto );
			int rows = stmt.executeUpdate();
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
			reset(dto);
			return dto.createPk();
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new VincoliValiditaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Updates a single row in the vincoli_validita table.
	 */
	public void update(VincoliValiditaPk pk, VincoliValidita dto) throws VincoliValiditaDaoException
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
			stmt.setLong( index++, dto.getVivId() );
			stmt.setString( index++, dto.getVivDescrizione() );
			stmt.setLong( 3, pk.getVivId() );
			int rows = stmt.executeUpdate();
			reset(dto);
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new VincoliValiditaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Deletes a single row in the vincoli_validita table.
	 */
	public void delete(VincoliValiditaPk pk) throws VincoliValiditaDaoException
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
			stmt.setLong( 1, pk.getVivId() );
			int rows = stmt.executeUpdate();
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new VincoliValiditaDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Returns the rows from the vincoli_validita table that matches the specified primary-key value.
	 */
	public VincoliValidita findByPrimaryKey(VincoliValiditaPk pk) throws VincoliValiditaDaoException
	{
		return findByPrimaryKey( pk.getVivId() );
	}

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria 'viv_id = :vivId'.
	 */
	public VincoliValidita findByPrimaryKey(long vivId) throws VincoliValiditaDaoException
	{
		VincoliValidita ret[] = findByDynamicSelect( SQL_SELECT + " WHERE viv_id = ?", new Object[] {  new Long(vivId) } );
		return ret.length==0 ? null : ret[0];
	}

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria ''.
	 */
	public VincoliValidita[] findAll() throws VincoliValiditaDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " ORDER BY viv_id", null );
	}

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria 'viv_id = :vivId'.
	 */
	public VincoliValidita[] findWhereVivIdEquals(long vivId) throws VincoliValiditaDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE viv_id = ? ORDER BY viv_id", new Object[] {  new Long(vivId) } );
	}

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria 'viv_descrizione = :vivDescrizione'.
	 */
	public VincoliValidita[] findWhereVivDescrizioneEquals(String vivDescrizione) throws VincoliValiditaDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE viv_descrizione = ? ORDER BY viv_descrizione", new Object[] { vivDescrizione } );
	}

	/**
	 * Method 'VincoliValiditaDaoImpl'
	 * 
	 */
	public VincoliValiditaDaoImpl()
	{
	}

	/**
	 * Method 'VincoliValiditaDaoImpl'
	 * 
	 * @param userConn
	 */
	public VincoliValiditaDaoImpl(final java.sql.Connection userConn)
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
		return "vincoli_validita";
	}

	/** 
	 * Fetches a single row from the result set
	 */
	protected VincoliValidita fetchSingleResult(ResultSet rs) throws SQLException
	{
		if (rs.next()) {
			VincoliValidita dto = new VincoliValidita();
			populateDto( dto, rs);
			return dto;
		} else {
			return null;
		}
		
	}

	/** 
	 * Fetches multiple rows from the result set
	 */
	protected VincoliValidita[] fetchMultiResults(ResultSet rs) throws SQLException
	{
		Collection resultList = new ArrayList();
		while (rs.next()) {
			VincoliValidita dto = new VincoliValidita();
			populateDto( dto, rs);
			resultList.add( dto );
		}
		
		VincoliValidita ret[] = new VincoliValidita[ resultList.size() ];
		resultList.toArray( ret );
		return ret;
	}

	/** 
	 * Populates a DTO with data from a ResultSet
	 */
	protected void populateDto(VincoliValidita dto, ResultSet rs) throws SQLException
	{
		dto.setVivId( rs.getLong( COLUMN_VIV_ID ) );
		dto.setVivDescrizione( rs.getString( COLUMN_VIV_DESCRIZIONE ) );
	}

	/** 
	 * Resets the modified attributes in the DTO
	 */
	protected void reset(VincoliValidita dto)
	{
	}

	/** 
	 * Returns all rows from the vincoli_validita table that match the specified arbitrary SQL statement
	 */
	public VincoliValidita[] findByDynamicSelect(String sql, Object[] sqlParams) throws VincoliValiditaDaoException
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
			throw new VincoliValiditaDaoException( "Exception: " + _e.getMessage(), _e );
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
	 * Returns all rows from the vincoli_validita table that match the specified arbitrary SQL statement
	 */
	public VincoliValidita[] findByDynamicWhere(String sql, Object[] sqlParams) throws VincoliValiditaDaoException
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
			throw new VincoliValiditaDaoException( "Exception: " + _e.getMessage(), _e );
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