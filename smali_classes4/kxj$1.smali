.class final Lkxj$1;
.super Lkyj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkxj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkyj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lkyi;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    const-string/jumbo v0, "DB7C2ABF62E35E668076BEAD208B"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    const-string/jumbo v1, "DB7C2ABF62E35E668076BEAD2088"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string/jumbo v1, "659EF8BA043916EEDE8911702B22"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string/jumbo v1, "00F50B028E4D696E676875615175290472783FB1"

    invoke-static {v1}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v1, "DB7C2ABF62E35E7628DFAC6561C5"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v1, Llau$b;

    invoke-direct {v1, v0, v2, v6}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v0, "0409487239995A5EE76B55F9C2F098A89CE5AF8724C0A23E0E0FF77500"

    invoke-static {v0}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Llau;->a([B)Llax;

    move-result-object v2

    new-instance v0, Lkyi;

    invoke-direct/range {v0 .. v5}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
