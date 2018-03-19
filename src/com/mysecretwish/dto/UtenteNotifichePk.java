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
 * This class represents the primary key of the utente_notifiche table.
 */
public class UtenteNotifichePk implements Serializable
{
	protected long notificheId;

	/** 
	 * This attribute represents whether the primitive attribute notificheId is null.
	 */
	protected boolean notificheIdNull;

	/** 
	 * Sets the value of notificheId
	 */
	public void setNotificheId(long notificheId)
	{
		this.notificheId = notificheId;
	}

	/** 
	 * Gets the value of notificheId
	 */
	public long getNotificheId()
	{
		return notificheId;
	}

	/**
	 * Method 'UtenteNotifichePk'
	 * 
	 */
	public UtenteNotifichePk()
	{
	}

	/**
	 * Method 'UtenteNotifichePk'
	 * 
	 * @param notificheId
	 */
	public UtenteNotifichePk(final long notificheId)
	{
		this.notificheId = notificheId;
	}

	/** 
	 * Sets the value of notificheIdNull
	 */
	public void setNotificheIdNull(boolean notificheIdNull)
	{
		this.notificheIdNull = notificheIdNull;
	}

	/** 
	 * Gets the value of notificheIdNull
	 */
	public boolean isNotificheIdNull()
	{
		return notificheIdNull;
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
		
		if (!(_other instanceof UtenteNotifichePk)) {
			return false;
		}
		
		final UtenteNotifichePk _cast = (UtenteNotifichePk) _other;
		if (notificheId != _cast.notificheId) {
			return false;
		}
		
		if (notificheIdNull != _cast.notificheIdNull) {
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
		_hashCode = 29 * _hashCode + (int) (notificheId ^ (notificheId >>> 32));
		_hashCode = 29 * _hashCode + (notificheIdNull ? 1 : 0);
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
		ret.append( "com.mysecretwish.dto.UtenteNotifichePk: " );
		ret.append( "notificheId=" + notificheId );
		return ret.toString();
	}

}