/*
 * This source file was generated by FireStorm/DAO.
 * 
 * If you purchase a full license for FireStorm/DAO you can customize this header file.
 * 
 * For more information please visit http://www.codefutures.com/products/firestorm
 */

package com.mysecretwish.dto;

import com.mysecretwish.dao.*;
import com.mysecretwish.factory.*;
import com.mysecretwish.exceptions.*;
import java.io.Serializable;
import java.util.*;

public class DatiBancari implements Serializable
{
	/** 
	 * This attribute maps to the column ban_id in the dati_bancari table.
	 */
	protected long banId;

	/** 
	 * This attribute maps to the column ban_iban in the dati_bancari table.
	 */
	protected String banIban;

	/** 
	 * This attribute maps to the column ban_nominativo in the dati_bancari table.
	 */
	protected String banNominativo;

	/** 
	 * This attribute maps to the column ban_indirizzo in the dati_bancari table.
	 */
	protected String banIndirizzo;

	/** 
	 * This attribute maps to the column ban_cap in the dati_bancari table.
	 */
	protected String banCap;

	/** 
	 * This attribute maps to the column ban_nome_banca in the dati_bancari table.
	 */
	protected String banNomeBanca;

	/** 
	 * This attribute maps to the column ban_branch_code in the dati_bancari table.
	 */
	protected String banBranchCode;

	/** 
	 * This attribute maps to the column ban_bic_swift in the dati_bancari table.
	 */
	protected String banBicSwift;

	/** 
	 * This attribute maps to the column utente_ute_id in the dati_bancari table.
	 */
	protected long utenteUteId;

	/** 
	 * This attribute maps to the column fk_comune in the dati_bancari table.
	 */
	protected long fkComune;

	/** 
	 * This attribute represents whether the primitive attribute fkComune is null.
	 */
	protected boolean fkComuneNull = true;

	/** 
	 * This attribute maps to the column fk_struttura in the dati_bancari table.
	 */
	protected long fkStruttura;

	/** 
	 * This attribute represents whether the primitive attribute fkStruttura is null.
	 */
	protected boolean fkStrutturaNull = true;

	/** 
	 * This attribute maps to the column ban_usa_attuale in the dati_bancari table.
	 */
	protected String banUsaAttuale;

	/**
	 * Method 'DatiBancari'
	 * 
	 */
	public DatiBancari()
	{
	}

	/**
	 * Method 'getBanId'
	 * 
	 * @return long
	 */
	public long getBanId()
	{
		return banId;
	}

	/**
	 * Method 'setBanId'
	 * 
	 * @param banId
	 */
	public void setBanId(long banId)
	{
		this.banId = banId;
	}

	/**
	 * Method 'getBanIban'
	 * 
	 * @return String
	 */
	public String getBanIban()
	{
		return banIban;
	}

	/**
	 * Method 'setBanIban'
	 * 
	 * @param banIban
	 */
	public void setBanIban(String banIban)
	{
		this.banIban = banIban;
	}

	/**
	 * Method 'getBanNominativo'
	 * 
	 * @return String
	 */
	public String getBanNominativo()
	{
		return banNominativo;
	}

	/**
	 * Method 'setBanNominativo'
	 * 
	 * @param banNominativo
	 */
	public void setBanNominativo(String banNominativo)
	{
		this.banNominativo = banNominativo;
	}

	/**
	 * Method 'getBanIndirizzo'
	 * 
	 * @return String
	 */
	public String getBanIndirizzo()
	{
		return banIndirizzo;
	}

	/**
	 * Method 'setBanIndirizzo'
	 * 
	 * @param banIndirizzo
	 */
	public void setBanIndirizzo(String banIndirizzo)
	{
		this.banIndirizzo = banIndirizzo;
	}

	/**
	 * Method 'getBanCap'
	 * 
	 * @return String
	 */
	public String getBanCap()
	{
		return banCap;
	}

	/**
	 * Method 'setBanCap'
	 * 
	 * @param banCap
	 */
	public void setBanCap(String banCap)
	{
		this.banCap = banCap;
	}

	/**
	 * Method 'getBanNomeBanca'
	 * 
	 * @return String
	 */
	public String getBanNomeBanca()
	{
		return banNomeBanca;
	}

