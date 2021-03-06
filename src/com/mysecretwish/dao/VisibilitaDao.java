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

public interface VisibilitaDao
{
	/** 
	 * Inserts a new row in the visibilita table.
	 */
	public VisibilitaPk insert(Visibilita dto) throws VisibilitaDaoException;

	/** 
	 * Updates a single row in the visibilita table.
	 */
	public void update(VisibilitaPk pk, Visibilita dto) throws VisibilitaDaoException;

	/** 
	 * Deletes a single row in the visibilita table.
	 */
	public void delete(VisibilitaPk pk) throws VisibilitaDaoException;

	/** 
	 * Returns the rows from the visibilita table that matches the specified primary-key value.
	 */
	public Visibilita findByPrimaryKey(VisibilitaPk pk) throws VisibilitaDaoException;

	/** 
	 * Returns all rows from the visibilita table that match the criteria 'vis_id = :visId'.
	 */
	public Visibilita findByPrimaryKey(long visId) throws VisibilitaDaoException;

	/** 
	 * Returns all rows from the visibilita table that match the criteria ''.
	 */
	public Visibilita[] findAll() throws VisibilitaDaoException;

	/** 
	 * Returns all rows from the visibilita table that match the criteria 'vis_id = :visId'.
	 */
	public Visibilita[] findWhereVisIdEquals(long visId) throws VisibilitaDaoException;

	/** 
	 * Returns all rows from the visibilita table that match the criteria 'vis_descrizione = :visDescrizione'.
	 */
	public Visibilita[] findWhereVisDescrizioneEquals(String visDescrizione) throws VisibilitaDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the visibilita table that match the specified arbitrary SQL statement
	 */
	public Visibilita[] findByDynamicSelect(String sql, Object[] sqlParams) throws VisibilitaDaoException;

	/** 
	 * Returns all rows from the visibilita table that match the specified arbitrary SQL statement
	 */
	public Visibilita[] findByDynamicWhere(String sql, Object[] sqlParams) throws VisibilitaDaoException;

}
