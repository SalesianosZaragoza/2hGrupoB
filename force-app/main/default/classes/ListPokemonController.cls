public class ListPokemonController{
 
    public List<POKEMON__c> pokemons {get;set;}

    public ListPokemonController() {
        pokemons = [
            SELECT Pokemon_ID__c, Pokemon_Name__c, Pokemon_Lvl__c, Pokemon_HP__c, Pokemon_Attack__c, Pokemon_TrainerID__c 
            FROM POKEMON__c 
            ORDER BY Pokemon_ID__c];
    }


    public Pagereference goToPokemon(){
        PageReference pr=Page.AddPokemon;
        return pr;
    }
}