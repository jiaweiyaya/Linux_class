#include <stdio.h>
#include "circlefuns.h"

int main() {
    double r;
    printf("请输入圆的半径：");
    scanf("%lf", &r);

    printf("圆的周长：%.2f\n", perimeter(r));
    printf("圆的面积：%.2f\n", area(r));

    return 0;
}
