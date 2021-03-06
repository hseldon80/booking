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

public interface StrutturaServiziVariDao
{
	/** 
	 * Inserts a new row in the struttura_servizi_vari table.
	 */
	public StrutturaServiziVariPk insert(StrutturaServiziVari dto) throws StrutturaServiziVariDaoException;

	/** 
	 * Updates a single row in the struttura_servizi_vari table.
	 */
	public void update(StrutturaServiziVariPk pk, StrutturaServiziVari dto) throws StrutturaServiziVariDaoException;

	/** 
	 * Deletes a single row in the struttura_servizi_vari table.
	 */
	public void delete(StrutturaServiziVariPk pk) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns the rows from the struttura_servizi_vari table that matches the specified primary-key value.
	 */
	public StrutturaServiziVari findByPrimaryKey(StrutturaServiziVariPk pk) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_id = :ssvId'.
	 */
	public StrutturaServiziVari findByPrimaryKey(long ssvId) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria ''.
	 */
	public StrutturaServiziVari[] findAll() throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaServiziVari[] findByStruttura(long strutturaStrId) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_id = :ssvId'.
	 */
	public StrutturaServiziVari[] findWhereSsvIdEquals(long ssvId) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_anim_ceste = :ssvAnimCeste'.
	 */
	public StrutturaServiziVari[] findWhereSsvAnimCesteEquals(String ssvAnimCeste) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_anim_ciotole = :ssvAnimCiotole'.
	 */
	public StrutturaServiziVari[] findWhereSsvAnimCiotoleEquals(String ssvAnimCiotole) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_solo_adulti = :ssvSoloAdulti'.
	 */
	public StrutturaServiziVari[] findWhereSsvSoloAdultiEquals(String ssvSoloAdulti) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_cam_analergica = :ssvCamAnalergica'.
	 */
	public StrutturaServiziVari[] findWhereSsvCamAnalergicaEquals(String ssvCamAnalergica) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_solo_non_fum = :ssvSoloNonFum'.
	 */
	public StrutturaServiziVari[] findWhereSsvSoloNonFumEquals(String ssvSoloNonFum) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_area_fum = :ssvAreaFum'.
	 */
	public StrutturaServiziVari[] findWhereSsvAreaFumEquals(String ssvAreaFum) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_cam_non_fum = :ssvCamNonFum'.
	 */
	public StrutturaServiziVari[] findWhereSsvCamNonFumEquals(String ssvCamNonFum) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_ascensore = :ssvAscensore'.
	 */
	public StrutturaServiziVari[] findWhereSsvAscensoreEquals(String ssvAscensore) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_cam_disabili = :ssvCamDisabili'.
	 */
	public StrutturaServiziVari[] findWhereSsvCamDisabiliEquals(String ssvCamDisabili) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_cam_famigl = :ssvCamFamigl'.
	 */
	public StrutturaServiziVari[] findWhereSsvCamFamiglEquals(String ssvCamFamigl) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_cam_insonoriz = :ssvCamInsonoriz'.
	 */
	public StrutturaServiziVari[] findWhereSsvCamInsonorizEquals(String ssvCamInsonoriz) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_suite_nuz = :ssvSuiteNuz'.
	 */
	public StrutturaServiziVari[] findWhereSsvSuiteNuzEquals(String ssvSuiteNuz) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_servizi_vip = :ssvServiziVip'.
	 */
	public StrutturaServiziVari[] findWhereSsvServiziVipEquals(String ssvServiziVip) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_riscaldamento = :ssvRiscaldamento'.
	 */
	public StrutturaServiziVari[] findWhereSsvRiscaldamentoEquals(String ssvRiscaldamento) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_area_cond = :ssvAreaCond'.
	 */
	public StrutturaServiziVari[] findWhereSsvAreaCondEquals(String ssvAreaCond) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'ssv_area_cond_costo = :ssvAreaCondCosto'.
	 */
	public StrutturaServiziVari[] findWhereSsvAreaCondCostoEquals(float ssvAreaCondCosto) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaServiziVari[] findWhereStrutturaStrIdEquals(long strutturaStrId) throws StrutturaServiziVariDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the specified arbitrary SQL statement
	 */
	public StrutturaServiziVari[] findByDynamicSelect(String sql, Object[] sqlParams) throws StrutturaServiziVariDaoException;

	/** 
	 * Returns all rows from the struttura_servizi_vari table that match the specified arbitrary SQL statement
	 */
	public StrutturaServiziVari[] findByDynamicWhere(String sql, Object[] sqlParams) throws StrutturaServiziVariDaoException;

}
