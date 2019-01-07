.class public final Lajw;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field public static final a:Lajw;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Z

.field public b:Ljava/lang/String;

.field public c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field public volatile e:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public volatile l:Z

.field public m:Lako;

.field public n:Laka;

.field public volatile o:Z

.field public volatile p:Ljava/lang/String;

.field public volatile q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/lang/String;

.field public x:Z

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lajw;

    invoke-direct {v0}, Lajw;-><init>()V

    sput-object v0, Lajw;->a:Lajw;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lajw;->c:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lajw;->d:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lajw;->y:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lajw;->e:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 59
    iput-object v1, p0, Lajw;->f:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lajw;->g:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lajw;->h:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lajw;->i:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lajw;->j:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lajw;->k:Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lajw;->z:Z

    .line 67
    iput-object v1, p0, Lajw;->A:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lajw;->B:Ljava/util/Map;

    .line 69
    iput-boolean v2, p0, Lajw;->C:Z

    .line 71
    iput-object v1, p0, Lajw;->D:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lajw;->l:Z

    .line 73
    iput-object v1, p0, Lajw;->m:Lako;

    .line 74
    iput-object v1, p0, Lajw;->n:Laka;

    .line 75
    iput-boolean v2, p0, Lajw;->o:Z

    .line 76
    iput-object v1, p0, Lajw;->p:Ljava/lang/String;

    .line 77
    iput-boolean v2, p0, Lajw;->q:Z

    .line 85
    iput-boolean v2, p0, Lajw;->E:Z

    .line 89
    iput-boolean v2, p0, Lajw;->F:Z

    .line 93
    iput-boolean v2, p0, Lajw;->G:Z

    .line 97
    iput-boolean v2, p0, Lajw;->r:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajw;->s:Z

    .line 103
    iput-boolean v2, p0, Lajw;->t:Z

    .line 104
    iput-boolean v2, p0, Lajw;->u:Z

    .line 105
    iput-boolean v2, p0, Lajw;->v:Z

    .line 106
    iput-object v1, p0, Lajw;->w:Ljava/lang/String;

    .line 107
    iput-boolean v2, p0, Lajw;->x:Z

    return-void
.end method

