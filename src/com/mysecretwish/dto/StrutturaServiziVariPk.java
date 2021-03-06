/*
 * This source file was generated by FireStorm/DAO.
 * 
 * If you purchase a full license for FireStorm/DAO you can customize this header file.
 * 
 * For more information please visit http://www.codefutures.com/products/firestorm
 */

package com.mysecretwish.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/** 
 * This class represents the primary key of the struttura_servizi_vari table.
 */
public class StrutturaServiziVariPk implements Serializable
{
	protected long ssvId;

	/** 
	 * This attribute represents whether the primitive attribute ssvId is null.
	 */
	protected boolean ssvIdNull;

	/** 
	 * Sets the value of ssvId
	 */
	public void setSsvId(long ssvId)
	{
		this.ssvId = ssvId;
	}

	/** 
	 * Gets the value of ssvId
	 */
	public long getSsvId()
	{
		return ssvId;
	}

	/**
	 * Method 'StrutturaServiziVariPk'
	 * 
	 */
	public StrutturaServiziVariPk()
	{
	}

	/**
	 * Method 'StrutturaServiziVariPk'
	 * 
	 * @param ssvId
	 */
	public StrutturaServiziVariPk(final long ssvId)
	{
		this.ssvId = ssvId;
	}

	/** 
	 * Sets the value of ssvIdNull
	 */
	public void setSsvIdNull(boolean ssvIdNull)
	{
		this.ssvIdNull = ssvIdNull;
	}

	/** 
	 * Gets the value of ssvIdNull
	 */
	public boolean isSsvIdNull()
	{
		return ssvIdNull;
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
		
		if (!(_other instanceof StrutturaServiziVariPk)) {
			return false;
		}
		
		final StrutturaServiziVariPk _cast = (StrutturaServiziVariPk) _other;
		if (ssvId != _cast.ssvId) {
			return false;
		}
		
		if (ssvIdNull != _cast.ssvIdNull) {
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
		_hashCode = 29 * _hashCode + (int) (ssvId ^ (ssvId >>> 32));
		_hashCode = 29 * _hashCode + (ssvIdNull ? 1 : 0);
		return _hashCode;
	}

	/**
	 * Method 'toString'
	 * 
	 * @return String
	 */
	public String toString()
	{
		StringBuffer ret = new StringBuffer();
		ret.append( "com.mysecretwish.dto.StrutturaServiziVariPk: " );
		ret.append( "ssvId=" + ssvId );
		return ret.toString();
	}

}
