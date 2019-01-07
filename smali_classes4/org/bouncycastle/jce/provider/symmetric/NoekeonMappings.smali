.class public Lorg/bouncycastle/jce/provider/symmetric/NoekeonMappings;
.super Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "AlgorithmParameters.NOEKEON"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.symmetric.Noekeon$AlgParams"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/symmetric/NoekeonMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "AlgorithmParameterGenerator.NOEKEON"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.symmetric.Noekeon$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/symmetric/NoekeonMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Cipher.NOEKEON"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.symmetric.Noekeon$ECB"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/symmetric/NoekeonMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyGenerator.NOEKEON"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.symmetric.Noekeon$KeyGen"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/symmetric/NoekeonMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
