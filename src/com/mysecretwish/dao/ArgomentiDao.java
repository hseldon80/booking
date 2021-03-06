/*
 * This source file was generated by FireStorm/DAO.
 * 
 * If you purchase a full license for FireStorm/DAO you can customize this header file.
 * 
 * For more information please visit http://www.codefutures.com/products/firestorm
 */

package com.mysecretwish.dao;

import com.mysecretwish.dto.*;
import com.mysecretwish.exceptions.*;

public interface ArgomentiDao
{
	/** 
	 * Inserts a new row in the argomenti table.
	 */
	public ArgomentiPk insert(Argomenti dto) throws ArgomentiDaoException;

	/** 
	 * Updates a single row in the argomenti table.
	 */
	public void update(ArgomentiPk pk, Argomenti dto) throws ArgomentiDaoException;

	/** 
	 * Deletes a single row in the argomenti table.
	 */
	public void delete(ArgomentiPk pk) throws ArgomentiDaoException;

	/** 
	 * Returns the rows from the argomenti table that matches the specified primary-key value.
	 */
	public Argomenti findByPrimaryKey(ArgomentiPk pk) throws ArgomentiDaoException;

	/** 
	 * Returns all rows from the argomenti table that match the criteria 'arg_id = :argId'.
	 */
	public Argomenti findByPrimaryKey(long argId) throws ArgomentiDaoException;

	/** 
	 * Returns all rows from the argomenti table that match the criteria ''.
	 */
	public Argomenti[] findAll() throws ArgomentiDaoException;

	/** 
	 * Returns all rows from the argomenti table that match the criteria 'arg_id = :argId'.
	 */
	public Argomenti[] findWhereArgIdEquals(long argId) throws ArgomentiDaoException;

	/** 
	 * Returns all rows from the argomenti table that match the criteria 'arg_descrizione = :argDescrizione'.
	 */
	public Argomenti[] findWhereArgDescrizioneEquals(String argDescrizione) throws ArgomentiDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the argomenti table that match the specified arbitrary SQL statement
	 */
	public Argomenti[] findByDynamicSelect(String sql, Object[] sqlParams) throws ArgomentiDaoException;

	/** 
	 * Returns all rows from the argomenti table that match the specified arbitrary SQL statement
	 */
	public Argomenti[] findByDynamicWhere(String sql, Object[] sqlParams) throws ArgomentiDaoException;

}
