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

public class Visibilita implements Serializable
{
	/** 
	 * This attribute maps to the column vis_id in the visibilita table.
	 */
	protected long visId;

	/** 
	 * This attribute maps to the column vis_descrizione in the visibilita table.
	 */
	protected String visDescrizione;

	/**
	 * Method 'Visibilita'
	 * 
	 */
	public Visibilita()
	{
	}

	/**
	 * Method 'getVisId'
	 * 
	 * @return long
	 */
	public long getVisId()
	{
		return visId;
	}

	/**
	 * Method 'setVisId'
	 * 
	 * @param visId
	 */
	public void setVisId(long visId)
	{
		this.visId = visId;
	}

	/**
	 * Method 'getVisDescrizione'
	 * 
	 * @return String
	 */
	public String getVisDescrizione()
	{
		return visDescrizione;
	}

	/**
	 * Method 'setVisDescrizione'
	 * 
	 * @param visDescrizione
	 */
	public void setVisDescrizione(String visDescrizione)
	{
		this.visDescrizione = visDescrizione;
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
		
		if (!(_other instanceof Visibilita)) {
			return false;
		}
		
		final Visibilita _cast = (Visibilita) _other;
		if (visId != _cast.visId) {
			return false;
		}
		
		if (visDescrizione == null ? _cast.visDescrizione != visDescrizione : !visDescrizione.equals( _cast.visDescrizione )) {
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
		_hashCode = 29 * _hashCode + (int) (visId ^ (visId >>> 32));
		if (visDescrizione != null) {
			_hashCode = 29 * _hashCode + visDescrizione.hashCode();
		}
		
		return _hashCode;
	}

	/**
	 * Method 'createPk'
	 * 
	 * @return VisibilitaPk
	 */
	public VisibilitaPk createPk()
	{
		return new VisibilitaPk(visId);
	}

	/**
	 * Method 'toString'
	 * 
	 * @return String
	 */
	public String toString()
	{
		StringBuffer ret = new StringBuffer();
		ret.append( "com.mysecretwish.dto.Visibilita: " );
		ret.append( "visId=" + visId );
		ret.append( ", visDescrizione=" + visDescrizione );
		return ret.toString();
	}

}