.method public static a()Lajw;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lajw;->a:Lajw;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .param p1, "aDebuggingKey"    # Ljava/lang/String;

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lajw;->A:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 510
    .local p1, "aDebuggingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lajw;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_0
    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Lamu;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 514
    iget-object v2, p0, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v3, "UTRealTimeDebug"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 515
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 516
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    const-string/jumbo v2, "debug_store"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    const-string/jumbo v3, "debug_api_url"

    const-string/jumbo v2, "debug_api_url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string/jumbo v3, "debug_key"

    const-string/jumbo v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 521
    const-string/jumbo v2, "debug_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 525
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 523
    :cond_1
    const-string/jumbo v2, "debug_date"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static d(Z)V
    .locals 1
    .param p0, "mIsDebug"    # Z

    .prologue
    .line 547
    const/4 v0, 0x1

    invoke-static {v0}, Lamu;->a(Z)V

    .line 548
    return-void
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lajw;->C:Z

    .line 431
    const/4 v0, 0x1

    sput-boolean v0, Lfyg;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized n()V
    .locals 1

    .prologue
    .line 460
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lajw;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()V
    .locals 1

    .prologue
    .line 464
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lajw;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Application;)V
    .locals 10
    .param p1, "application"    # Landroid/app/Application;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lajw;->c:Landroid/content/Context;

    .line 184
    iget-object v3, p0, Lajw;->c:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 185
    const-string/jumbo v3, "UTDC init failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "context:null"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "init"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-boolean v6, p0, Lajw;->l:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-boolean v3, p0, Lajw;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 191
    :try_start_2
    invoke-static {}, Lalj;->a()Lalj;

    move-result-object v3

    .line 1022
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    iput-object v4, v3, Lalj;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1023
    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :goto_1
    :try_start_3
    invoke-static {}, Lalq;->a()Lalq;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 1028
    :try_start_4
    sget-object v3, Lfyg;->c:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1033
    :goto_2
    :try_start_5
    invoke-static {}, Lamd;->b()Lamd;

    move-result-object v3

    iget-object v3, v3, Lamd;->e:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1038
    :goto_3
    :try_start_6
    invoke-static {}, Lamc;->b()Lamc;

    move-result-object v3

    iget-object v3, v3, Lamc;->d:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1043
    :goto_4
    :try_start_7
    sget-object v3, Lamh;->b:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1048
    :goto_5
    :try_start_8
    sget-object v3, Lalv;->a:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1053
    :goto_6
    :try_start_9
    sget-object v3, Lalu;->c:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1058
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/ut/mini/core/UTLogTransferMain;->getInstance()Lcom/ut/mini/core/UTLogTransferMain;

    move-result-object v3

    iget-object v3, v3, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1063
    :goto_8
    :try_start_b
    sget-object v3, Lakg;->b:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1068
    :goto_9
    :try_start_c
    sget-object v3, Lamb;->a:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1073
    :goto_a
    :try_start_d
    sget-object v3, Lali;->a:Lalo;

    invoke-virtual {v3, v4}, Lalo;->a(Lalp;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1271
    :goto_b
    :try_start_e
    iget-object v3, p0, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v4, "UTCommon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1272
    const-string/jumbo v3, "_lun"

    const-string/jumbo v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v5

    .line 1273
    if-nez v5, :cond_2

    .line 1276
    :try_start_f
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lamm;->a([BI)[B

    move-result-object v3

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1277
    iput-object v5, p0, Lajw;->i:Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1282
    :cond_2
    :goto_c
    :try_start_10
    const-string/jumbo v3, "_luid"

    const-string/jumbo v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v5

    .line 1283
    if-nez v5, :cond_3

    .line 1286
    :try_start_11
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {v3, v6}, Lamm;->a([BI)[B

    move-result-object v3

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1287
    iput-object v5, p0, Lajw;->k:Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1292
    :cond_3
    :goto_d
    :try_start_12
    const-string/jumbo v3, "_openid"

    const-string/jumbo v5, ""

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result v4

    .line 1293
    if-nez v4, :cond_4

    .line 1296
    :try_start_13
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lamm;->a([BI)[B

    move-result-object v3

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1297
    iput-object v4, p0, Lajw;->b:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 203
    :cond_4
    :goto_e
    :try_start_14
    new-instance v3, Lako;

    iget-object v4, p0, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v5, "ut.db"

    invoke-direct {v3, v4, v5}, Lako;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lajw;->m:Lako;

    .line 205
    iget-object v3, p0, Lajw;->c:Landroid/content/Context;

    invoke-static {v3}, Lalg;->g(Landroid/content/Context;)V

    .line 209
    invoke-static {}, Lakq;->a()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, "lClass":Ljava/lang/Class;
    :try_start_15
    const-string/jumbo v3, "com.taobao.orange.OrangeConfig"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v1

    .line 217
    :goto_f
    if-eqz v1, :cond_7

    .line 218
    :try_start_16
    new-instance v3, Lakg;

    invoke-direct {v3}, Lakg;-><init>()V

    iput-object v3, p0, Lajw;->n:Laka;

    .line 222
    :goto_10
    iget-object v3, p0, Lajw;->n:Laka;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v4

    invoke-virtual {v3, v4}, Laka;->a(Lakf;)V

    .line 223
    iget-object v3, p0, Lajw;->n:Laka;

    invoke-static {}, Lakj;->a()Lakj;

    move-result-object v4

    invoke-virtual {v3, v4}, Laka;->a(Lakf;)V

    .line 224
    iget-object v3, p0, Lajw;->n:Laka;

    new-instance v4, Lakb;

    invoke-direct {v4}, Lakb;-><init>()V

    invoke-virtual {v3, v4}, Laka;->a(Lakf;)V

    .line 225
    iget-object v3, p0, Lajw;->n:Laka;

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v4

    invoke-virtual {v3, v4}, Laka;->a(Lakf;)V

    .line 226
    iget-object v3, p0, Lajw;->n:Laka;

    invoke-static {}, Lakh;->a()Lakh;

    move-result-object v4

    invoke-virtual {v3, v4}, Laka;->a(Lakf;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 228
    :try_start_17
    iget-object v3, p0, Lajw;->n:Laka;

    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v4

    invoke-virtual {v3, v4}, Laka;->a(Lakf;)V

    .line 229
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v3

    const-string/jumbo v4, "sw_plugin"

    new-instance v5, Lajx;

    invoke-direct {v5}, Lajx;-><init>()V

    invoke-virtual {v3, v4, v5}, Lajz;->a(Ljava/lang/String;Lajz$a;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 234
    :goto_11
    :try_start_18
    iget-object v3, p0, Lajw;->n:Laka;

    invoke-virtual {v3}, Laka;->c()V

    .line 236
    invoke-static {}, Lalc;->a()Lalc;

    move-result-object v3

    .line 5033
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v4, 0x0

    new-instance v5, Lalc$1;

    invoke-direct {v5, v3}, Lalc$1;-><init>(Lalc;)V

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    .line 239
    invoke-static {p1}, Lfyg;->a(Landroid/app/Application;)V

    .line 241
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ut/mini/UTAnalyticsDelegate;->initUT(Landroid/app/Application;)V

    .line 5529
    iget-object v3, p0, Lajw;->c:Landroid/content/Context;

    if-nez v3, :cond_8

    .line 244
    :cond_5
    :goto_12
    invoke-static {}, Lame;->a()Lame;

    move-result-object v3

    invoke-virtual {v3}, Lame;->d()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 6254
    :try_start_19
    iget-object v3, p0, Lajw;->c:Landroid/content/Context;

    invoke-static {v3}, Laml;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 6255
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 6256
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6257
    sget-object v5, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1021"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6258
    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6259
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/ut/mini/UTAnalyticsDelegate;->transferLog(Ljava/util/Map;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 247
    :cond_6
    :goto_13
    const/4 v3, 0x1

    :try_start_1a
    iput-boolean v3, p0, Lajw;->l:Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_0

    .line 183
    .end local v1    # "lClass":Ljava/lang/Class;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1b
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_1

    .line 1029
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 1030
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1c
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto/16 :goto_2

    .line 197
    :catch_2
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1d
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_b

    .line 1034
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .line 1035
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1e
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1039
    :catch_4
    move-exception v3

    .line 1040
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1044
    :catch_5
    move-exception v3

    .line 1045
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1049
    :catch_6
    move-exception v3

    .line 1050
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1054
    :catch_7
    move-exception v3

    .line 1055
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1059
    :catch_8
    move-exception v3

    .line 1060
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1064
    :catch_9
    move-exception v3

    .line 1065
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 1069
    :catch_a
    move-exception v3

    .line 1070
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 1074
    :catch_b
    move-exception v3

    .line 1075
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_b

    .line 1278
    :catch_c
    move-exception v3

    .line 1279
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_c

    .line 1288
    :catch_d
    move-exception v3

    .line 1289
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_d

    .line 1298
    :catch_e
    move-exception v3

    .line 1299
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_e

    .line 220
    .restart local v1    # "lClass":Ljava/lang/Class;
    :cond_7
    new-instance v3, Lake;

    invoke-direct {v3}, Lake;-><init>()V

    iput-object v3, p0, Lajw;->n:Laka;

    goto/16 :goto_10

    .line 230
    :catch_f
    move-exception v2

    .line 232
    .local v2, "throwable":Ljava/lang/Throwable;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 5532
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_8
    invoke-static {}, Lamu;->b()V

    .line 5533
    iget-object v3, p0, Lajw;->c:Landroid/content/Context;

    const-string/jumbo v4, "UTRealTimeDebug"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 5534
    const-string/jumbo v4, "debug_date"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 5535
    const-string/jumbo v6, ""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "debugDate"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0xdbba00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 5537
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5538
    const-string/jumbo v5, "debug_api_url"

    const-string/jumbo v6, "debug_api_url"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5540
    const-string/jumbo v5, "debug_key"

    const-string/jumbo v6, "debug_key"

    const-string/jumbo v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5542
    invoke-virtual {p0, v4}, Lajw;->b(Ljava/util/Map;)V

    goto/16 :goto_12

    .line 6261
    :catch_10
    move-exception v3

    .line 6262
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_13

    :catch_11
    move-exception v3

    goto/16 :goto_f
.end method

.method public final declared-synchronized a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lajw;->B:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .param p1, "httpService"    # Z

    .prologue
    .line 127
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lajw;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .local p1, "aDebuggingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 481
    invoke-static {}, Lamu;->b()V

    .line 482
    const-string/jumbo v2, "0"

    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v3

    const-string/jumbo v4, "real_time_debug"

    invoke-virtual {v3, v4}, Lajz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    const-string/jumbo v2, "Variables"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Server Config turn off RealTimeDebug Mode!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :goto_0
    return-void

    .line 486
    :cond_0
    if-eqz p1, :cond_3

    .line 487
    const-string/jumbo v2, "debug_api_url"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    const-string/jumbo v2, "debug_api_url"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 490
    .local v1, "lDebuggingApiUrl":Ljava/lang/String;
    const-string/jumbo v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8205
    .local v0, "lDebugKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-nez v2, :cond_1

    .line 9205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 492
    if-nez v2, :cond_1

    .line 494
    invoke-direct {p0}, Lajw;->n()V

    .line 495
    invoke-direct {p0, v0}, Lajw;->a(Ljava/lang/String;)V

    .line 498
    :cond_1
    const-string/jumbo v2, "debug_sampling_option"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    invoke-direct {p0}, Lajw;->m()V

    .line 9547
    :cond_2
    invoke-static {v5}, Lamu;->a(Z)V

    .line 503
    invoke-static {}, Lame;->a()Lame;

    move-result-object v2

    sget-object v3, Lcom/alibaba/analytics/core/sync/UploadMode;->REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v2, v3}, Lame;->a(Lcom/alibaba/analytics/core/sync/UploadMode;)V

    .line 506
    .end local v0    # "lDebugKey":Ljava/lang/String;
    .end local v1    # "lDebuggingApiUrl":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lajw;->c(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Z)V
    .locals 1
    .param p1, "allServiceClosed"    # Z

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lajw;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lajw;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 1
    .param p1, "realtimeServiceClosed"    # Z

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lajw;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lajw;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lajw;->G:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 325
    iget-object v1, p0, Lajw;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6305
    iget-object v1, p0, Lajw;->c:Landroid/content/Context;

    .line 326
    invoke-static {v1}, Lamp;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 327
    .local v0, "deviceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 328
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lajw;->g:Ljava/lang/String;

    .line 331
    .end local v0    # "deviceInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lajw;->g:Ljava/lang/String;

    return-object v1
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 363
    iget-object v1, p0, Lajw;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7305
    iget-object v1, p0, Lajw;->c:Landroid/content/Context;

    .line 364
    const-string/jumbo v2, "channel"

    invoke-static {v1, v2}, Land;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "channel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    .end local v0    # "channel":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajw;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final declared-synchronized g()Z
    .locals 1

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lajw;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lajw;->B:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lajw;->A:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Z
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lajw;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-direct {p0}, Lajw;->o()V

    .line 474
    invoke-direct {p0, v2}, Lajw;->a(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lame;->a()Lame;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v0, v1}, Lame;->a(Lcom/alibaba/analytics/core/sync/UploadMode;)V

    .line 476
    invoke-direct {p0, v2}, Lajw;->c(Ljava/util/Map;)V

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajw;->q:Z

    .line 478
    return-void
.end method
