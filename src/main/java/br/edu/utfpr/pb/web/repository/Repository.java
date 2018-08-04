/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.pb.web.repository;

import br.edu.utfpr.pb.web.model.AbstractModel;
import java.io.Serializable;
import java.util.List;

/**
 *
 * @author denis
 * @param <T>
 * @param <ID>
 */
public interface Repository <T extends AbstractModel ,  ID extends Serializable>{
    
    T save (T entity);
    
    T findOne(ID id);
    
    List<T> findAll();
    
    List<T> findAll(int pageNumber, int pageSize );
    
    Long getTotalRecords();
    
    void remove(ID id);
    
    
    
}
