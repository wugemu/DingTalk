.class public Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;


# instance fields
.field private gost3410Spec:Lkzv;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;Llap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    return-void
.end method

.method public constructor <init>(Lkxs;)V
    .locals 5

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lkwq;

    .line 6000
    iget-object v0, p1, Lkxs;->a:Lkxn;

    .line 7000
    iget-object v0, v0, Lkxn;->b:Lkva;

    .line 0
    check-cast v0, Lkuc;

    invoke-direct {v1, v0}, Lkwq;-><init>(Lkuc;)V

    :try_start_0
    invoke-virtual {p1}, Lkxs;->e()Lkvm;

    move-result-object v0

    check-cast v0, Lkvo;

    invoke-virtual {v0}, Lkvo;->f()[B

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-eq v0, v4, :cond_0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, v2, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Llap;->a(Lkwq;)Llap;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid info structure in GOST3410 public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkzg;Llap;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5000
    const/4 v0, 0x0

    .line 0
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    return-void
.end method

.method constructor <init>(Llas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Llap;

    new-instance v1, Llar;

    invoke-direct {v1, v2, v2, v2}, Llar;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Llap;-><init>(Llar;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getParameters()Lkzv;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    iget-object v2, p1, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "GOST3410"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aget-byte v0, v2, v1

    if-nez v0, :cond_0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    :goto_0
    array-length v3, v0

    if-eq v1, v3, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, v2, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v2

    new-array v0, v0, [B

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    instance-of v1, v1, Llap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-interface {v1}, Lkzv;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lkxs;

    new-instance v2, Lkxn;

    sget-object v3, Lkwm;->c:Lkvn;

    new-instance v4, Lkwq;

    new-instance v5, Lkvn;

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-interface {v6}, Lkzv;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lkvn;-><init>(Ljava/lang/String;)V

    new-instance v6, Lkvn;

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-interface {v7}, Lkzv;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lkvn;-><init>(Ljava/lang/String;)V

    new-instance v7, Lkvn;

    iget-object v8, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-interface {v8}, Lkzv;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lkwq;-><init>(Lkvn;Lkvn;Lkvn;)V

    invoke-virtual {v4}, Lkwq;->c()Lkvm;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkxn;-><init>(Lkvn;Lkva;)V

    new-instance v3, Lkvo;

    invoke-direct {v3, v0}, Lkvo;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lkxs;-><init>(Lkxn;Lkva;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lkxs;->b()[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Lkxs;

    new-instance v2, Lkxn;

    sget-object v3, Lkwm;->c:Lkvn;

    new-instance v4, Lkwq;

    new-instance v5, Lkvn;

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-interface {v6}, Lkzv;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lkvn;-><init>(Ljava/lang/String;)V

    new-instance v6, Lkvn;

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-interface {v7}, Lkzv;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lkvn;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lkwq;-><init>(Lkvn;Lkvn;)V

    invoke-virtual {v4}, Lkwq;->c()Lkvm;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkxn;-><init>(Lkvn;Lkva;)V

    new-instance v3, Lkvo;

    invoke-direct {v3, v0}, Lkvo;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lkxs;-><init>(Lkxn;Lkva;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v1, Lkxs;

    new-instance v2, Lkxn;

    sget-object v3, Lkwm;->c:Lkvn;

    invoke-direct {v2, v3}, Lkxn;-><init>(Lkvn;)V

    new-instance v3, Lkvo;

    invoke-direct {v3, v0}, Lkvo;-><init>([B)V

    invoke-direct {v1, v2, v3}, Lkxs;-><init>(Lkxn;Lkva;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lkzv;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lkzv;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GOST3410 Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "            y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
