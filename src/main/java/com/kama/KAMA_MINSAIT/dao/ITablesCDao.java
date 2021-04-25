package com.kama.KAMA_MINSAIT.dao;

import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.model.PuntajesTotal;

import java.util.List;

public interface ITablesCDao {
    public List<Candidato> obtenerLista();
    public Candidato obtenerCandidato(int idCandidato);
    public PuntajesTotal obtenerPuntajeCandidato(int idCandidato);
}