	/**
	 * Method 'setBanNomeBanca'
	 * 
	 * @param banNomeBanca
	 */
	public void setBanNomeBanca(String banNomeBanca)
	{
		this.banNomeBanca = banNomeBanca;
	}

	/**
	 * Method 'getBanBranchCode'
	 * 
	 * @return String
	 */
	public String getBanBranchCode()
	{
		return banBranchCode;
	}

	/**
	 * Method 'setBanBranchCode'
	 * 
	 * @param banBranchCode
	 */
	public void setBanBranchCode(String banBranchCode)
	{
		this.banBranchCode = banBranchCode;
	}

	/**
	 * Method 'getBanBicSwift'
	 * 
	 * @return String
	 */
	public String getBanBicSwift()
	{
		return banBicSwift;
	}

	/**
	 * Method 'setBanBicSwift'
	 * 
	 * @param banBicSwift
	 */
	public void setBanBicSwift(String banBicSwift)
	{
		this.banBicSwift = banBicSwift;
	}

	/**
	 * Method 'getUtenteUteId'
	 * 
	 * @return long
	 */
	public long getUtenteUteId()
	{
		return utenteUteId;
	}

	/**
	 * Method 'setUtenteUteId'
	 * 
	 * @param utenteUteId
	 */
	public void setUtenteUteId(long utenteUteId)
	{
		this.utenteUteId = utenteUteId;
	}

	/**
	 * Method 'getFkComune'
	 * 
	 * @return long
	 */
	public long getFkComune()
	{
		return fkComune;
	}

	/**
	 * Method 'setFkComune'
	 * 
	 * @param fkComune
	 */
	public void setFkComune(long fkComune)
	{
		this.fkComune = fkComune;
		this.fkComuneNull = false;
	}

	/**
	 * Method 'setFkComuneNull'
	 * 
	 * @param value
	 */
	public void setFkComuneNull(boolean value)
	{
		this.fkComuneNull = value;
	}

	/**
	 * Method 'isFkComuneNull'
	 * 
	 * @return boolean
	 */
	public boolean isFkComuneNull()
	{
		return fkComuneNull;
	}

	/**
	 * Method 'getFkStruttura'
	 * 
	 * @return long
	 */
	public long getFkStruttura()
	{
		return fkStruttura;
	}

	/**
	 * Method 'setFkStruttura'
	 * 
	 * @param fkStruttura
	 */
	public void setFkStruttura(long fkStruttura)
	{
		this.fkStruttura = fkStruttura;
		this.fkStrutturaNull = false;
	}

	/**
	 * Method 'setFkStrutturaNull'
	 * 
	 * @param value
	 */
	public void setFkStrutturaNull(boolean value)
	{
		this.fkStrutturaNull = value;
	}

	/**
	 * Method 'isFkStrutturaNull'
	 * 
	 * @return boolean
	 */
	public boolean isFkStrutturaNull()
	{
		return fkStrutturaNull;
	}

	/**
	 * Method 'getBanUsaAttuale'
	 * 
	 * @return String
	 */
	public String getBanUsaAttuale()
	{
		return banUsaAttuale;
	}

	/**
	 * Method 'setBanUsaAttuale'
	 * 
	 * @param banUsaAttuale
	 */
	public void setBanUsaAttuale(String banUsaAttuale)
	{
		this.banUsaAttuale = banUsaAttuale;
	}

