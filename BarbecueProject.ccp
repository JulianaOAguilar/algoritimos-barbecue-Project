#include <stdio.h>
#include <math.h>


/* receber quantidade de homens, mulheres e crianc¸as
e montar uma lista de compras com 10 itens de churrasco
4h de churrasco

450g por homens
300g pra mulheres
200g pra crianças
*/

int main ()
{

    //grocery list for the barbecue!!!!!!! 
    //steaks per people (kg)
    float picanha = 0.100; 
    float rumpSteak = 0.080;
    float lamb = 0.080;
    float sausage = 0.070;
    float ribs = 0.070;
    
        
    //drinks 
    int beer = 8; //a pack of 8 bears
    float soda = 1.5; //
    
    //other
    int garlicBread = 6; //packet of 6
    int popsicle = 1; //unity


    //people quantity
    int men, women, children;
    printf("Insira a quantidade de homens para o churrascao: ");
    scanf("%i", &men);
    printf("Insira a quantidade de mulheres para o churrascao: ");
    scanf("%i", &women);
    printf("Insira a quantidade de criancas para o churrascao: ");
    scanf("%i", &children);
    
    //unity of man
    float oneManSteak = (picanha * 2) + rumpSteak + lamb + sausage + ribs;
    int oneManBeer = (beer / 4);
    float oneManSoda = (soda / 5);
    float oneManGarlicBread = (garlicBread / 6) * 5;
    
    //unity of women
    float oneWomanSteak = (picanha * 1.5) + rumpSteak + lamb + sausage + ribs; // adjusted for women
    int oneWomanBeer = (beer / 6);
    float oneWomanSoda = (soda / 5);
    float oneWomanGarlicBread = (garlicBread / 6) * 3;
    int oneWomanPopsicle = popsicle;
    
    //unity of child
    float oneChildSteak = (picanha * 0.75) + (rumpSteak * 0.60) + (lamb * 0.70) + (sausage * 0.70) + (ribs * 0.50);
    float oneChildSoda = (soda / 4);
    float oneChildGarlicBread = (garlicBread / 6) * 2;
    int oneChildPopsicle = popsicle * 2;
    

    //total steaks
    float totalPicanha = (men*(picanha * 2)) + (women*(picanha * 1.5)) + (children*(picanha*0.75));
    float totalRumpSteak = (men*rumpSteak) + (women*rumpSteak) + (children*(rumpSteak*0.70));
    float totalLamb = (men*lamb) + (women*lamb) + (children*(lamb*0.70));
    float totalSausage = (men*sausage) + (women*sausage) + (children*(sausage*0.70));
    float totalRibs = (men*ribs) + (women*ribs) + (children*(ribs*0.50));
    
    //total men
    float menSteak = oneManSteak * men;
    int menBeer = oneManBeer * men;
    float menSoda = oneManSoda * men;
    float menGarlicBread = oneManGarlicBread *men; 
    
    //total Women
    float womenSteak = oneWomanSteak * women;
    int womenBeer = oneWomanBeer * women;
    float womenSoda = oneWomanSoda * women;
    float womenGarlicBread = oneWomanGarlicBread * women; 
    int womenPopsicle = oneWomanPopsicle * women;
    
    
    //total Children
    float childrenSteak = oneChildSteak * children;
    float childrenSoda = oneChildSoda * children;
    float childrenGarlicBread = oneChildGarlicBread * children; 
    int childrenPopsicle = oneChildPopsicle* children;
    
    //total barbecue
    int all = men + women + children;
    int allBeer = menBeer + womenBeer;
    float allSoda = menSoda + womenSoda + childrenSoda;
    float allGarlicBread = menGarlicBread + womenGarlicBread + childrenGarlicBread;
    int allPopsicle = womenPopsicle + childrenPopsicle;
    float allSteak = menSteak + womenSteak + childrenSteak;
    float coal = allSteak * 1.5 ;
    
    //beer and soda
    float beerPack = ceil(allBeer / 8);
    float petSoda = ceil(allSoda / 1.5);
    float packGarlicBread = ceil(allGarlicBread / 6);
    
    
    
    
    //prints
   
    printf("Lista de compras  \n");
    
    printf("\n      Carnes:");
    printf("\nPicanha: %.2fKg",totalPicanha);
    printf("\nbife de alcatra: %.2fKg",totalRumpSteak);
    printf("\ncordeiro: %.2fKg",totalLamb);
    printf("\nlinguica: %.2fKg",totalSausage);
    printf("\nCostelinha: %.2fKg",totalRibs);

    printf("\n\n      bebidas:");
    printf("\nCerveja: %.0f fardos \n",beerPack);
    printf("Refrigerante: %.0f garrafas de 1,5L \n",petSoda);
    
    printf("\n      Outros:");
    printf("\nPicole: %i unidades \n",allPopsicle);
    printf("Pao de alho: %.0f pacotes\n",packGarlicBread);
    printf("carvao: %.2fKg\n",coal);

    
    printf("\nINFORMACOES UTEIS \n");
         
    printf("\ntotal do churrasco: ");
    printf("\n%i pessoas: %.2fkg de carne, %i latinhas de cerveja, %.2fL de refri, %.0f paes de alho, %i picoles", all, allSteak, allBeer, allSoda, allGarlicBread, allPopsicle);
    printf("\n\ntotal por genero: ");
    
    printf("\n%i homens: %.2fkg de carne, %i latinhas de cerveja, %.2fL de refri, %.0f paes de alho", men, menSteak, menBeer, menSoda, menGarlicBread);
    printf("\n%i mulheres: %.2fkg de carne, %i latinhas de cerveja, %.2fL de refri, %.0f paes de alho, %i picoles", women, womenSteak, womenBeer, womenSoda, womenGarlicBread, womenPopsicle);
    printf("\n%i criancas: %.2fkg de carne, %.2fL de refri, %.0f paes de alho, %i picoles\n", children, childrenSteak, childrenSoda, childrenGarlicBread, childrenPopsicle);
    
	 printf("\nquantidade por homem: %.2fkg de carne, %i latinhas de cerveja, %.2fL de refri, %.0f paes de alho\n", oneManSteak, oneManBeer, oneManSoda, oneManGarlicBread);
    printf("quantidade por mulher: %.2fkg de carne, %i latinhas de cerveja, %.2fL de refri, %.0f pase de alho, %i picole", oneWomanSteak, oneWomanBeer, oneWomanSoda, oneWomanGarlicBread, oneWomanPopsicle);
    printf("\nquantidade por crianca: %.2fkg de carne, %.2fL de refri, %.0f paes de alho, %i picole", oneChildSteak, oneChildSoda, oneChildGarlicBread, oneChildPopsicle);
    return 0;
}
