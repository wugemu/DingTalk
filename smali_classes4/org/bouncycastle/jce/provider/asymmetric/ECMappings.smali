.class public Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;
.super Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "KeyAgreement.ECDH"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DH"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyAgreement.ECDHC"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyAgreement.ECMQV"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQV"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "KeyAgreement."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->V:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$DHwithSHA1KDF"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "KeyAgreement."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->X:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyAgreement$MQVwithSHA1KDF"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyFactory.EC"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$EC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyFactory.ECDSA"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyFactory.ECDH"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDH"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyFactory.ECDHC"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECDHC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyFactory.ECMQV"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECMQV"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.KeyFactory."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->k:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.KeyFactory."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->V:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.KeyFactory."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->X:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ECMQV"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyFactory.ECGOST3410"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyFactory$ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyFactory.GOST-3410-2001"

    const-string/jumbo v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyFactory.ECGOST-3410"

    const-string/jumbo v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.KeyFactory."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkwm;->d:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.EC"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$EC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.ECDSA"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.ECDH"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.ECDHC"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDHC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.ECIES"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECDH"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.ECMQV"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECMQV"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->V:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EC"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.KeyPairGenerator."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkyo;->X:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ECMQV"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "KeyPairGenerator.ECGOST3410"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.KeyPairGenerator$ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.ECGOST-3410"

    const-string/jumbo v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.KeyPairGenerator.GOST-3410-2001"

    const-string/jumbo v1, "ECGOST3410"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.ECDSA"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.NONEwithECDSA"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSAnone"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.SHA1withECDSA"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WITHECDSA"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAWITHSHA1"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WithECDSA"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAWithSHA1"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alg.Alias.Signature."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lkxm;->h:Lkvn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ECDSA"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA224"

    const-string/jumbo v1, "ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA224"

    sget-object v3, Lkyo;->m:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "SHA256"

    const-string/jumbo v1, "ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA256"

    sget-object v3, Lkyo;->n:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "SHA384"

    const-string/jumbo v1, "ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA384"

    sget-object v3, Lkyo;->o:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "SHA512"

    const-string/jumbo v1, "ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSA512"

    sget-object v3, Lkyo;->p:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "RIPEMD160"

    const-string/jumbo v1, "ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecDSARipeMD160"

    sget-object v3, Lkxm;->i:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "Signature.SHA1WITHECNR"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.SHA224WITHECNR"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR224"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.SHA256WITHECNR"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR256"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.SHA384WITHECNR"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR384"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Signature.SHA512WITHECNR"

    const-string/jumbo v1, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecNR512"

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SHA1"

    const-string/jumbo v1, "CVC-ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA"

    sget-object v3, Lkwr;->q:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "SHA224"

    const-string/jumbo v1, "CVC-ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA224"

    sget-object v3, Lkwr;->r:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    const-string/jumbo v0, "SHA256"

    const-string/jumbo v1, "CVC-ECDSA"

    const-string/jumbo v2, "org.bouncycastle.jce.provider.asymmetric.ec.Signature$ecCVCDSA256"

    sget-object v3, Lkwr;->s:Lkvn;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V

    return-void
.end method

.method private addSignatureAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkvn;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "WITH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "with"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "With"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Signature."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Alg.Alias.Signature."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Alg.Alias.Signature."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Alg.Alias.Signature."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Alg.Alias.Signature."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Alg.Alias.Signature.OID."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/jce/provider/asymmetric/ECMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
