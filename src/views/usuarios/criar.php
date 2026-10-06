<?php include '../../../config/header.php'; ?>
<form action="" method="post" class="mt-3">
    <div class="form-group mt-2">
        <label for="unom">NOME:</label>
        <input type="text" name="unom" id="unom" class="form-control">
    </div>
    <div class="form-group mt-2">
        <label for="usen">SENHA:</label>
        <input type="password" name="usen" id="usen" class="form-control">
    </div>
    <div class="form-group mt-2">
        <label for="utip">TIPO:</label>
        <select class="form-select" name="utip" id="utip">
            <option selected>Selecione o Tipo de Usuário</option>
            <option value="Atendente">Atendente</option>
            <option value="Enfermeira">Enfermeira</option>
            <option value="Medico">Médico</option>
            <option value="Paciente">Paciente</option>
        </select>
    </div>
    <button type="submit" class="btn btn-outline-primary mt-3">GRAVAR</button>
</form>