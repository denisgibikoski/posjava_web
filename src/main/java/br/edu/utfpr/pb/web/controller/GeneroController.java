/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.pb.web.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.edu.utfpr.pb.web.repository.impl.GeneroRepositoryImpl;
import javax.inject.Inject;

/**
 *
 * @author denis
 */
@Controller
@Path("/genero")
//Nome de Pasta
public class GeneroController {

    private Result result;

    private GeneroRepositoryImpl generoRepositoryImpl;

    /**
     * @deprecated
     */
    public GeneroController() {
    }

    @Inject
    public GeneroController(Result result, GeneroRepositoryImpl generoRepositoryImpl) {
        this.result = result;
        this.generoRepositoryImpl = generoRepositoryImpl;
    }

    @Get
    @Path(value = {"", "/"})
    public void list() {

        result.include("generos", generoRepositoryImpl.findAll());
        
    }

}
