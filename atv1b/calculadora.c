int read(int __fd, const void *__buf, int __n);
void write(int __fd, const void *__buf, int __n);
void exit(int code);
int main();
void _start();

int read(int __fd, const void *__buf, int __n) {
    int ret_val;
    __asm__ __volatile__(
        "mv a0, %1\n"
        "mv a1, %2\n"
        "mv a2, %3\n"
        "li a7, 63\n" 
        "ecall\n"
        "mv %0, a0"
        : "=r"(ret_val)
        : "r"(__fd), "r"(__buf), "r"(__n)
        : "a0", "a1", "a2", "a7"
    );
    return ret_val;
}

void write(int __fd, const void *__buf, int __n) {
    __asm__ __volatile__(
        "mv a0, %0\n"
        "mv a1, %1\n"
        "mv a2, %2\n"
        "li a7, 64\n"
        "ecall"
        : 
        : "r"(__fd), "r"(__buf), "r"(__n)
        : "a0", "a1", "a2", "a7"
    );
}

void exit(int code) {
    __asm__ __volatile__(
        "mv a0, %0\n"
        "li a7, 93\n"
        "ecall"
        : : "r"(code) : "a0", "a7"
    );
}

void _start() {
    int ret_code = main();
    exit(ret_code);
}

/* calculadira */
int main() {
    char input[6]; 
    char result_buffer[2]; // caractere + \n

    read(0, input, 5);

    int v1 = input[0] - '0';
    char op = input[2];
    int v2 = input[4] - '0';
    int res = 0;

    if (op == '+') {
        res = v1 + v2;
    } else if (op == '-') {
        res = v1 - v2;
    } else if (op == '*') {
        res = v1 * v2;
    }

    result_buffer[0] = res + '0';
    result_buffer[1] = '\n';

    write(1, result_buffer, 2);

    return 0;
}