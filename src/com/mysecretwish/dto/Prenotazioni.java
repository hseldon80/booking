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
import java.util.Date;

public class Prenotazioni implements Serializable
{
	/** 
	 * This attribute maps to the column pre_id in the prenotazioni table.
	 */
	protected long preId;

	/** 
	 * This attribute maps to the column pre_numero in the prenotazioni table.
	 */
	protected String preNumero;

	/** 
	 * This attribute maps to the column pre_data in the prenotazioni table.
	 */
	protected Date preData;

	/** 
	 * This attribute maps to the column pre_num_adulti in the prenotazioni table.
	 */
	protected int preNumAdulti;

	/** 
	 * This attribute maps to the column pre_num_bamb in the prenotazioni table.
	 */
	protected int preNumBamb;

	/** 
	 * This attribute maps to the column pre_checkout in the prenotazioni table.
	 */
	protected Date preCheckout;

	/** 
	 * This attribute maps to the column pre_prezzo in the prenotazioni table.
	 */
	protected float prePrezzo;

	/** 
	 * This attribute maps to the column pre_commissioni in the prenotazioni table.
	 */
	protected float preCommissioni;

	/** 
	 * This attribute represents whether the primitive attribute preCommissioni is null.
	 */
	protected boolean preCommissioniNull = true;

	/** 
	 * This attribute maps to the column pre_checkin in the prenotazioni table.
	 */
	protected Date preCheckin;

	/** 
	 * This attribute maps to the column preventivi_pre_id in the prenotazioni table.
	 */
	protected long preventiviPreId;

	/** 
	 * This attribute maps to the column utente_ute_id in the prenotazioni table.
	 */
	protected long utenteUteId;

	/** 
	 * This attribute maps to the column camere_cam_id in the prenotazioni table.
	 */
	protected long camereCamId;

	/**
	 * Method 'Prenotazioni'
	 * 
	 */
	public Prenotazioni()
	{
	}

	/**
	 * Method 'getPreId'
	 * 
	 * @return long
	 */
	public long getPreId()
	{
		return preId;
	}

	/**
	 * Method 'setPreId'
	 * 
	 * @param preId
	 */
	public void setPreId(long preId)
	{
		this.preId = preId;
	}

	/**
	 * Method 'getPreNumero'
	 * 
	 * @return String
	 */
	public String getPreNumero()
	{
		return preNumero;
	}

	/**
	 * Method 'setPreNumero'
	 * 
	 * @param preNumero
	 */
	public void setPreNumero(String preNumero)
	{
		this.preNumero = preNumero;
	}

	/**
	 * Method 'getPreData'
	 * 
	 * @return Date
	 */
	public Date getPreData()
	{
		return preData;
	}

	/**
	 * Method 'setPreData'
	 * 
	 * @param preData
	 */
	public void setPreData(Date preData)
	{
		this.preData = preData;
	}

	/**
	 * Method 'getPreNumAdulti'
	 * 
	 * @return int
	 */
	public int getPreNumAdulti()
	{
		return preNumAdulti;
	}

	/**
	 * Method 'setPreNumAdulti'
	 * 
	 * @param preNumAdulti
	 */
	public void setPreNumAdulti(int preNumAdulti)
	{
		this.preNumAdulti = preNumAdulti;
	}

	/**
	 * Method 'getPreNumBamb'
	 * 
	 * @return int
	 */
	public int getPreNumBamb()
	{
		return preNumBamb;
	}

	/**
	 * Method 'setPreNumBamb'
	 * 
	 * @param preNumBamb
	 */
	public void setPreNumBamb(int preNumBamb)
	{
		this.preNumBamb = preNumBamb;
	}

	/**
	 * Method 'getPreCheckout'
	 * 
	 * @return Date
	 */
	public Date getPreCheckout()
	{
		return preCheckout;
	}

	/**
	 * Method 'setPreCheckout'
	 * 
	 * @param preCheckout
	 */
	public void setPreCheckout(Date preCheckout)
	{
		this.preCheckout = preCheckout;
	}

	/**
	 * Method 'getPrePrezzo'
	 * 
	 * @return float
	 */
	public float getPrePrezzo()
	{
		return prePrezzo;
	}

	/**
	 * Method 'setPrePrezzo'
	 * 
	 * @param prePrezzo
	 */
	public void setPrePrezzo(float prePrezzo)
	{
		this.prePrezzo = prePrezzo;
	}

	/**
	 * Method 'getPreCommissioni'
	 * 
	 * @return float
	 */
	public float getPreCommissioni()
	{
		return preCommissioni;
	}

	/**
	 * Method 'setPreCommissioni'
	 * 
	 * @param preCommissioni
	 */
	public void setPreCommissioni(float preCommissioni)
	{
		this.preCommissioni = preCommissioni;
		this.preCommissioniNull = false;
	}

	/**
	 * Method 'setPreCommissioniNull'
	 * 
	 * @param value
	 */
	public void setPreCommissioniNull(boolean value)
	{
		this.preCommissioniNull = value;
	}

