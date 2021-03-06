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

public class StrutturaFotoDaoImpl extends AbstractDAO implements StrutturaFotoDao
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
	protected final String SQL_SELECT = "SELECT struttura_str_id, foto_id, foto_descrizione, foto_principale, foto_path FROM " + getTableName() + "";

	/** 
	 * Finder methods will pass this value to the JDBC setMaxRows method
	 */
	protected int maxRows;

	/** 
	 * SQL INSERT statement for this table
	 */
	protected final String SQL_INSERT = "INSERT INTO " + getTableName() + " ( struttura_str_id, foto_id, foto_descrizione, foto_principale, foto_path ) VALUES ( ?, ?, ?, ?, ? )";

	/** 
	 * SQL UPDATE statement for this table
	 */
	protected final String SQL_UPDATE = "UPDATE " + getTableName() + " SET struttura_str_id = ?, foto_id = ?, foto_descrizione = ?, foto_principale = ?, foto_path = ? WHERE foto_id = ?";

	/** 
	 * SQL DELETE statement for this table
	 */
	protected final String SQL_DELETE = "DELETE FROM " + getTableName() + " WHERE foto_id = ?";

	/** 
	 * Index of column struttura_str_id
	 */
	protected static final int COLUMN_STRUTTURA_STR_ID = 1;

	/** 
	 * Index of column foto_id
	 */
	protected static final int COLUMN_FOTO_ID = 2;

	/** 
	 * Index of column foto_descrizione
	 */
	protected static final int COLUMN_FOTO_DESCRIZIONE = 3;

	/** 
	 * Index of column foto_principale
	 */
	protected static final int COLUMN_FOTO_PRINCIPALE = 4;

	/** 
	 * Index of column foto_path
	 */
	protected static final int COLUMN_FOTO_PATH = 5;

	/** 
	 * Number of columns
	 */
	protected static final int NUMBER_OF_COLUMNS = 5;

	/** 
	 * Index of primary-key column foto_id
	 */
	protected static final int PK_COLUMN_FOTO_ID = 1;

	/** 
	 * Inserts a new row in the struttura_foto table.
	 */
	public StrutturaFotoPk insert(StrutturaFoto dto) throws StrutturaFotoDaoException
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
		
			stmt = conn.prepareStatement( "SELECT nextval('seq_strutture')" );
			rs = stmt.executeQuery();
			if (rs.next()) {
				dto.setFotoId( rs.getLong( 1 ) );
				rs.close();
				stmt.close();
			}
		
			stmt = conn.prepareStatement( SQL_INSERT );
			int index = 1;
			stmt.setLong( index++, dto.getStrutturaStrId() );
			stmt.setLong( index++, dto.getFotoId() );
			stmt.setString( index++, dto.getFotoDescrizione() );
			stmt.setInt( index++, dto.getFotoPrincipale() );
			stmt.setString( index++, dto.getFotoPath() );
			System.out.println( "Executing " + SQL_INSERT + " with DTO: " + dto );
			int rows = stmt.executeUpdate();
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
			reset(dto);
			return dto.createPk();
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new StrutturaFotoDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Updates a single row in the struttura_foto table.
	 */
	public void update(StrutturaFotoPk pk, StrutturaFoto dto) throws StrutturaFotoDaoException
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
			stmt.setLong( index++, dto.getStrutturaStrId() );
			stmt.setLong( index++, dto.getFotoId() );
			stmt.setString( index++, dto.getFotoDescrizione() );
			stmt.setInt( index++, dto.getFotoPrincipale() );
			stmt.setString( index++, dto.getFotoPath() );
			stmt.setLong( 6, pk.getFotoId() );
			int rows = stmt.executeUpdate();
			reset(dto);
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new StrutturaFotoDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Deletes a single row in the struttura_foto table.
	 */
	public void delete(StrutturaFotoPk pk) throws StrutturaFotoDaoException
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
			stmt.setLong( 1, pk.getFotoId() );
			int rows = stmt.executeUpdate();
			long t2 = System.currentTimeMillis();
			System.out.println( rows + " rows affected (" + (t2-t1) + " ms)" );
		}
		catch (Exception _e) {
			_e.printStackTrace();
			throw new StrutturaFotoDaoException( "Exception: " + _e.getMessage(), _e );
		}
		finally {
			ResourceManager.close(stmt);
			if (!isConnSupplied) {
				ResourceManager.close(conn);
			}
		
		}
		
	}

	/** 
	 * Returns the rows from the struttura_foto table that matches the specified primary-key value.
	 */
	public StrutturaFoto findByPrimaryKey(StrutturaFotoPk pk) throws StrutturaFotoDaoException
	{
		return findByPrimaryKey( pk.getFotoId() );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'foto_id = :fotoId'.
	 */
	public StrutturaFoto findByPrimaryKey(long fotoId) throws StrutturaFotoDaoException
	{
		StrutturaFoto ret[] = findByDynamicSelect( SQL_SELECT + " WHERE foto_id = ?", new Object[] {  new Long(fotoId) } );
		return ret.length==0 ? null : ret[0];
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'fot_id = :fotId'.
	 */
	public StrutturaFoto[] findWhereFotIdEquals(int fotId) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE fot_id = ? ORDER BY fot_id", new Object[] {  new Integer(fotId) } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'fot_foto = :fotFoto'.
	 */
	public StrutturaFoto[] findWhereFotFotoEquals(byte[] fotFoto) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE fot_foto = ? ORDER BY fot_foto", new Object[] { fotFoto } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'fot_descrizione = :fotDescrizione'.
	 */
	public StrutturaFoto[] findWhereFotDescrizioneEquals(String fotDescrizione) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE fot_descrizione = ? ORDER BY fot_descrizione", new Object[] { fotDescrizione } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'fot_principale = :fotPrincipale'.
	 */
	public StrutturaFoto[] findWhereFotPrincipaleEquals(int fotPrincipale) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE fot_principale = ? ORDER BY fot_principale", new Object[] {  new Integer(fotPrincipale) } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria ''.
	 */
	public StrutturaFoto[] findAll() throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " ORDER BY foto_id", null );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaFoto[] findByStruttura(long strutturaStrId) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE struttura_str_id = ?", new Object[] {  new Long(strutturaStrId) } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'foto_id = :fotoId'.
	 */
	public StrutturaFoto[] findWhereFotoIdEquals(long fotoId) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE foto_id = ? ORDER BY foto_id", new Object[] {  new Long(fotoId) } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaFoto[] findWhereStrutturaStrIdEquals(long strutturaStrId) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE struttura_str_id = ? ORDER BY struttura_str_id", new Object[] {  new Long(strutturaStrId) } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'foto_descrizione = :fotoDescrizione'.
	 */
	public StrutturaFoto[] findWhereFotoDescrizioneEquals(String fotoDescrizione) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE foto_descrizione = ? ORDER BY foto_descrizione", new Object[] { fotoDescrizione } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'foto_principale = :fotoPrincipale'.
	 */
	public StrutturaFoto[] findWhereFotoPrincipaleEquals(int fotoPrincipale) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE foto_principale = ? ORDER BY foto_principale", new Object[] {  new Integer(fotoPrincipale) } );
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the criteria 'foto_path = :fotoPath'.
	 */
	public StrutturaFoto[] findWhereFotoPathEquals(String fotoPath) throws StrutturaFotoDaoException
	{
		return findByDynamicSelect( SQL_SELECT + " WHERE foto_path = ? ORDER BY foto_path", new Object[] { fotoPath } );
	}

	/**
	 * Method 'StrutturaFotoDaoImpl'
	 * 
	 */
	public StrutturaFotoDaoImpl()
	{
	}

	/**
	 * Method 'StrutturaFotoDaoImpl'
	 * 
	 * @param userConn
	 */
	public StrutturaFotoDaoImpl(final java.sql.Connection userConn)
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
		return "struttura_foto";
	}

	/** 
	 * Fetches a single row from the result set
	 */
	protected StrutturaFoto fetchSingleResult(ResultSet rs) throws SQLException
	{
		if (rs.next()) {
			StrutturaFoto dto = new StrutturaFoto();
			populateDto( dto, rs);
			return dto;
		} else {
			return null;
		}
		
	}

	/** 
	 * Fetches multiple rows from the result set
	 */
	protected StrutturaFoto[] fetchMultiResults(ResultSet rs) throws SQLException
	{
		Collection resultList = new ArrayList();
		while (rs.next()) {
			StrutturaFoto dto = new StrutturaFoto();
			populateDto( dto, rs);
			resultList.add( dto );
		}
		
		StrutturaFoto ret[] = new StrutturaFoto[ resultList.size() ];
		resultList.toArray( ret );
		return ret;
	}

	/** 
	 * Populates a DTO with data from a ResultSet
	 */
	protected void populateDto(StrutturaFoto dto, ResultSet rs) throws SQLException
	{
		dto.setStrutturaStrId( rs.getLong( COLUMN_STRUTTURA_STR_ID ) );
		dto.setFotoId( rs.getLong( COLUMN_FOTO_ID ) );
		dto.setFotoDescrizione( rs.getString( COLUMN_FOTO_DESCRIZIONE ) );
		dto.setFotoPrincipale( rs.getInt( COLUMN_FOTO_PRINCIPALE ) );
		dto.setFotoPath( rs.getString( COLUMN_FOTO_PATH ) );
	}

	/** 
	 * Resets the modified attributes in the DTO
	 */
	protected void reset(StrutturaFoto dto)
	{
	}

	/** 
	 * Returns all rows from the struttura_foto table that match the specified arbitrary SQL statement
	 */
	public StrutturaFoto[] findByDynamicSelect(String sql, Object[] sqlParams) throws StrutturaFotoDaoException
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
			throw new StrutturaFotoDaoException( "Exception: " + _e.getMessage(), _e );
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
	 * Returns all rows from the struttura_foto table that match the specified arbitrary SQL statement
	 */
	public StrutturaFoto[] findByDynamicWhere(String sql, Object[] sqlParams) throws StrutturaFotoDaoException
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
			throw new StrutturaFotoDaoException( "Exception: " + _e.getMessage(), _e );
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
