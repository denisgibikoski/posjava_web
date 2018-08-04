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
import br.edu.utfpr.pb.web.model.Produtora;
import br.edu.utfpr.pb.web.repository.impl.ProdutoraRepositoryImpl;
import javax.inject.Inject;
import javax.validation.Valid;

/**
 *
 * @author denis
 */
@Controller
@Path("/produtora")
//Nome de Pasta
public class ProdutoraController {

    private Result result;

    private ProdutoraRepositoryImpl produtoraRepositoryImpl;

    private Validator validator;

    /**
     * @deprecated
     */
    public ProdutoraController() {
    }

    @Inject
    public ProdutoraController(Result result, ProdutoraRepositoryImpl produtoraRepositoryImpl, Validator validator) {
        this.result = result;
        this.produtoraRepositoryImpl = produtoraRepositoryImpl;
        this.validator = validator;
    }

    @Get
    @Path(value = {"", "/"})
    //Nome do arquivo
    public void list() {

        result.include("produtoras", produtoraRepositoryImpl.findAll());

    }

    @Get
    @Path(value = {"/form","/form/{id}" })
    //Nome do arquivo
    public void form(Long id) {
        if (id != null) {
            form(produtoraRepositoryImpl.findOne(id));
           
        }else{
            form( new Produtora());
        }
        
        
    }

    @Post
    @Path(value = {"", "/"})
    //Nome do arquivo
    public void salvar(@Valid Produtora produtora) {

        validator.onErrorForwardTo(this).form(produtora);
        try {
            produtoraRepositoryImpl.save(produtora);
            result.use(Results.logic()).redirectTo(ProdutoraController.class).list();
        } catch (Exception e) {
            result.use(Results.logic()).redirectTo(ProdutoraController.class).form(produtora);
        }

    }

    public void form( Produtora produtora ) {
        result.include("produtora", produtora);

    }

    @Delete
    @Path(value = "/{id}")
    public void delete(Long id) {
        produtoraRepositoryImpl.remove(id);
        result.use(Results.logic()).redirectTo(ProdutoraController.class).list();
    }
    
    

}
