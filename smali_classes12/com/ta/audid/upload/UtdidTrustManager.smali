.class Lcom/ta/audid/upload/UtdidTrustManager;
.super Ljava/lang/Object;
.source "UtdidTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "X509TrustManager"

.field private static trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/audid/upload/UtdidTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    .prologue
    .line 25
    const-class v1, Lcom/ta/audid/upload/UtdidTrustManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/audid/upload/UtdidTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/ta/audid/upload/UtdidTrustManager;

    invoke-direct {v3}, Lcom/ta/audid/upload/UtdidTrustManager;-><init>()V

    aput-object v3, v0, v2

    sput-object v0, Lcom/ta/audid/upload/UtdidTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/ta/audid/upload/UtdidTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;
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
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
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

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 40
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_1
    :try_start_0
    const-string/jumbo v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 46
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 54
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v5, v4

    .line 56
    .local v3, "trustManager":Ljavax/net/ssl/TrustManager;
    :try_start_1
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 49
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 57
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .restart local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_2
    move-exception v0

    .line 58
    .local v0, "e":Ljava/security/cert/CertificateException;
    move-object v1, v0

    .line 59
    .local v1, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v1, :cond_4

    .line 60
    instance-of v4, v1, Ljava/security/cert/CertificateExpiredException;

    if-nez v4, :cond_2

    instance-of v4, v1, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v4, :cond_3

    .line 70
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 64
    .restart local v0    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 66
    :cond_4
    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
