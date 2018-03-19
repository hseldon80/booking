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

public interface CamereAccessibilitaDao
{
	/** 
	 * Inserts a new row in the camere_accessibilita table.
	 */
	public CamereAccessibilitaPk insert(CamereAccessibilita dto) throws CamereAccessibilitaDaoException;

	/** 
	 * Updates a single row in the camere_accessibilita table.
	 */
	public void update(CamereAccessibilitaPk pk, CamereAccessibilita dto) throws CamereAccessibilitaDaoException;

	/** 
	 * Deletes a single row in the camere_accessibilita table.
	 */
	public void delete(CamereAccessibilitaPk pk) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns the rows from the camere_accessibilita table that matches the specified primary-key value.
	 */
	public CamereAccessibilita findByPrimaryKey(CamereAccessibilitaPk pk) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_id = :scaId'.
	 */
	public CamereAccessibilita findByPrimaryKey(long scaId) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria ''.
	 */
	public CamereAccessibilita[] findAll() throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'camere_cam_id = :camereCamId'.
	 */
	public CamereAccessibilita[] findByCamere(long camereCamId) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_id = :scaId'.
	 */
	public CamereAccessibilita[] findWhereScaIdEquals(long scaId) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_ascensore = :scaAscensore'.
	 */
	public CamereAccessibilita[] findWhereScaAscensoreEquals(String scaAscensore) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_piano_ter = :scaPianoTer'.
	 */
	public CamereAccessibilita[] findWhereScaPianoTerEquals(String scaPianoTer) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_sedia_rot = :scaSediaRot'.
	 */
	public CamereAccessibilita[] findWhereScaSediaRotEquals(String scaSediaRot) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_piani_sup_asc = :scaPianiSupAsc'.
	 */
	public CamereAccessibilita[] findWhereScaPianiSupAscEquals(String scaPianiSupAsc) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_piani_sup_scale = :scaPianiSupScale'.
	 */
	public CamereAccessibilita[] findWhereScaPianiSupScaleEquals(String scaPianiSupScale) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_edif_indip = :scaEdifIndip'.
	 */
	public CamereAccessibilita[] findWhereScaEdifIndipEquals(String scaEdifIndip) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_app_priv = :scaAppPriv'.
	 */
	public CamereAccessibilita[] findWhereScaAppPrivEquals(String scaAppPriv) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'sca_semi_ind = :scaSemiInd'.
	 */
	public CamereAccessibilita[] findWhereScaSemiIndEquals(String scaSemiInd) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the criteria 'camere_cam_id = :camereCamId'.
	 */
	public CamereAccessibilita[] findWhereCamereCamIdEquals(long camereCamId) throws CamereAccessibilitaDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the camere_accessibilita table that match the specified arbitrary SQL statement
	 */
	public CamereAccessibilita[] findByDynamicSelect(String sql, Object[] sqlParams) throws CamereAccessibilitaDaoException;

	/** 
	 * Returns all rows from the camere_accessibilita table that match the specified arbitrary SQL statement
	 */
	public CamereAccessibilita[] findByDynamicWhere(String sql, Object[] sqlParams) throws CamereAccessibilitaDaoException;

}