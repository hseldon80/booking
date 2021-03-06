/*
 * This source file was generated by FireStorm/DAO.
 * 
 * If you purchase a full license for FireStorm/DAO you can customize this header file.
 * 
 * For more information please visit http://www.codefutures.com/products/firestorm
 */

package com.mysecretwish.factory;

import java.sql.Connection;
import com.mysecretwish.dao.*;
import com.mysecretwish.jdbc.*;

public class CondizioniTemplateMessaggiDaoFactory
{
	/**
	 * Method 'create'
	 * 
	 * @return CondizioniTemplateMessaggiDao
	 */
	public static CondizioniTemplateMessaggiDao create()
	{
		return new CondizioniTemplateMessaggiDaoImpl();
	}

	/**
	 * Method 'create'
	 * 
	 * @param conn
	 * @return CondizioniTemplateMessaggiDao
	 */
	public static CondizioniTemplateMessaggiDao create(Connection conn)
	{
		return new CondizioniTemplateMessaggiDaoImpl( conn );
	}

}
