.class final Lwg$a;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lwg$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lwg$a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lwg$a;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v2, Lwg$a;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lwg$a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    sget-object v1, Lwg$a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwg$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v0, "trustManager":Lwg$a;
    :goto_0
    monitor-exit v2

    return-object v0

    .line 83
    .end local v0    # "trustManager":Lwg$a;
    :cond_0
    :try_start_1
    new-instance v0, Lwg$a;

    invoke-direct {v0, p0}, Lwg$a;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v0    # "trustManager":Lwg$a;
    sget-object v1, Lwg$a;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v0    # "trustManager":Lwg$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 93
    if-eqz p1, :cond_0

    .line 94
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 95
    .local v0, "element":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "checkClientTrusted: "

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "element":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {}, Lwg;->b()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 105
    invoke-static {p1}, Lwg;->a([Ljava/security/cert/X509Certificate;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, p1, v4

    .line 110
    .local v2, "element":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "checkServerTrusted use default: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "element":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {}, Lwg;->b()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v5, p0, Lwg$a;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lux;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "dn":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " Domain name check failure, do not match "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lwg$a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->a(Ljava/lang/String;)I

    .line 133
    :try_start_1
    invoke-static {}, Lwg;->d()Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 134
    invoke-static {}, Lwg;->d()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    .end local v0    # "dn":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 118
    :catch_0
    move-exception v4

    if-eqz p1, :cond_2

    .line 119
    array-length v5, p1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_2

    aget-object v2, p1, v4

    .line 120
    .restart local v2    # "element":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "checkServerTrusted use local: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    .end local v2    # "element":Ljava/security/cert/X509Certificate;
    :cond_2
    invoke-static {}, Lwg;->c()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, p1, v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .restart local v0    # "dn":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {}, Lwg;->e()Ljava/security/KeyStore;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "keyStoreCertAlias":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "dn:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " match:"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyx;->b(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 146
    .end local v3    # "keyStoreCertAlias":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/security/cert/CertificateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Certificate cannot be verified; KeyStore Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v3    # "keyStoreCertAlias":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/security/cert/CertificateException;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Certificate["

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "] domain name does not match "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lwg$a;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lwg;->b()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
