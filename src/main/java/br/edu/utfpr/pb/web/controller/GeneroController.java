/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.utfpr.pb.web.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.caelum.vraptor.view.Results;
import br.edu.utfpr.pb.web.model.Genero;
import br.edu.utfpr.pb.web.repository.impl.GeneroRepositoryImpl;
import javax.inject.Inject;
import javax.validation.Valid;

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

    private Validator validator;

    /**
     * @deprecated
     */
    public GeneroController() {
    }

    @Inject
    public GeneroController(Result result, GeneroRepositoryImpl generoRepositoryImpl, Validator validator) {
        this.result = result;
        this.generoRepositoryImpl = generoRepositoryImpl;
        this.validator = validator;
    }

    @Get
    @Path(value = {"", "/"})
    //Nome do arquivo
    public void list() {

        result.include("generos", generoRepositoryImpl.findAll());

    }

    @Get
    @Path(value = "/form")
    //Nome do arquivo
    public void form() {

    }

    @Post
    @Path(value = {"", "/"})
    //Nome do arquivo
    public void salvar(@Valid Genero genero) {

        validator.onErrorForwardTo(this).form(genero);
        try {
            generoRepositoryImpl.save(genero);
            result.use(Results.logic()).redirectTo(GeneroController.class).list();
        } catch (Exception e) {
            result.use(Results.logic()).redirectTo(GeneroController.class).form(genero);
        }

    }

    public void form(Genero genero) {
        result.include("genero", genero);

    }

    @Delete
    @Path(value = "/{id}")
    public void delete(Long id) {
        generoRepositoryImpl.remove(id);
        result.use(Results.logic()).redirectTo(GeneroController.class).list();
    }

}
