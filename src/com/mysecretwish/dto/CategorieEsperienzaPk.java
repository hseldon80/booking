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
 * This class represents the primary key of the categorie_esperienza table.
 */
public class CategorieEsperienzaPk implements Serializable
{
	protected long catId;

	/** 
	 * This attribute represents whether the primitive attribute catId is null.
	 */
	protected boolean catIdNull;

	/** 
	 * Sets the value of catId
	 */
	public void setCatId(long catId)
	{
		this.catId = catId;
	}

	/** 
	 * Gets the value of catId
	 */
	public long getCatId()
	{
		return catId;
	}

	/**
	 * Method 'CategorieEsperienzaPk'
	 * 
	 */
	public CategorieEsperienzaPk()
	{
	}

	/**
	 * Method 'CategorieEsperienzaPk'
	 * 
	 * @param catId
	 */
	public CategorieEsperienzaPk(final long catId)
	{
		this.catId = catId;
	}

	/** 
	 * Sets the value of catIdNull
	 */
	public void setCatIdNull(boolean catIdNull)
	{
		this.catIdNull = catIdNull;
	}

	/** 
	 * Gets the value of catIdNull
	 */
	public boolean isCatIdNull()
	{
		return catIdNull;
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
		
		if (!(_other instanceof CategorieEsperienzaPk)) {
			return false;
		}
		
		final CategorieEsperienzaPk _cast = (CategorieEsperienzaPk) _other;
		if (catId != _cast.catId) {
			return false;
		}
		
		if (catIdNull != _cast.catIdNull) {
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
		_hashCode = 29 * _hashCode + (int) (catId ^ (catId >>> 32));
		_hashCode = 29 * _hashCode + (catIdNull ? 1 : 0);
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
		ret.append( "com.mysecretwish.dto.CategorieEsperienzaPk: " );
		ret.append( "catId=" + catId );
		return ret.toString();
	}

}
