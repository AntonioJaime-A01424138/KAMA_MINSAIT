package com.kama.KAMA_MINSAIT.dao;

import com.kama.KAMA_MINSAIT.model.Candidato;

public interface IRegisterDao {
    public boolean createApplicant(Candidato candidato, String password);

}