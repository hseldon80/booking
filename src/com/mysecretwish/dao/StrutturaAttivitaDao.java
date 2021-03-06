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

public interface StrutturaAttivitaDao
{
	/** 
	 * Inserts a new row in the struttura_attivita table.
	 */
	public StrutturaAttivitaPk insert(StrutturaAttivita dto) throws StrutturaAttivitaDaoException;

	/** 
	 * Updates a single row in the struttura_attivita table.
	 */
	public void update(StrutturaAttivitaPk pk, StrutturaAttivita dto) throws StrutturaAttivitaDaoException;

	/** 
	 * Deletes a single row in the struttura_attivita table.
	 */
	public void delete(StrutturaAttivitaPk pk) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns the rows from the struttura_attivita table that matches the specified primary-key value.
	 */
	public StrutturaAttivita findByPrimaryKey(StrutturaAttivitaPk pk) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_id = :satId'.
	 */
	public StrutturaAttivita findByPrimaryKey(long satId) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria ''.
	 */
	public StrutturaAttivita[] findAll() throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaAttivita[] findByStruttura(long strutturaStrId) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_id = :satId'.
	 */
	public StrutturaAttivita[] findWhereSatIdEquals(long satId) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_attr_tennis = :satAttrTennis'.
	 */
	public StrutturaAttivita[] findWhereSatAttrTennisEquals(String satAttrTennis) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_badminton = :satBadminton'.
	 */
	public StrutturaAttivita[] findWhereSatBadmintonEquals(String satBadminton) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_spiaggia = :satSpiaggia'.
	 */
	public StrutturaAttivita[] findWhereSatSpiaggiaEquals(String satSpiaggia) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_campo_tennis = :satCampoTennis'.
	 */
	public StrutturaAttivita[] findWhereSatCampoTennisEquals(String satCampoTennis) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_biliardo = :satBiliardo'.
	 */
	public StrutturaAttivita[] findWhereSatBiliardoEquals(String satBiliardo) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_ping_pong = :satPingPong'.
	 */
	public StrutturaAttivita[] findWhereSatPingPongEquals(String satPingPong) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_freccette = :satFreccette'.
	 */
	public StrutturaAttivita[] findWhereSatFreccetteEquals(String satFreccette) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_squash = :satSquash'.
	 */
	public StrutturaAttivita[] findWhereSatSquashEquals(String satSquash) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_bowling = :satBowling'.
	 */
	public StrutturaAttivita[] findWhereSatBowlingEquals(String satBowling) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_minigolf = :satMinigolf'.
	 */
	public StrutturaAttivita[] findWhereSatMinigolfEquals(String satMinigolf) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_parco_acquatico = :satParcoAcquatico'.
	 */
	public StrutturaAttivita[] findWhereSatParcoAcquaticoEquals(String satParcoAcquatico) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_immersioni = :satImmersioni'.
	 */
	public StrutturaAttivita[] findWhereSatImmersioniEquals(String satImmersioni) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_campo_golf = :satCampoGolf'.
	 */
	public StrutturaAttivita[] findWhereSatCampoGolfEquals(String satCampoGolf) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_windsurf = :satWindsurf'.
	 */
	public StrutturaAttivita[] findWhereSatWindsurfEquals(String satWindsurf) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_snorkeling = :satSnorkeling'.
	 */
	public StrutturaAttivita[] findWhereSatSnorkelingEquals(String satSnorkeling) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_attrez_sport_acq = :satAttrezSportAcq'.
	 */
	public StrutturaAttivita[] findWhereSatAttrezSportAcqEquals(String satAttrezSportAcq) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_canoa = :satCanoa'.
	 */
	public StrutturaAttivita[] findWhereSatCanoaEquals(String satCanoa) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_pesca = :satPesca'.
	 */
	public StrutturaAttivita[] findWhereSatPescaEquals(String satPesca) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_equitazione = :satEquitazione'.
	 */
	public StrutturaAttivita[] findWhereSatEquitazioneEquals(String satEquitazione) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_escursionismo = :satEscursionismo'.
	 */
	public StrutturaAttivita[] findWhereSatEscursionismoEquals(String satEscursionismo) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_sci = :satSci'.
	 */
	public StrutturaAttivita[] findWhereSatSciEquals(String satSci) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'sat_escursione_bicicletta = :satEscursioneBicicletta'.
	 */
	public StrutturaAttivita[] findWhereSatEscursioneBiciclettaEquals(String satEscursioneBicicletta) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the criteria 'struttura_str_id = :strutturaStrId'.
	 */
	public StrutturaAttivita[] findWhereStrutturaStrIdEquals(long strutturaStrId) throws StrutturaAttivitaDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the struttura_attivita table that match the specified arbitrary SQL statement
	 */
	public StrutturaAttivita[] findByDynamicSelect(String sql, Object[] sqlParams) throws StrutturaAttivitaDaoException;

	/** 
	 * Returns all rows from the struttura_attivita table that match the specified arbitrary SQL statement
	 */
	public StrutturaAttivita[] findByDynamicWhere(String sql, Object[] sqlParams) throws StrutturaAttivitaDaoException;

}