	/**
	 * Method 'equals'
	 * 
	 * @param _other
	 * @return boolean
	 */
	public boolean equals(Object _other)
	{
		if (_other == null) {
			return false;
		}
		
		if (_other == this) {
			return true;
		}
		
		if (!(_other instanceof DatiBancari)) {
			return false;
		}
		
		final DatiBancari _cast = (DatiBancari) _other;
		if (banId != _cast.banId) {
			return false;
		}
		
		if (banIban == null ? _cast.banIban != banIban : !banIban.equals( _cast.banIban )) {
			return false;
		}
		
		if (banNominativo == null ? _cast.banNominativo != banNominativo : !banNominativo.equals( _cast.banNominativo )) {
			return false;
		}
		
		if (banIndirizzo == null ? _cast.banIndirizzo != banIndirizzo : !banIndirizzo.equals( _cast.banIndirizzo )) {
			return false;
		}
		
		if (banCap == null ? _cast.banCap != banCap : !banCap.equals( _cast.banCap )) {
			return false;
		}
		
		if (banNomeBanca == null ? _cast.banNomeBanca != banNomeBanca : !banNomeBanca.equals( _cast.banNomeBanca )) {
			return false;
		}
		
		if (banBranchCode == null ? _cast.banBranchCode != banBranchCode : !banBranchCode.equals( _cast.banBranchCode )) {
			return false;
		}
		
		if (banBicSwift == null ? _cast.banBicSwift != banBicSwift : !banBicSwift.equals( _cast.banBicSwift )) {
			return false;
		}
		
		if (utenteUteId != _cast.utenteUteId) {
			return false;
		}
		
		if (fkComune != _cast.fkComune) {
			return false;
		}
		
		if (fkComuneNull != _cast.fkComuneNull) {
			return false;
		}
		
		if (fkStruttura != _cast.fkStruttura) {
			return false;
		}
		
		if (fkStrutturaNull != _cast.fkStrutturaNull) {
			return false;
		}
		
		if (banUsaAttuale == null ? _cast.banUsaAttuale != banUsaAttuale : !banUsaAttuale.equals( _cast.banUsaAttuale )) {
			return false;
		}
		
		return true;
	}

	/**
	 * Method 'hashCode'
	 * 
	 * @return int
	 */
	public int hashCode()
	{
		int _hashCode = 0;
		_hashCode = 29 * _hashCode + (int) (banId ^ (banId >>> 32));
		if (banIban != null) {
			_hashCode = 29 * _hashCode + banIban.hashCode();
		}
		
		if (banNominativo != null) {
			_hashCode = 29 * _hashCode + banNominativo.hashCode();
		}
		
		if (banIndirizzo != null) {
			_hashCode = 29 * _hashCode + banIndirizzo.hashCode();
		}
		
		if (banCap != null) {
			_hashCode = 29 * _hashCode + banCap.hashCode();
		}
		
		if (banNomeBanca != null) {
			_hashCode = 29 * _hashCode + banNomeBanca.hashCode();
		}
		
		if (banBranchCode != null) {
			_hashCode = 29 * _hashCode + banBranchCode.hashCode();
		}
		
		if (banBicSwift != null) {
			_hashCode = 29 * _hashCode + banBicSwift.hashCode();
		}
		
		_hashCode = 29 * _hashCode + (int) (utenteUteId ^ (utenteUteId >>> 32));
		_hashCode = 29 * _hashCode + (int) (fkComune ^ (fkComune >>> 32));
		_hashCode = 29 * _hashCode + (fkComuneNull ? 1 : 0);
		_hashCode = 29 * _hashCode + (int) (fkStruttura ^ (fkStruttura >>> 32));
		_hashCode = 29 * _hashCode + (fkStrutturaNull ? 1 : 0);
		if (banUsaAttuale != null) {
			_hashCode = 29 * _hashCode + banUsaAttuale.hashCode();
		}
		
		return _hashCode;
	}

	/**
	 * Method 'createPk'
	 * 
	 * @return DatiBancariPk
	 */
	public DatiBancariPk createPk()
	{
		return new DatiBancariPk(banId);
	}

	/**
	 * Method 'toString'
	 * 
	 * @return String
	 */
	public String toString()
	{
		StringBuffer ret = new StringBuffer();
		ret.append( "com.mysecretwish.dto.DatiBancari: " );
		ret.append( "banId=" + banId );
		ret.append( ", banIban=" + banIban );
		ret.append( ", banNominativo=" + banNominativo );
		ret.append( ", banIndirizzo=" + banIndirizzo );
		ret.append( ", banCap=" + banCap );
		ret.append( ", banNomeBanca=" + banNomeBanca );
		ret.append( ", banBranchCode=" + banBranchCode );
		ret.append( ", banBicSwift=" + banBicSwift );
		ret.append( ", utenteUteId=" + utenteUteId );
		ret.append( ", fkComune=" + fkComune );
		ret.append( ", fkStruttura=" + fkStruttura );
		ret.append( ", banUsaAttuale=" + banUsaAttuale );
		return ret.toString();
	}

}
