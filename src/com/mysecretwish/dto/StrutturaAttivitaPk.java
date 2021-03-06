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
 * This class represents the primary key of the struttura_attivita table.
 */
public class StrutturaAttivitaPk implements Serializable
{
	protected long satId;

	/** 
	 * This attribute represents whether the primitive attribute satId is null.
	 */
	protected boolean satIdNull;

	/** 
	 * Sets the value of satId
	 */
	public void setSatId(long satId)
	{
		this.satId = satId;
	}

	/** 
	 * Gets the value of satId
	 */
	public long getSatId()
	{
		return satId;
	}

	/**
	 * Method 'StrutturaAttivitaPk'
	 * 
	 */
	public StrutturaAttivitaPk()
	{
	}

	/**
	 * Method 'StrutturaAttivitaPk'
	 * 
	 * @param satId
	 */
	public StrutturaAttivitaPk(final long satId)
	{
		this.satId = satId;
	}

	/** 
	 * Sets the value of satIdNull
	 */
	public void setSatIdNull(boolean satIdNull)
	{
		this.satIdNull = satIdNull;
	}

	/** 
	 * Gets the value of satIdNull
	 */
	public boolean isSatIdNull()
	{
		return satIdNull;
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
		
		if (!(_other instanceof StrutturaAttivitaPk)) {
			return false;
		}
		
		final StrutturaAttivitaPk _cast = (StrutturaAttivitaPk) _other;
		if (satId != _cast.satId) {
			return false;
		}
		
		if (satIdNull != _cast.satIdNull) {
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
		_hashCode = 29 * _hashCode + (int) (satId ^ (satId >>> 32));
		_hashCode = 29 * _hashCode + (satIdNull ? 1 : 0);
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
		ret.append( "com.mysecretwish.dto.StrutturaAttivitaPk: " );
		ret.append( "satId=" + satId );
		return ret.toString();
	}

}
