package com.kama.KAMA_MINSAIT.dao;

import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.model.UsuarioMinsait;

public interface ILoginDao {
    public String getUserType(String email);
    public Candidato verificaCandidato(String email, String password);
    public UsuarioMinsait verificaUsuarioMinsait(String email, String password);

}
