.class public final Lkpa;
.super Lkpc;
.source "BasicCertificateChainCleaner.java"


# instance fields
.field private final a:Lkpe;


# direct methods
.method public constructor <init>(Lkpe;)V
    .locals 0
    .param p1, "trustRootIndex"    # Lkpe;

    .prologue
    .line 43
    invoke-direct {p0}, Lkpc;-><init>()V

    .line 44
    iput-object p1, p0, Lkpa;->a:Lkpe;

    .line 45
    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 3
    .param p0, "toVerify"    # Ljava/security/cert/X509Certificate;
    .param p1, "signingCert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 57
    .local v3, "queue":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/security/cert/Certificate;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v3}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v1, 0x0

    .line 62
    .local v1, "foundTrustedCertificate":Z
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    const/16 v8, 0x9

    if-ge v0, v8, :cond_7

    .line 63
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 68
    .local v6, "toVerify":Ljava/security/cert/X509Certificate;
    iget-object v8, p0, Lkpa;->a:Lkpe;

    invoke-interface {v8, v6}, Lkpe;->a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 69
    .local v7, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_4

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    invoke-virtual {v6, v7}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 71
    :cond_0
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    invoke-static {v7, v7}, Lkpa;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 93
    :cond_2
    return-object v4

    .line 76
    :cond_3
    const/4 v1, 0x1

    .line 62
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_4
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 84
    .local v5, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-static {v6, v5}, Lkpa;->a(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    .end local v5    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_6
    if-nez v1, :cond_2

    .line 97
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Failed to find a trusted cert that signed "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/Certificate;>;"
    .end local v6    # "toVerify":Ljava/security/cert/X509Certificate;
    .end local v7    # "trustedCert":Ljava/security/cert/X509Certificate;
    :cond_7
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Certificate chain too long: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 120
    if-ne p1, p0, :cond_1

    .line 122
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 121
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lkpa;

    if-eqz v1, :cond_2

    check-cast p1, Lkpa;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lkpa;->a:Lkpe;

    iget-object v2, p0, Lkpa;->a:Lkpe;

    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    .line 121
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lkpa;->a:Lkpe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