	/**
	 * Method 'isPreCommissioniNull'
	 * 
	 * @return boolean
	 */
	public boolean isPreCommissioniNull()
	{
		return preCommissioniNull;
	}

	/**
	 * Method 'getPreCheckin'
	 * 
	 * @return Date
	 */
	public Date getPreCheckin()
	{
		return preCheckin;
	}

	/**
	 * Method 'setPreCheckin'
	 * 
	 * @param preCheckin
	 */
	public void setPreCheckin(Date preCheckin)
	{
		this.preCheckin = preCheckin;
	}

	/**
	 * Method 'getPreventiviPreId'
	 * 
	 * @return long
	 */
	public long getPreventiviPreId()
	{
		return preventiviPreId;
	}

	/**
	 * Method 'setPreventiviPreId'
	 * 
	 * @param preventiviPreId
	 */
	public void setPreventiviPreId(long preventiviPreId)
	{
		this.preventiviPreId = preventiviPreId;
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
		
		if (!(_other instanceof Prenotazioni)) {
			return false;
		}
		
		final Prenotazioni _cast = (Prenotazioni) _other;
		if (preId != _cast.preId) {
			return false;
		}
		
		if (preNumero == null ? _cast.preNumero != preNumero : !preNumero.equals( _cast.preNumero )) {
			return false;
		}
		
		if (preData == null ? _cast.preData != preData : !preData.equals( _cast.preData )) {
			return false;
		}
		
		if (preNumAdulti != _cast.preNumAdulti) {
			return false;
		}
		
		if (preNumBamb != _cast.preNumBamb) {
			return false;
		}
		
		if (preCheckout == null ? _cast.preCheckout != preCheckout : !preCheckout.equals( _cast.preCheckout )) {
			return false;
		}
		
		if (prePrezzo != _cast.prePrezzo) {
			return false;
		}
		
		if (preCommissioni != _cast.preCommissioni) {
			return false;
		}
		
		if (preCommissioniNull != _cast.preCommissioniNull) {
			return false;
		}
		
		if (preCheckin == null ? _cast.preCheckin != preCheckin : !preCheckin.equals( _cast.preCheckin )) {
			return false;
		}
		
		if (preventiviPreId != _cast.preventiviPreId) {
			return false;
		}
		
		if (utenteUteId != _cast.utenteUteId) {
			return false;
		}
		
		if (camereCamId != _cast.camereCamId) {
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
		_hashCode = 29 * _hashCode + (int) (preId ^ (preId >>> 32));
		if (preNumero != null) {
			_hashCode = 29 * _hashCode + preNumero.hashCode();
		}
		
		if (preData != null) {
			_hashCode = 29 * _hashCode + preData.hashCode();
		}
		
		_hashCode = 29 * _hashCode + preNumAdulti;
		_hashCode = 29 * _hashCode + preNumBamb;
		if (preCheckout != null) {
			_hashCode = 29 * _hashCode + preCheckout.hashCode();
		}
		
		_hashCode = 29 * _hashCode + Float.floatToIntBits(prePrezzo);
		_hashCode = 29 * _hashCode + Float.floatToIntBits(preCommissioni);
		_hashCode = 29 * _hashCode + (preCommissioniNull ? 1 : 0);
		if (preCheckin != null) {
			_hashCode = 29 * _hashCode + preCheckin.hashCode();
		}
		
		_hashCode = 29 * _hashCode + (int) (preventiviPreId ^ (preventiviPreId >>> 32));
		_hashCode = 29 * _hashCode + (int) (utenteUteId ^ (utenteUteId >>> 32));
		_hashCode = 29 * _hashCode + (int) (camereCamId ^ (camereCamId >>> 32));
		return _hashCode;
	}

	/**
	 * Method 'createPk'
	 * 
	 * @return PrenotazioniPk
	 */
	public PrenotazioniPk createPk()
	{
		return new PrenotazioniPk(preId);
	}

	/**
	 * Method 'toString'
	 * 
	 * @return String
	 */
	public String toString()
	{
		StringBuffer ret = new StringBuffer();
		ret.append( "com.mysecretwish.dto.Prenotazioni: " );
		ret.append( "preId=" + preId );
		ret.append( ", preNumero=" + preNumero );
		ret.append( ", preData=" + preData );
		ret.append( ", preNumAdulti=" + preNumAdulti );
		ret.append( ", preNumBamb=" + preNumBamb );
		ret.append( ", preCheckout=" + preCheckout );
		ret.append( ", prePrezzo=" + prePrezzo );
		ret.append( ", preCommissioni=" + preCommissioni );
		ret.append( ", preCheckin=" + preCheckin );
		ret.append( ", preventiviPreId=" + preventiviPreId );
		ret.append( ", utenteUteId=" + utenteUteId );
		ret.append( ", camereCamId=" + camereCamId );
		return ret.toString();
	}

}
