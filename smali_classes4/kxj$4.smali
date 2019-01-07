.class final Lkxj$4;
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
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    const-string/jumbo v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v0}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Llat;->f:Ljava/math/BigInteger;

    const-wide/16 v4, 0x7

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    const-string/jumbo v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    invoke-static {v1}, Lkxj;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v1, Llau$b;

    invoke-direct {v1, v0, v2, v5}, Llau$b;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string/jumbo v0, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v0}, Llbh;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Llau;->a([B)Llax;

    move-result-object v2

    new-instance v0, Lkyi;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkyi;-><init>(Llau;Llax;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
