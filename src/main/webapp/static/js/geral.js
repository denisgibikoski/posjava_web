
function exibirMensagem(tipo,mensagem){
    if (tipo == 'OK') {
        $('#divSucesso').html(mensagem);
        $('#divSucesso').fadeIn('fast');
        $('#divSucesso').fadeOut(2000);
    } else {
        $('#divErro').html(mensagem);
        $('#divErro').fadeIn('fast');
        $('#divErro').fadeOut(2000);
    }

}

function redirecionar(destino){
    window.location = destino;
}

$.fn.serializeObject = function()
{
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};
