#include "hello_world.c"
#include "goodbye_world.c"

int main (void)
{
    printf("%s%s", hello_world(), goodbye_world());
}