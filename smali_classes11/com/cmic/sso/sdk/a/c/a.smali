.class public Lcom/cmic/sso/sdk/a/c/a;
.super Ljava/lang/Object;
.source "TrustManager.java"


# static fields
.field private static b:Lcom/cmic/sso/sdk/a/c/a;


# instance fields
.field private a:Ljava/security/cert/X509Certificate;

.field private c:Ljavax/net/ssl/SSLContext;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Lcom/cmic/sso/sdk/a/c/a;->c()V

    .line 60
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 63
    const-string/jumbo v1, "cert"

    iget-object v2, p0, Lcom/cmic/sso/sdk/a/c/a;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 64
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 67
    const-string/jumbo v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/a/c/a;->c:Ljavax/net/ssl/SSLContext;

    .line 68
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/c/a;->c:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :goto_1
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 71
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "TrustManager"

    const-string/jumbo v3, "have exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "TrustManager"

    const-string/jumbo v3, "have exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method public static a()Lcom/cmic/sso/sdk/a/c/a;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/cmic/sso/sdk/a/c/a;->b:Lcom/cmic/sso/sdk/a/c/a;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lcom/cmic/sso/sdk/a/c/a;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/cmic/sso/sdk/a/c/a;->b:Lcom/cmic/sso/sdk/a/c/a;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/cmic/sso/sdk/a/c/a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/a/c/a;-><init>()V

    sput-object v0, Lcom/cmic/sso/sdk/a/c/a;->b:Lcom/cmic/sso/sdk/a/c/a;

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Lcom/cmic/sso/sdk/a/c/a;->b:Lcom/cmic/sso/sdk/a/c/a;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/c/a;->a:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 32
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v0, "-----BEGIN CERTIFICATE-----\n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\n-----END CERTIFICATE-----"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lcom/cmic/sso/sdk/a/c/a;->a:Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "TrustManager"

    const-string/jumbo v3, "have exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 35
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 36
    :goto_1
    :try_start_3
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_1

    .line 37
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "TrustManager"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :cond_1
    if-eqz v1, :cond_0

    .line 46
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 47
    :catch_2
    move-exception v0

    .line 48
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "TrustManager"

    const-string/jumbo v3, "have exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 40
    :goto_2
    :try_start_5
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_2

    .line 41
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "TrustManager"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 44
    :cond_2
    if-eqz v1, :cond_0

    .line 46
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 47
    :catch_4
    move-exception v0

    .line 48
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v2, "TrustManager"

    const-string/jumbo v3, "have exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_3

    .line 46
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 51
    :cond_3
    :goto_4
    throw v0

    .line 47
    :catch_5
    move-exception v1

    .line 48
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v2, :cond_3

    .line 49
    sget-object v2, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v3, "TrustManager"

    const-string/jumbo v4, "have exception"

    invoke-interface {v2, v3, v4, v1}, Lcom/cmic/sso/sdk/auth/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 44
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 39
    :catch_6
    move-exception v0

    goto :goto_2

    .line 35
    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public b()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/c/a;->c:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method
