.class public Lcn/com/chinatelecom/gateway/lib/h;
.super Ljava/lang/Object;
.source "MobileNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/chinatelecom/gateway/lib/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Landroid/net/ConnectivityManager;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private e:Lcn/com/chinatelecom/gateway/lib/h$a;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcn/com/chinatelecom/gateway/lib/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->b:Z

    .line 32
    iput-object v1, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    .line 33
    iput-object v1, p0, Lcn/com/chinatelecom/gateway/lib/h;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 35
    iput-wide v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    .line 36
    iput-wide v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->g:J

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 207
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

    .line 211
    :goto_0
    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "When InetAddress.getByName(),throws exception"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/chinatelecom/gateway/lib/h;J)J
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    return-wide p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcn/com/chinatelecom/gateway/lib/h;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->b:Z

    return v0
.end method

.method static synthetic b(Lcn/com/chinatelecom/gateway/lib/h;)Lcn/com/chinatelecom/gateway/lib/h$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->e:Lcn/com/chinatelecom/gateway/lib/h$a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    const-string/jumbo v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 224
    if-lez v0, :cond_0

    .line 225
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 232
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 233
    if-ltz v0, :cond_1

    .line 234
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 239
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 240
    if-ltz v0, :cond_2

    .line 241
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 246
    :cond_2
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 247
    if-ltz v0, :cond_3

    .line 248
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 250
    :cond_3
    return-object p0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 149
    .line 151
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->g:J

    .line 153
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    .line 154
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 155
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string/jumbo v3, "enableHIPRI"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 163
    :goto_0
    if-ge v0, v4, :cond_0

    .line 164
    :try_start_1
    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 165
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_2
    sget-object v2, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    const-string/jumbo v3, "switchToMobileForUnderL"

    invoke-static {v2, v3, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_0
    invoke-static {p2}, Lcn/com/chinatelecom/gateway/lib/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/chinatelecom/gateway/lib/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 176
    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 179
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 180
    iget-wide v4, p0, Lcn/com/chinatelecom/gateway/lib/h;->g:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    .line 181
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Switch network result \uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (4.x) , expendTime \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    :goto_1
    return v0

    .line 183
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 184
    :goto_2
    sget-object v2, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    const-string/jumbo v3, "4.x\u7f51\u7edc\u5207\u6362\u5f02\u5e38"

    invoke-static {v2, v3, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 183
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method static synthetic c(Lcn/com/chinatelecom/gateway/lib/h;)V
    .locals 3

    .prologue
    .line 2104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2105
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 2107
    :try_start_0
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/h;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2111
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    .line 18
    :cond_0
    return-void

    .line 2108
    :catch_0
    move-exception v0

    .line 2109
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "unregisterNetworkCallback"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcn/com/chinatelecom/gateway/lib/h;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcn/com/chinatelecom/gateway/lib/h;)Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->b:Z

    return v0
.end method

.method static synthetic f(Lcn/com/chinatelecom/gateway/lib/h;)J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcn/com/chinatelecom/gateway/lib/h;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic h(Lcn/com/chinatelecom/gateway/lib/h;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcn/com/chinatelecom/gateway/lib/h$a;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    iput-object p2, p0, Lcn/com/chinatelecom/gateway/lib/h;->e:Lcn/com/chinatelecom/gateway/lib/h$a;

    .line 1118
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->f:J

    .line 1119
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->g:J

    .line 1121
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1122
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1124
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1125
    new-instance v1, Lcn/com/chinatelecom/gateway/lib/j;

    invoke-direct {v1, p0}, Lcn/com/chinatelecom/gateway/lib/j;-><init>(Lcn/com/chinatelecom/gateway/lib/h;)V

    iput-object v1, p0, Lcn/com/chinatelecom/gateway/lib/h;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1145
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/h;->c:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/h;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    sget-object v1, Lcn/com/chinatelecom/gateway/lib/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "switchToMobileForAboveL"

    invoke-static {v1, v2, v0}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/h;->e:Lcn/com/chinatelecom/gateway/lib/h$a;

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "\u5207\u6362\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38"

    .line 51
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/h;->e:Lcn/com/chinatelecom/gateway/lib/h$a;

    const v2, -0xafc81

    const-wide/16 v4, -0x1

    invoke-interface {v1, v2, v0, v4, v5}, Lcn/com/chinatelecom/gateway/lib/h$a;->a(ILjava/lang/String;J)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcn/com/chinatelecom/gateway/lib/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
