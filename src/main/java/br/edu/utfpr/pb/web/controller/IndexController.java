/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.pb.web.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;


/**
 *
 * @author denis
 */
@Controller
//Nome de pasta
public class IndexController {
    
    /**
     * @deprecated 
    */
    public  IndexController(){
        
    }
    
    @Get
    @Path(value = "/")
    //Nome de Arquivo
    public void index(){
        
    }
    
}
