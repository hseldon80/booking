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

public interface GiudiziEsperienzeDao
{
	/** 
	 * Inserts a new row in the giudizi_esperienze table.
	 */
	public GiudiziEsperienzePk insert(GiudiziEsperienze dto) throws GiudiziEsperienzeDaoException;

	/** 
	 * Updates a single row in the giudizi_esperienze table.
	 */
	public void update(GiudiziEsperienzePk pk, GiudiziEsperienze dto) throws GiudiziEsperienzeDaoException;

	/** 
	 * Deletes a single row in the giudizi_esperienze table.
	 */
	public void delete(GiudiziEsperienzePk pk) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns the rows from the giudizi_esperienze table that matches the specified primary-key value.
	 */
	public GiudiziEsperienze findByPrimaryKey(GiudiziEsperienzePk pk) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_id = :giuId'.
	 */
	public GiudiziEsperienze findByPrimaryKey(long giuId) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria ''.
	 */
	public GiudiziEsperienze[] findAll() throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'pre_categoria = :preCategoria'.
	 */
	public GiudiziEsperienze[] findByCategorieEsperienza(long preCategoria) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'prenotazioni_pre_id = :prenotazioniPreId'.
	 */
	public GiudiziEsperienze[] findByPrenotazioni(long prenotazioniPreId) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_id = :giuId'.
	 */
	public GiudiziEsperienze[] findWhereGiuIdEquals(long giuId) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_staff = :giuStaff'.
	 */
	public GiudiziEsperienze[] findWhereGiuStaffEquals(int giuStaff) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_servizi = :giuServizi'.
	 */
	public GiudiziEsperienze[] findWhereGiuServiziEquals(int giuServizi) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_pulizia = :giuPulizia'.
	 */
	public GiudiziEsperienze[] findWhereGiuPuliziaEquals(int giuPulizia) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_confort = :giuConfort'.
	 */
	public GiudiziEsperienze[] findWhereGiuConfortEquals(int giuConfort) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_posizione = :giuPosizione'.
	 */
	public GiudiziEsperienze[] findWhereGiuPosizioneEquals(int giuPosizione) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'giu_qual_prez = :giuQualPrez'.
	 */
	public GiudiziEsperienze[] findWhereGiuQualPrezEquals(int giuQualPrez) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'pre_categoria = :preCategoria'.
	 */
	public GiudiziEsperienze[] findWherePreCategoriaEquals(long preCategoria) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'pre_commento = :preCommento'.
	 */
	public GiudiziEsperienze[] findWherePreCommentoEquals(String preCommento) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the criteria 'prenotazioni_pre_id = :prenotazioniPreId'.
	 */
	public GiudiziEsperienze[] findWherePrenotazioniPreIdEquals(long prenotazioniPreId) throws GiudiziEsperienzeDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the specified arbitrary SQL statement
	 */
	public GiudiziEsperienze[] findByDynamicSelect(String sql, Object[] sqlParams) throws GiudiziEsperienzeDaoException;

	/** 
	 * Returns all rows from the giudizi_esperienze table that match the specified arbitrary SQL statement
	 */
	public GiudiziEsperienze[] findByDynamicWhere(String sql, Object[] sqlParams) throws GiudiziEsperienzeDaoException;

}
