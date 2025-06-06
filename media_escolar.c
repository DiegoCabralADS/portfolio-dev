
#include <stdio.h>
#include <string.h>

int main() {
    char nome[50];
    float nota1, nota2, nota3, media;

    printf("Digite o nome do aluno: ");
    fgets(nome, sizeof(nome), stdin);

    nome[strcspn(nome, "\n")] = 0;

    printf("Digite a primeira nota (use ponto como separador decimal): ");
    scanf("%f", &nota1);
    printf("Digite a segunda nota (use ponto como separador decimal): ");
    scanf("%f", &nota2);
    printf("Digite a terceira nota (use ponto como separador decimal): ");
    scanf("%f", &nota3);

    media = (nota1 + nota2 + nota3) / 3;

    printf("Média de %s: %.2f\n", nome, media);

    if (media >= 7)
        printf("Situação: Aprovado\n");
    else
        printf("Situação: Reprovado\n");

    return 0;
}
