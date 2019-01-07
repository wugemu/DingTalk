.class public Lcom/cmic/sso/sdk/b/f;
.super Ljava/lang/Object;
.source "WifiNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/b/f$a;
    }
.end annotation


# static fields
.field public static a:Landroid/net/ConnectivityManager;

.field public static b:Landroid/net/Network;

.field public static c:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static d:Landroid/net/Network;


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 104
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 108
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lcom/cmic/sso/sdk/b/f;->d:Landroid/net/Network;

    return-object p0
.end method

.method public static a(Lcom/cmic/sso/sdk/b/f$a;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->b:Landroid/net/Network;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmic/sso/sdk/b/f;->d:Landroid/net/Network;

    if-nez v0, :cond_1

    .line 39
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/cmic/sso/sdk/b/f;->b:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->b:Landroid/net/Network;

    invoke-interface {p0, v0}, Lcom/cmic/sso/sdk/b/f$a;->a(Landroid/net/Network;)V

    goto :goto_0

    .line 47
    :cond_1
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_3

    .line 49
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    if-eqz v0, :cond_2

    .line 50
    sget-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    const-string/jumbo v1, "WifiNetworkUtils"

    const-string/jumbo v2, "clear"

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    sget-object v0, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/cmic/sso/sdk/b/f;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 54
    :cond_3
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/cmic/sso/sdk/b/f$1;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/b/f$1;-><init>(Lcom/cmic/sso/sdk/b/f$a;)V

    sput-object v1, Lcom/cmic/sso/sdk/b/f;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 83
    sget-object v1, Lcom/cmic/sso/sdk/b/f;->a:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/cmic/sso/sdk/b/f;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const-string/jumbo v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 122
    if-lez v0, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 130
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 131
    if-ltz v0, :cond_1

    .line 132
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 137
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 138
    if-ltz v0, :cond_2

    .line 139
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 144
    :cond_2
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 145
    if-ltz v0, :cond_3

    .line 146
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 148
    :cond_3
    return-object p0
.end method
