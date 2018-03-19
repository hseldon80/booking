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

public interface CamereBagniDao
{
	/** 
	 * Inserts a new row in the camere_bagni table.
	 */
	public CamereBagniPk insert(CamereBagni dto) throws CamereBagniDaoException;

	/** 
	 * Updates a single row in the camere_bagni table.
	 */
	public void update(CamereBagniPk pk, CamereBagni dto) throws CamereBagniDaoException;

	/** 
	 * Deletes a single row in the camere_bagni table.
	 */
	public void delete(CamereBagniPk pk) throws CamereBagniDaoException;

	/** 
	 * Returns the rows from the camere_bagni table that matches the specified primary-key value.
	 */
	public CamereBagni findByPrimaryKey(CamereBagniPk pk) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_id = :scbId'.
	 */
	public CamereBagni findByPrimaryKey(long scbId) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria ''.
	 */
	public CamereBagni[] findAll() throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'camere_cam_id = :camereCamId'.
	 */
	public CamereBagni[] findByCamere(long camereCamId) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_id = :scbId'.
	 */
	public CamereBagni[] findWhereScbIdEquals(long scbId) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_bagno_priv = :scbBagnoPriv'.
	 */
	public CamereBagni[] findWhereScbBagnoPrivEquals(String scbBagnoPriv) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_bagno_com = :scbBagnoCom'.
	 */
	public CamereBagni[] findWhereScbBagnoComEquals(String scbBagnoCom) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_carta_igi = :scbCartaIgi'.
	 */
	public CamereBagni[] findWhereScbCartaIgiEquals(String scbCartaIgi) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_vasca_dis = :scbVascaDis'.
	 */
	public CamereBagni[] findWhereScbVascaDisEquals(String scbVascaDis) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_camp_emergenza = :scbCampEmergenza'.
	 */
	public CamereBagni[] findWhereScbCampEmergenzaEquals(String scbCampEmergenza) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_wc_rialzato = :scbWcRialzato'.
	 */
	public CamereBagni[] findWhereScbWcRialzatoEquals(String scbWcRialzato) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_lavabo_basso = :scbLavaboBasso'.
	 */
	public CamereBagni[] findWhereScbLavaboBassoEquals(String scbLavaboBasso) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_sedia_doccia = :scbSediaDoccia'.
	 */
	public CamereBagni[] findWhereScbSediaDocciaEquals(String scbSediaDoccia) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_doccia_per_rotelle = :scbDocciaPerRotelle'.
	 */
	public CamereBagni[] findWhereScbDocciaPerRotelleEquals(String scbDocciaPerRotelle) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_cabina_doccia = :scbCabinaDoccia'.
	 */
	public CamereBagni[] findWhereScbCabinaDocciaEquals(String scbCabinaDoccia) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_wc_maniglioni = :scbWcManiglioni'.
	 */
	public CamereBagni[] findWhereScbWcManiglioniEquals(String scbWcManiglioni) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_bidet = :scbBidet'.
	 */
	public CamereBagni[] findWhereScbBidetEquals(String scbBidet) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_vasca = :scbVasca'.
	 */
	public CamereBagni[] findWhereScbVascaEquals(String scbVasca) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_vasca_doccia = :scbVascaDoccia'.
	 */
	public CamereBagni[] findWhereScbVascaDocciaEquals(String scbVascaDoccia) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_accappatoio = :scbAccappatoio'.
	 */
	public CamereBagni[] findWhereScbAccappatoioEquals(String scbAccappatoio) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_prod_da_bagno = :scbProdDaBagno'.
	 */
	public CamereBagni[] findWhereScbProdDaBagnoEquals(String scbProdDaBagno) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_serv_igie_agg = :scbServIgieAgg'.
	 */
	public CamereBagni[] findWhereScbServIgieAggEquals(String scbServIgieAgg) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_asciugacap = :scbAsciugacap'.
	 */
	public CamereBagni[] findWhereScbAsciugacapEquals(String scbAsciugacap) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_vasca_con_idro = :scbVascaConIdro'.
	 */
	public CamereBagni[] findWhereScbVascaConIdroEquals(String scbVascaConIdro) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_serv_igie_com = :scbServIgieCom'.
	 */
	public CamereBagni[] findWhereScbServIgieComEquals(String scbServIgieCom) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_sauna = :scbSauna'.
	 */
	public CamereBagni[] findWhereScbSaunaEquals(String scbSauna) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_doccia = :scbDoccia'.
	 */
	public CamereBagni[] findWhereScbDocciaEquals(String scbDoccia) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_pantofole = :scbPantofole'.
	 */
	public CamereBagni[] findWhereScbPantofoleEquals(String scbPantofole) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_wc = :scbWc'.
	 */
	public CamereBagni[] findWhereScbWcEquals(String scbWc) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_bagno_agg = :scbBagnoAgg'.
	 */
	public CamereBagni[] findWhereScbBagnoAggEquals(String scbBagnoAgg) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_spazzolino = :scbSpazzolino'.
	 */
	public CamereBagni[] findWhereScbSpazzolinoEquals(String scbSpazzolino) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_shampo = :scbShampo'.
	 */
	public CamereBagni[] findWhereScbShampoEquals(String scbShampo) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_balsamo = :scbBalsamo'.
	 */
	public CamereBagni[] findWhereScbBalsamoEquals(String scbBalsamo) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_bagnoschiuma = :scbBagnoschiuma'.
	 */
	public CamereBagni[] findWhereScbBagnoschiumaEquals(String scbBagnoschiuma) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'scb_cuffia = :scbCuffia'.
	 */
	public CamereBagni[] findWhereScbCuffiaEquals(String scbCuffia) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the criteria 'camere_cam_id = :camereCamId'.
	 */
	public CamereBagni[] findWhereCamereCamIdEquals(long camereCamId) throws CamereBagniDaoException;

	/** 
	 * Sets the value of maxRows
	 */
	public void setMaxRows(int maxRows);

	/** 
	 * Gets the value of maxRows
	 */
	public int getMaxRows();

	/** 
	 * Returns all rows from the camere_bagni table that match the specified arbitrary SQL statement
	 */
	public CamereBagni[] findByDynamicSelect(String sql, Object[] sqlParams) throws CamereBagniDaoException;

	/** 
	 * Returns all rows from the camere_bagni table that match the specified arbitrary SQL statement
	 */
	public CamereBagni[] findByDynamicWhere(String sql, Object[] sqlParams) throws CamereBagniDaoException;

}