.class final Lamk;
.super Ljava/lang/Object;
.source "UtTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static a:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lamk;->a:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()[Ljavax/net/ssl/TrustManager;
    .locals 4

    .prologue
    .line 25
    const-class v1, Lamk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lamk;->a:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lamk;

    invoke-direct {v3}, Lamk;-><init>()V

    aput-object v3, v0, v2

    sput-object v0, Lamk;->a:[Ljavax/net/ssl/TrustManager;

    .line 29
    :cond_0
    sget-object v0, Lamk;->a:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 35
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

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v7, p1

    if-gtz v7, :cond_1

    .line 40
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 45
    :cond_1
    :try_start_0
    const-string/jumbo v7, "X509"

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    .line 46
    .local v5, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 54
    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 56
    .local v6, "trustManager":Ljavax/net/ssl/TrustManager;
    :try_start_1
    check-cast v6, Ljavax/net/ssl/X509TrustManager;

    .end local v6    # "trustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v6, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/security/cert/CertificateException;

    invoke-direct {v7, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 49
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v7, Ljava/security/cert/CertificateException;

    invoke-direct {v7, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 57
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_2
    move-exception v1

    .line 58
    .local v1, "e":Ljava/security/cert/CertificateException;
    move-object v4, v1

    .line 59
    .local v4, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v4, :cond_4

    .line 60
    instance-of v7, v4, Ljava/security/cert/CertificateExpiredException;

    if-nez v7, :cond_2

    instance-of v7, v4, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v7, :cond_3

    .line 70
    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 64
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_1

    .line 66
    :cond_4
    throw v1
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
