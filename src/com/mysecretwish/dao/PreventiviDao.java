/*
 * This source file was generated by FireStorm/DAO.
 * 
 * If you purchase a full license for FireStorm/DAO you can customize this header file.
 * 
 * For more information please visit http://www.codefutures.com/products/firestorm
 */

package com.mysecretwish.dao;

import java.util.Date;
import com.mysecretwish.dto.*;
import com.mysecretwish.exceptions.*;

public interface PreventiviDao
{
	/** 
	 * Inserts a new row in the preventivi table.
	 */
	public PreventiviPk insert(Preventivi dto) throws PreventiviDaoException;

	/** 
	 * Updates a single row in the preventivi table.
	 */
	public void update(PreventiviPk pk, Preventivi dto) throws PreventiviDaoException;

	/** 
	 * Deletes a single row in the preventivi table.
	 */
	public void delete(PreventiviPk pk) throws PreventiviDaoException;

	/** 
	 * Returns the rows from the preventivi table that matches the specified primary-key value.
	 */
	public Preventivi findByPrimaryKey(PreventiviPk pk) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_id = :preId'.
	 */
	public Preventivi findByPrimaryKey(long preId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'struttura_camere_cam_id = :strutturaCamereCamId'.
	 */
	public Preventivi[] findByStrutturaCamere(int strutturaCamereCamId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_ric_data = :preRicData'.
	 */
	public Preventivi[] findWherePreRicDataEquals(Date preRicData) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_ric_ora = :preRicOra'.
	 */
	public Preventivi[] findWherePreRicOraEquals(String preRicOra) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'struttura_camere_cam_id = :strutturaCamereCamId'.
	 */
	public Preventivi[] findWhereStrutturaCamereCamIdEquals(int strutturaCamereCamId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_risp_data = :preRispData'.
	 */
	public Preventivi[] findWherePreRispDataEquals(Date preRispData) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_risp_ora = :preRispOra'.
	 */
	public Preventivi[] findWherePreRispOraEquals(String preRispOra) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_conf_rif_ora = :preConfRifOra'.
	 */
	public Preventivi[] findWherePreConfRifOraEquals(String preConfRifOra) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria ''.
	 */
	public Preventivi[] findAll() throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'camere_cam_id = :camereCamId'.
	 */
	public Preventivi[] findByCamere(long camereCamId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'utente_ute_id = :utenteUteId'.
	 */
	public Preventivi[] findByUtente(long utenteUteId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_id = :preId'.
	 */
	public Preventivi[] findWherePreIdEquals(long preId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_numero = :preNumero'.
	 */
	public Preventivi[] findWherePreNumeroEquals(String preNumero) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_check_in = :preCheckIn'.
	 */
	public Preventivi[] findWherePreCheckInEquals(Date preCheckIn) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_num_adulti = :preNumAdulti'.
	 */
	public Preventivi[] findWherePreNumAdultiEquals(int preNumAdulti) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_num_bamb = :preNumBamb'.
	 */
	public Preventivi[] findWherePreNumBambEquals(int preNumBamb) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_messaggio = :preMessaggio'.
	 */
	public Preventivi[] findWherePreMessaggioEquals(String preMessaggio) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'utente_ute_id = :utenteUteId'.
	 */
	public Preventivi[] findWhereUtenteUteIdEquals(long utenteUteId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'camere_cam_id = :camereCamId'.
	 */
	public Preventivi[] findWhereCamereCamIdEquals(long camereCamId) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_stato = :preStato'.
	 */
	public Preventivi[] findWherePreStatoEquals(String preStato) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_data_richiesta = :preDataRichiesta'.
	 */
	public Preventivi[] findWherePreDataRichiestaEquals(Date preDataRichiesta) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_prezzo_def = :prePrezzoDef'.
	 */
	public Preventivi[] findWherePrePrezzoDefEquals(float prePrezzoDef) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_commissioni = :preCommissioni'.
	 */
	public Preventivi[] findWherePreCommissioniEquals(float preCommissioni) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_mess_osp = :preMessOsp'.
	 */
	public Preventivi[] findWherePreMessOspEquals(String preMessOsp) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_conf_rif_data = :preConfRifData'.
	 */
	public Preventivi[] findWherePreConfRifDataEquals(Date preConfRifData) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'pre_check_out = :preCheckOut'.
	 */
	public Preventivi[] findWherePreCheckOutEquals(Date preCheckOut) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the criteria 'fk_promozione = :fkPromozione'.
	 */
	public Preventivi[] findWhereFkPromozioneEquals(long fkPromozione) throws PreventiviDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the preventivi table that match the specified arbitrary SQL statement
	 */
	public Preventivi[] findByDynamicSelect(String sql, Object[] sqlParams) throws PreventiviDaoException;

	/** 
	 * Returns all rows from the preventivi table that match the specified arbitrary SQL statement
	 */
	public Preventivi[] findByDynamicWhere(String sql, Object[] sqlParams) throws PreventiviDaoException;

}
