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
 * This class represents the primary key of the preventivi_servizi table.
 */
public class PreventiviServiziPk implements Serializable
{
	protected long preventiviServiziId;

	/** 
	 * This attribute represents whether the primitive attribute preventiviServiziId is null.
	 */
	protected boolean preventiviServiziIdNull;

	/** 
	 * Sets the value of preventiviServiziId
	 */
	public void setPreventiviServiziId(long preventiviServiziId)
	{
		this.preventiviServiziId = preventiviServiziId;
	}

	/** 
	 * Gets the value of preventiviServiziId
	 */
	public long getPreventiviServiziId()
	{
		return preventiviServiziId;
	}

	/**
	 * Method 'PreventiviServiziPk'
	 * 
	 */
	public PreventiviServiziPk()
	{
	}

	/**
	 * Method 'PreventiviServiziPk'
	 * 
	 * @param preventiviServiziId
	 */
	public PreventiviServiziPk(final long preventiviServiziId)
	{
		this.preventiviServiziId = preventiviServiziId;
	}

	/** 
	 * Sets the value of preventiviServiziIdNull
	 */
	public void setPreventiviServiziIdNull(boolean preventiviServiziIdNull)
	{
		this.preventiviServiziIdNull = preventiviServiziIdNull;
	}

	/** 
	 * Gets the value of preventiviServiziIdNull
	 */
	public boolean isPreventiviServiziIdNull()
	{
		return preventiviServiziIdNull;
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
		
		if (!(_other instanceof PreventiviServiziPk)) {
			return false;
		}
		
		final PreventiviServiziPk _cast = (PreventiviServiziPk) _other;
		if (preventiviServiziId != _cast.preventiviServiziId) {
			return false;
		}
		
		if (preventiviServiziIdNull != _cast.preventiviServiziIdNull) {
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
		_hashCode = 29 * _hashCode + (int) (preventiviServiziId ^ (preventiviServiziId >>> 32));
		_hashCode = 29 * _hashCode + (preventiviServiziIdNull ? 1 : 0);
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
		ret.append( "com.mysecretwish.dto.PreventiviServiziPk: " );
		ret.append( "preventiviServiziId=" + preventiviServiziId );
		return ret.toString();
	}

}
