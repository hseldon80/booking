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

public interface VincoliValiditaDao
{
	/** 
	 * Inserts a new row in the vincoli_validita table.
	 */
	public VincoliValiditaPk insert(VincoliValidita dto) throws VincoliValiditaDaoException;

	/** 
	 * Updates a single row in the vincoli_validita table.
	 */
	public void update(VincoliValiditaPk pk, VincoliValidita dto) throws VincoliValiditaDaoException;

	/** 
	 * Deletes a single row in the vincoli_validita table.
	 */
	public void delete(VincoliValiditaPk pk) throws VincoliValiditaDaoException;

	/** 
	 * Returns the rows from the vincoli_validita table that matches the specified primary-key value.
	 */
	public VincoliValidita findByPrimaryKey(VincoliValiditaPk pk) throws VincoliValiditaDaoException;

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria 'viv_id = :vivId'.
	 */
	public VincoliValidita findByPrimaryKey(long vivId) throws VincoliValiditaDaoException;

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria ''.
	 */
	public VincoliValidita[] findAll() throws VincoliValiditaDaoException;

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria 'viv_id = :vivId'.
	 */
	public VincoliValidita[] findWhereVivIdEquals(long vivId) throws VincoliValiditaDaoException;

	/** 
	 * Returns all rows from the vincoli_validita table that match the criteria 'viv_descrizione = :vivDescrizione'.
	 */
	public VincoliValidita[] findWhereVivDescrizioneEquals(String vivDescrizione) throws VincoliValiditaDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the vincoli_validita table that match the specified arbitrary SQL statement
	 */
	public VincoliValidita[] findByDynamicSelect(String sql, Object[] sqlParams) throws VincoliValiditaDaoException;

	/** 
	 * Returns all rows from the vincoli_validita table that match the specified arbitrary SQL statement
	 */
	public VincoliValidita[] findByDynamicWhere(String sql, Object[] sqlParams) throws VincoliValiditaDaoException;

}