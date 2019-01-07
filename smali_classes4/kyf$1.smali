.class final Lkyf$1;
.super Lkyj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkyf;
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
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    const/16 v5, 0x10

    new-instance v1, Llau$b;

    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v2, "6277101735386680763835789423207666416083908700390324961279"

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v3, "fffffffffffffffffffffffffffffffefffffffffffffffc"

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "64210519e59c80e70fa7e9ab72243049feb8deecc146b9b1"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v0, v2, v3}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Lkyi;

    const-string/jumbo v2, "03188da80eb03090f67cbf20eb43a18800f4ff0afd82ff1012"

    invoke-static {v2}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Llau;->a([B)Llax;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string/jumbo v4, "ffffffffffffffffffffffff99def836146bc9b1b4d22831"

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const-string/jumbo v5, "3045AE6FC8422f64ED579528D38120EAE12196D5"

    invoke-static {v5}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
