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

public class CamereConfigurazioneLetti implements Serializable
{
	/** 
	 * This attribute maps to the column scl_id in the camere_configurazione_letti table.
	 */
	protected long sclId;

	/** 
	 * This attribute maps to the column scl_quantita in the camere_configurazione_letti table.
	 */
	protected int sclQuantita;

	/** 
	 * This attribute maps to the column camere_cam_id in the camere_configurazione_letti table.
	 */
	protected long camereCamId;

	/** 
	 * This attribute maps to the column scl_tipologia in the camere_configurazione_letti table.
	 */
	protected long sclTipologia;

	/** 
	 * This attribute represents whether the primitive attribute sclTipologia is null.
	 */
	protected boolean sclTipologiaNull = true;

	/**
	 * Method 'CamereConfigurazioneLetti'
	 * 
	 */
	public CamereConfigurazioneLetti()
	{
	}

	/**
	 * Method 'getSclId'
	 * 
	 * @return long
	 */
	public long getSclId()
	{
		return sclId;
	}

	/**
	 * Method 'setSclId'
	 * 
	 * @param sclId
	 */
	public void setSclId(long sclId)
	{
		this.sclId = sclId;
	}

	/**
	 * Method 'getSclQuantita'
	 * 
	 * @return int
	 */
	public int getSclQuantita()
	{
		return sclQuantita;
	}

	/**
	 * Method 'setSclQuantita'
	 * 
	 * @param sclQuantita
	 */
	public void setSclQuantita(int sclQuantita)
	{
		this.sclQuantita = sclQuantita;
	}

	/**
	 * Method 'getCamereCamId'
	 * 
	 * @return long
	 */
	public long getCamereCamId()
	{
		return camereCamId;
	}

	/**
	 * Method 'setCamereCamId'
	 * 
	 * @param camereCamId
	 */
	public void setCamereCamId(long camereCamId)
	{
		this.camereCamId = camereCamId;
	}

	/**
	 * Method 'getSclTipologia'
	 * 
	 * @return long
	 */
	public long getSclTipologia()
	{
		return sclTipologia;
	}

	/**
	 * Method 'setSclTipologia'
	 * 
	 * @param sclTipologia
	 */
	public void setSclTipologia(long sclTipologia)
	{
		this.sclTipologia = sclTipologia;
		this.sclTipologiaNull = false;
	}

	/**
	 * Method 'setSclTipologiaNull'
	 * 
	 * @param value
	 */
	public void setSclTipologiaNull(boolean value)
	{
		this.sclTipologiaNull = value;
	}

	/**
	 * Method 'isSclTipologiaNull'
	 * 
	 * @return boolean
	 */
	public boolean isSclTipologiaNull()
	{
		return sclTipologiaNull;
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
		
		if (!(_other instanceof CamereConfigurazioneLetti)) {
			return false;
		}
		
		final CamereConfigurazioneLetti _cast = (CamereConfigurazioneLetti) _other;
		if (sclId != _cast.sclId) {
			return false;
		}
		
		if (sclQuantita != _cast.sclQuantita) {
			return false;
		}
		
		if (camereCamId != _cast.camereCamId) {
			return false;
		}
		
		if (sclTipologia != _cast.sclTipologia) {
			return false;
		}
		
		if (sclTipologiaNull != _cast.sclTipologiaNull) {
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
		_hashCode = 29 * _hashCode + (int) (sclId ^ (sclId >>> 32));
		_hashCode = 29 * _hashCode + sclQuantita;
		_hashCode = 29 * _hashCode + (int) (camereCamId ^ (camereCamId >>> 32));
		_hashCode = 29 * _hashCode + (int) (sclTipologia ^ (sclTipologia >>> 32));
		_hashCode = 29 * _hashCode + (sclTipologiaNull ? 1 : 0);
		return _hashCode;
	}

	/**
	 * Method 'createPk'
	 * 
	 * @return CamereConfigurazioneLettiPk
	 */
	public CamereConfigurazioneLettiPk createPk()
	{
		return new CamereConfigurazioneLettiPk(sclId);
	}

	/**
	 * Method 'toString'
	 * 
	 * @return String
	 */
	public String toString()
	{
		StringBuffer ret = new StringBuffer();
		ret.append( "com.mysecretwish.dto.CamereConfigurazioneLetti: " );
		ret.append( "sclId=" + sclId );
		ret.append( ", sclQuantita=" + sclQuantita );
		ret.append( ", camereCamId=" + camereCamId );
		ret.append( ", sclTipologia=" + sclTipologia );
		return ret.toString();
	}

}