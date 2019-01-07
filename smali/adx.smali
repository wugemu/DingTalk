.class public final Ladx;
.super Ljava/lang/Object;
.source "ConnectionBuilderForTesting.java"

# interfaces
.implements Lklo;


# static fields
.field public static final a:Ladx;

.field private static final b:I

.field private static final c:I

.field private static final d:[Ljavax/net/ssl/TrustManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrustAllX509TrustManager"
        }
    .end annotation
.end field

.field private static final e:Ljavax/net/ssl/HostnameVerifier;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadHostnameVerifier"
        }
    .end annotation
.end field

.field private static final f:Ljavax/net/ssl/SSLContext;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 49
    new-instance v2, Ladx;

    invoke-direct {v2}, Ladx;-><init>()V

    sput-object v2, Ladx;->a:Ladx;

    .line 53
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xf

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    sput v2, Ladx;->b:I

    .line 54
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v2, v2

    sput v2, Ladx;->c:I

    .line 60
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Ladx$1;

    invoke-direct {v4}, Ladx$1;-><init>()V

    aput-object v4, v2, v3

    sput-object v2, Ladx;->d:[Ljavax/net/ssl/TrustManager;

    .line 73
    new-instance v2, Ladx$2;

    invoke-direct {v2}, Ladx$2;-><init>()V

    sput-object v2, Ladx;->e:Ljavax/net/ssl/HostnameVerifier;

    .line 85
    :try_start_0
    const-string/jumbo v2, "SSL"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :goto_0
    const/4 v1, 0x0

    .line 92
    .local v1, "initializedContext":Ljavax/net/ssl/SSLContext;
    if-eqz v0, :cond_0

    .line 94
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Ladx;->d:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    move-object v1, v0

    .line 101
    :cond_0
    :goto_1
    sput-object v1, Ladx;->f:Ljavax/net/ssl/SSLContext;

    .line 102
    return-void

    .line 87
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v1    # "initializedContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "ConnBuilder"

    const-string/jumbo v3, "Unable to acquire SSL context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    .line 97
    .restart local v1    # "initializedContext":Ljavax/net/ssl/SSLContext;
    :catch_1
    move-exception v2

    const-string/jumbo v2, "ConnBuilder"

    const-string/jumbo v3, "Failed to initialize trusting SSL context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 111
    const-string/jumbo v2, "url must not be null"

    invoke-static {p1, v2}, Lkle;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v2, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v4, "scheme or uri must be http or https"

    invoke-static {v2, v4}, Lkle;->a(ZLjava/lang/Object;)V

    .line 114
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 115
    .local v0, "conn":Ljava/net/HttpURLConnection;
    sget v2, Ladx;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 116
    sget v2, Ladx;->c:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 117
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 119
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_1

    sget-object v2, Ladx;->f:Ljavax/net/ssl/SSLContext;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 120
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 121
    .local v1, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    sget-object v2, Ladx;->f:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 122
    sget-object v2, Ladx;->e:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 125
    .end local v1    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    :cond_1
    return-object v0

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    :cond_2
    move v2, v3

    .line 112
    goto :goto_0
.end method
