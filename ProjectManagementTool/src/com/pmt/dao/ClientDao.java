package com.pmt.dao;

import java.util.List;

import com.pmt.model.Client;
import com.pmt.model.Skill;

public interface ClientDao {
	
	public void addClient(Client client);
    public void updateClient(Client client);
    public List<Client> listClients();
    public Client getClientById(int id);
    public void removeClient(int id);
    public List<Client> getClientsByName(String name);
    public List<Client> getClientsById(int id);
	

}
