.class public final Lame;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lfyh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lame$6;
    }
.end annotation


# static fields
.field static a:Lame;


# instance fields
.field public b:J

.field public c:Lcom/alibaba/analytics/core/sync/UploadMode;

.field private d:Ljava/util/concurrent/ScheduledFuture;

.field private e:Lalr;

.field private f:Lamg;

.field private g:J

.field private h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lame;

    invoke-direct {v0}, Lame;-><init>()V

    sput-object v0, Lame;->a:Lame;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lame;->b:J

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 55
    new-instance v0, Lamg;

    invoke-direct {v0}, Lamg;-><init>()V

    iput-object v0, p0, Lame;->f:Lamg;

    .line 56
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lame;->g:J

    .line 57
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 59
    iput-wide v2, p0, Lame;->i:J

    .line 60
    iput-wide v2, p0, Lame;->j:J

    .line 63
    invoke-static {p0}, Lfyh;->a(Lfyh$a;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lame;J)J
    .locals 1
    .param p0, "x0"    # Lame;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lame;->i:J

    return-wide p1
.end method

.method public static a()Lame;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lame;->a:Lame;

    return-object v0
.end method

.method static synthetic a(Lame;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 1
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object v0
.end method

.method static synthetic a(Lame;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lame;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 41
    iput-object p1, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic b(Lame;J)J
    .locals 1
    .param p0, "x0"    # Lame;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lame;->b:J

    return-wide p1
.end method

.method static synthetic b(Lame;)Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 1
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-object v0, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    .locals 8
    .param p1, "mode"    # Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 170
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "startMode"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mode"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    sget-object v0, Lame$6;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/sync/UploadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3264
    invoke-direct {p0}, Lame;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lame;->b:J

    .line 3265
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mCurrentUploadInterval"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lame;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3266
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    new-instance v1, Lame$5;

    invoke-direct {v1, p0}, Lame$5;-><init>(Lame;)V

    invoke-virtual {v0, v1}, Lamd;->a(Laly;)V

    .line 3275
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lame;->f:Lamg;

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2192
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lame;->e:Lalr;

    if-eqz v0, :cond_1

    .line 2193
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v0

    iget-object v1, p0, Lame;->e:Lalr;

    invoke-virtual {v0, v1}, Lalu;->b(Lalr;)V

    .line 2195
    :cond_1
    new-instance v0, Lame$2;

    invoke-direct {v0, p0}, Lame$2;-><init>(Lame;)V

    iput-object v0, p0, Lame;->e:Lalr;

    .line 2209
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v0

    iget-object v1, p0, Lame;->e:Lalr;

    invoke-virtual {v0, v1}, Lalu;->a(Lalr;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2213
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lame;->e:Lalr;

    if-eqz v0, :cond_2

    .line 2214
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v0

    iget-object v1, p0, Lame;->e:Lalr;

    invoke-virtual {v0, v1}, Lalu;->b(Lalr;)V

    .line 2216
    :cond_2
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamd;->a(Laly;)V

    .line 2217
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    iget-object v1, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lamd;->a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 2218
    new-instance v0, Lame$3;

    invoke-direct {v0, p0}, Lame$3;-><init>(Lame;)V

    iput-object v0, p0, Lame;->e:Lalr;

    .line 2235
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v0

    iget-object v1, p0, Lame;->e:Lalr;

    invoke-virtual {v0, v1}, Lalu;->a(Lalr;)V

    goto :goto_0

    .line 2239
    :pswitch_2
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v0

    .line 3132
    const-string/jumbo v1, "LogStoreMgr"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[count] memory count:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lalu;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " db count:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lalu;->a:Lals;

    invoke-interface {v4}, Lals;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3133
    iget-object v1, v0, Lalu;->a:Lals;

    invoke-interface {v1}, Lals;->a()I

    move-result v1

    iget-object v0, v0, Lalu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 2239
    iput-wide v0, p0, Lame;->j:J

    .line 2240
    iget-wide v0, p0, Lame;->j:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 2241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lame;->i:J

    .line 2242
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    new-instance v1, Lame$4;

    invoke-direct {v1, p0}, Lame$4;-><init>(Lame;)V

    invoke-virtual {v0, v1}, Lamd;->a(Laly;)V

    .line 2253
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    iget-object v1, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lamd;->a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 2254
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lame;->f:Lamg;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Lanh;->b(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_0

    .line 3259
    :pswitch_3
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamd;->a(Laly;)V

    .line 3260
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lame;->f:Lamg;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lame;)Lamg;
    .locals 1
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-object v0, p0, Lame;->f:Lamg;

    return-object v0
.end method

.method static synthetic d(Lame;)J
    .locals 2
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-wide v0, p0, Lame;->g:J

    return-wide v0
.end method

.method static synthetic e(Lame;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public static e()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    return-void
.end method

.method private f()J
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x0

    .line 279
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 3305
    iget-object v1, v1, Lajw;->c:Landroid/content/Context;

    .line 279
    invoke-static {v1}, Laml;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 281
    .local v0, "background":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 282
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v1

    const-string/jumbo v8, "bu"

    invoke-virtual {v1, v8}, Lajz;->b(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 283
    .local v2, "ret":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 284
    const-wide/32 v4, 0x493e0

    .end local v2    # "ret":J
    .local v4, "ret":J
    :cond_0
    :goto_1
    move-wide v2, v4

    .line 293
    .end local v4    # "ret":J
    .restart local v2    # "ret":J
    :cond_1
    return-wide v2

    .line 279
    .end local v0    # "background":Z
    .end local v2    # "ret":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    .restart local v0    # "background":Z
    :cond_3
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v1

    const-string/jumbo v8, "fu"

    invoke-virtual {v1, v8}, Lajz;->b(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    .line 288
    .restart local v2    # "ret":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 290
    cmp-long v1, v6, v4

    if-ltz v1, :cond_0

    move-wide v4, v6

    goto :goto_1
.end method

.method static synthetic f(Lame;)J
    .locals 2
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-wide v0, p0, Lame;->i:J

    return-wide v0
.end method

.method static synthetic g(Lame;)J
    .locals 2
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-wide v0, p0, Lame;->j:J

    return-wide v0
.end method

.method static synthetic h(Lame;)J
    .locals 2
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    invoke-direct {p0}, Lame;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic i(Lame;)J
    .locals 2
    .param p0, "x0"    # Lame;

    .prologue
    .line 41
    iget-wide v0, p0, Lame;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/alibaba/analytics/core/sync/UploadMode;

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-eq v0, p1, :cond_0

    .line 133
    iput-object p1, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 134
    invoke-virtual {p0}, Lame;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 298
    invoke-static {}, Lamu;->b()V

    .line 299
    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v3, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v2, v3, :cond_0

    .line 300
    invoke-direct {p0}, Lame;->f()J

    move-result-wide v0

    .line 301
    .local v0, "nextInterval":J
    iget-wide v2, p0, Lame;->b:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {p0}, Lame;->d()V

    .line 305
    .end local v0    # "nextInterval":J
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 309
    invoke-static {}, Lamu;->b()V

    .line 310
    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v3, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v2, v3, :cond_0

    .line 311
    invoke-direct {p0}, Lame;->f()J

    move-result-wide v0

    .line 312
    .local v0, "nextInterval":J
    iget-wide v2, p0, Lame;->b:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {p0}, Lame;->d()V

    .line 316
    .end local v0    # "nextInterval":J
    :cond_0
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lamu;->b()V

    .line 1098
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1305
    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    .line 1098
    const-string/jumbo v1, "UTANALYTICS_UPLOAD_ALLOWED_NETWORK_STATUS"

    invoke-static {v0, v1}, Laml;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    const-string/jumbo v1, "ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1101
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    .line 79
    :cond_0
    :goto_0
    invoke-static {}, Lamf;->a()Lamf;

    move-result-object v0

    invoke-virtual {v0}, Lamf;->b()V

    .line 80
    invoke-static {}, Lamc;->b()Lamc;

    move-result-object v0

    iget-object v1, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lamc;->a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 81
    invoke-static {}, Lamc;->b()Lamc;

    move-result-object v0

    new-instance v1, Lame$1;

    invoke-direct {v1, p0}, Lame$1;-><init>(Lame;)V

    invoke-virtual {v0, v1}, Lamc;->a(Laly;)V

    .line 88
    iget-object v0, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-nez v0, :cond_1

    .line 89
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iput-object v0, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 91
    :cond_1
    iget-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lame;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 94
    :cond_2
    iget-object v0, p0, Lame;->c:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-direct {p0, v0}, Lame;->b(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 1102
    :cond_3
    :try_start_1
    const-string/jumbo v1, "2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1103
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1104
    :cond_4
    :try_start_2
    const-string/jumbo v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1105
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 1106
    :cond_5
    const-string/jumbo v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1107
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    .line 1108
    :cond_6
    const-string/jumbo v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lame;->h:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
