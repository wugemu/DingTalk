.class public final Lja;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:J

.field static c:J

.field static d:J

.field static e:J

.field static f:J

.field static g:D

.field static h:D

.field static i:D

.field static j:D

.field private static volatile k:Z


# instance fields
.field private l:I

.field private m:I

.field private n:Ljc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 13
    sput-boolean v4, Lja;->k:Z

    .line 18
    sput v4, Lja;->a:I

    .line 19
    sput-wide v0, Lja;->b:J

    .line 20
    sput-wide v0, Lja;->c:J

    .line 21
    sput-wide v0, Lja;->d:J

    .line 22
    sput-wide v0, Lja;->e:J

    .line 23
    sput-wide v0, Lja;->f:J

    .line 24
    sput-wide v2, Lja;->g:D

    .line 25
    sput-wide v2, Lja;->h:D

    .line 26
    sput-wide v2, Lja;->i:D

    .line 27
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    sput-wide v0, Lja;->j:D

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lja;->l:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lja;->m:I

    .line 32
    new-instance v0, Ljc;

    invoke-direct {v0}, Ljc;-><init>()V

    iput-object v0, p0, Lja;->n:Ljc;

    .line 43
    new-instance v0, Lja$1;

    invoke-direct {v0, p0}, Lja$1;-><init>(Lja;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$a;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lja;-><init>()V

    return-void
.end method

.method static synthetic a(Lja;I)I
    .locals 1
    .param p0, "x0"    # Lja;
    .param p1, "x1"    # I

    .prologue
    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lja;->m:I

    return v0
.end method

.method public static a()Lja;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lja$a;->a:Lja;

    return-object v0
.end method

.method static synthetic a(Lja;)Ljc;
    .locals 1
    .param p0, "x0"    # Lja;

    .prologue
    .line 10
    iget-object v0, p0, Lja;->n:Ljc;

    return-object v0
.end method

.method static synthetic b(Lja;)I
    .locals 2
    .param p0, "x0"    # Lja;

    .prologue
    .line 10
    iget v0, p0, Lja;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lja;->m:I

    return v0
.end method

.method static synthetic b(Lja;I)I
    .locals 0
    .param p0, "x0"    # Lja;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lja;->l:I

    return p1
.end method

.method static synthetic c(Lja;)I
    .locals 1
    .param p0, "x0"    # Lja;

    .prologue
    .line 10
    iget v0, p0, Lja;->m:I

    return v0
.end method

.method static synthetic c()Z
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lja;->k:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "awcn.BandWidthSampler"

    const-string/jumbo v2, "[startNetworkMeter]"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "NetworkStatus"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v1, v2, :cond_0

    .line 71
    const/4 v1, 0x0

    sput-boolean v1, Lja;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lja;->k:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v1, "awcn.BandWidthSampler"

    const-string/jumbo v2, "startNetworkMeter fail."

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
