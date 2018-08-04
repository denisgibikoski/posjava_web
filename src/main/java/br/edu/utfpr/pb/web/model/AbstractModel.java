/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.pb.web.model;

import java.io.Serializable;

/**
 *
 * @author denis
 * @param <ID>
 */
public interface AbstractModel <ID extends Serializable> extends Serializable{
    
    ID getId();
    
    
}
