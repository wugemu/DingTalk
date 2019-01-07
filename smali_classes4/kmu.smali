.class public final Lkmu;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field public final a:Lkmk;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lokhttp3/TlsVersion;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lokhttp3/TlsVersion;Lkmk;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "tlsVersion"    # Lokhttp3/TlsVersion;
    .param p2, "cipherSuite"    # Lkmk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/TlsVersion;",
            "Lkmk;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p4, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lkmu;->c:Lokhttp3/TlsVersion;

    .line 45
    iput-object p2, p0, Lkmu;->a:Lkmk;

    .line 46
    iput-object p3, p0, Lkmu;->b:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lkmu;->d:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static a(Ljavax/net/ssl/SSLSession;)Lkmu;
    .locals 10
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "cipherSuiteString":Ljava/lang/String;
    if-nez v1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "cipherSuite == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 53
    :cond_0
    const-string/jumbo v8, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 54
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 56
    :cond_1
    invoke-static {v1}, Lkmk;->a(Ljava/lang/String;)Lkmk;

    move-result-object v0

    .line 58
    .local v0, "cipherSuite":Lkmk;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "tlsVersionString":Ljava/lang/String;
    if-nez v7, :cond_2

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "tlsVersion == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 60
    :cond_2
    const-string/jumbo v8, "NONE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "tlsVersion == NONE"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 61
    :cond_3
    invoke-static {v7}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v6

    .line 65
    .local v6, "tlsVersion":Lokhttp3/TlsVersion;
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    if-eqz v4, :cond_4

    .line 70
    invoke-static {v4}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 73
    .local v5, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_1
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 74
    .local v2, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_5

    .line 75
    invoke-static {v2}, Lknj;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :goto_2
    new-instance v8, Lkmu;

    invoke-direct {v8, v6, v0, v5, v3}, Lkmu;-><init>(Lokhttp3/TlsVersion;Lkmk;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 67
    .end local v2    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v3    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catch_0
    move-exception v8

    const/4 v4, 0x0

    .restart local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0

    .line 71
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 76
    .restart local v2    # "localCertificates":[Ljava/security/cert/Certificate;
    .restart local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 127
    instance-of v2, p1, Lkmu;

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 128
    check-cast v0, Lkmu;

    .line 129
    .local v0, "that":Lkmu;
    iget-object v2, p0, Lkmu;->c:Lokhttp3/TlsVersion;

    iget-object v3, v0, Lkmu;->c:Lokhttp3/TlsVersion;

    invoke-virtual {v2, v3}, Lokhttp3/TlsVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkmu;->a:Lkmk;

    iget-object v3, v0, Lkmu;->a:Lkmk;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkmu;->b:Ljava/util/List;

    iget-object v3, v0, Lkmu;->b:Ljava/util/List;

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkmu;->d:Ljava/util/List;

    iget-object v3, v0, Lkmu;->d:Ljava/util/List;

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 137
    iget-object v1, p0, Lkmu;->c:Lokhttp3/TlsVersion;

    invoke-virtual {v1}, Lokhttp3/TlsVersion;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 138
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lkmu;->a:Lkmk;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lkmu;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 140
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lkmu;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 141
    return v0
.end method
