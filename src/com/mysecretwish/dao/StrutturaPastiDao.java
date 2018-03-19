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

public interface StrutturaPastiDao
{
	/** 
	 * Inserts a new row in the struttura_pasti table.
	 */
	public StrutturaPastiPk insert(StrutturaPasti dto) throws StrutturaPastiDaoException;

	/** 
	 * Updates a single row in the struttura_pasti table.
	 */
	public void update(StrutturaPastiPk pk, StrutturaPasti dto) throws StrutturaPastiDaoException;

	/** 
	 * Deletes a single row in the struttura_pasti table.
	 */
	public void delete(StrutturaPastiPk pk) throws StrutturaPastiDaoException;

	/** 
	 * Returns the rows from the struttura_pasti table that matches the specified primary-key value.
	 */
	public StrutturaPasti findByPrimaryKey(StrutturaPastiPk pk) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_id = :spaId'.
	 */
	public StrutturaPasti findByPrimaryKey(long spaId) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria ''.
	 */
	public StrutturaPasti[] findAll() throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaPasti[] findByStruttura(long strutturaStrId) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_id = :spaId'.
	 */
	public StrutturaPasti[] findWhereSpaIdEquals(long spaId) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_offre_col_pra_cen = :spaOffreColPraCen'.
	 */
	public StrutturaPasti[] findWhereSpaOffreColPraCenEquals(String spaOffreColPraCen) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_colazione_inclusa = :spaColazioneInclusa'.
	 */
	public StrutturaPasti[] findWhereSpaColazioneInclusaEquals(String spaColazioneInclusa) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_vendo_pasti_online = :spaVendoPastiOnline'.
	 */
	public StrutturaPasti[] findWhereSpaVendoPastiOnlineEquals(String spaVendoPastiOnline) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spe_prezzo_col_online = :spePrezzoColOnline'.
	 */
	public StrutturaPasti[] findWhereSpePrezzoColOnlineEquals(float spePrezzoColOnline) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spe_prezzo_par_online = :spePrezzoParOnline'.
	 */
	public StrutturaPasti[] findWhereSpePrezzoParOnlineEquals(float spePrezzoParOnline) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spe_prezzo_cen_online = :spePrezzoCenOnline'.
	 */
	public StrutturaPasti[] findWhereSpePrezzoCenOnlineEquals(float spePrezzoCenOnline) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_americana = :spaColAmericana'.
	 */
	public StrutturaPasti[] findWhereSpaColAmericanaEquals(String spaColAmericana) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_senza_glutine = :spaColSenzaGlutine'.
	 */
	public StrutturaPasti[] findWhereSpaColSenzaGlutineEquals(String spaColSenzaGlutine) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_vegetariana = :spaColVegetariana'.
	 */
	public StrutturaPasti[] findWhereSpaColVegetarianaEquals(String spaColVegetariana) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_asiatica = :spaColAsiatica'.
	 */
	public StrutturaPasti[] findWhereSpaColAsiaticaEquals(String spaColAsiatica) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_halal = :spaColHalal'.
	 */
	public StrutturaPasti[] findWhereSpaColHalalEquals(String spaColHalal) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_vegana = :spaColVegana'.
	 */
	public StrutturaPasti[] findWhereSpaColVeganaEquals(String spaColVegana) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_buffet = :spaColBuffet'.
	 */
	public StrutturaPasti[] findWhereSpaColBuffetEquals(String spaColBuffet) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_italiana = :spaColItaliana'.
	 */
	public StrutturaPasti[] findWhereSpaColItalianaEquals(String spaColItaliana) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_inglese = :spaColInglese'.
	 */
	public StrutturaPasti[] findWhereSpaColIngleseEquals(String spaColInglese) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_continentale = :spaColContinentale'.
	 */
	public StrutturaPasti[] findWhereSpaColContinentaleEquals(String spaColContinentale) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'spa_col_koser = :spaColKoser'.
	 */
	public StrutturaPasti[] findWhereSpaColKoserEquals(String spaColKoser) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaPasti[] findWhereStrutturaStrIdEquals(long strutturaStrId) throws StrutturaPastiDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the struttura_pasti table that match the specified arbitrary SQL statement
	 */
	public StrutturaPasti[] findByDynamicSelect(String sql, Object[] sqlParams) throws StrutturaPastiDaoException;

	/** 
	 * Returns all rows from the struttura_pasti table that match the specified arbitrary SQL statement
	 */
	public StrutturaPasti[] findByDynamicWhere(String sql, Object[] sqlParams) throws StrutturaPastiDaoException;

}