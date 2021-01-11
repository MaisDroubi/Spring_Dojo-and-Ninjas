package com.assignment.dojoninjas.services;

import com.assignment.dojoninjas.models.Dojo;
import com.assignment.dojoninjas.models.Ninja;
import com.assignment.dojoninjas.repositories.DojoRepository;
import com.assignment.dojoninjas.repositories.NinjaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DojoNinjaService {
    private final NinjaRepository ninjaRepository;
    private final DojoRepository dojoRepository;

    public DojoNinjaService(NinjaRepository ninjaRepository, DojoRepository dojoRepository) {
        this.ninjaRepository = ninjaRepository;
        this.dojoRepository = dojoRepository;
    }
    public Dojo createDojo(Dojo dojo) {
        return dojoRepository.save(dojo);
    }
    public Ninja createNinja(Ninja ninja) {
        return ninjaRepository.save(ninja);
    }
    public List<Dojo> allDojos() {
        return dojoRepository.findAll();
    }
    public List<Ninja> allNinjas() {
        return ninjaRepository.findAll();
    }
    public Dojo findDojo(Long id) {
        return this.dojoRepository.findById(id).orElse(null);
    }

}
