.class final Lkxj$12;
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

    const-string/jumbo v1, "6127C24C05F38A0AAAF65C0EF02C"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string/jumbo v1, "51DEF1815DB5ED74FCC34C85D709"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string/jumbo v1, "002757A1114D696E6768756151755316C05E0BD4"

    invoke-static {v1}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v1, "36DF0AAFD8B8D7597CA10520D04B"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v8, 0x4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v1, Llau$b;

    invoke-direct {v1, v0, v2, v6}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v0, "044BA30AB5E892B4E1649DD0928643ADCD46F5882E3747DEF36E956E97"

    invoke-static {v0}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Llau;->a([B)Llax;

    move-result-object v2

    new-instance v0, Lkyi;

    invoke-direct/range {v0 .. v5}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
