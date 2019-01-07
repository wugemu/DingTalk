.class public Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;
.super Ljava/lang/Thread;
.source "MainLooperMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;,
        Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;
    }
.end annotation


# static fields
.field private static final j:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

.field private static final k:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;


# instance fields
.field public a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

.field final i:Landroid/util/Printer;

.field private l:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$1;

    invoke-direct {v0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$1;-><init>()V

    sput-object v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->j:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

    .line 37
    new-instance v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$2;

    invoke-direct {v0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$2;-><init>()V

    sput-object v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->k:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "baseInterval"    # J

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    sget-object v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->j:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

    iput-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

    .line 44
    sget-object v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->k:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;

    iput-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->l:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->b:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->m:J

    .line 50
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->e:Z

    .line 51
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->f:Z

    .line 52
    iput-boolean v2, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->g:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->h:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    .line 55
    new-instance v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$3;

    invoke-direct {v0, p0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$3;-><init>(Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;)V

    iput-object v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->i:Landroid/util/Printer;

    .line 79
    iput-wide p1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->d:J

    .line 80
    iget-wide v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->d:J

    iput-wide v0, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->i:Landroid/util/Printer;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;-><init>(J)V

    .line 71
    return-void
.end method

.method private static a(II)I
    .locals 6
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v1, p0

    .line 235
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "get random number err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->m:J

    return-wide p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->f:Z

    if-nez v1, :cond_1

    .line 212
    iget-boolean v1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->g:Z

    if-nez v1, :cond_0

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->e:Z

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sampling cal err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->e:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 147
    const-string/jumbo v5, "MainLooper_Monitor"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->setName(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a()V

    .line 152
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/alibaba/motu/watch/MotuWatch;->getInstance()Lcom/alibaba/motu/watch/MotuWatch;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/motu/watch/MotuWatch;->getWatchConfig()Lcom/alibaba/motu/watch/WatchConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/alibaba/motu/watch/WatchConfig;->closeMainLooperMonitor:Z

    if-nez v5, :cond_3

    .line 154
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->e:Z

    if-nez v5, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->m:J

    .line 156
    .local v10, "startTimeStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "currentTimeStamp":J
    sub-long v12, v2, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 158
    .local v6, "interval":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->m:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    cmp-long v5, v6, v12

    if-ltz v5, :cond_0

    .line 160
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->m:J

    .line 161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->b:Ljava/lang/String;

    invoke-interface {v5, v12}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$b;->a(Ljava/lang/String;)V

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->h:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    if-eqz v5, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->h:Lcom/alibaba/motu/watch/ApplicationIdleMonitor;

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1055
    iget-wide v14, v5, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->b:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1

    .line 1057
    iget-wide v14, v5, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->b:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1388

    cmp-long v12, v12, v14

    if-ltz v12, :cond_4

    .line 1059
    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a:Z

    .line 1065
    :cond_1
    :goto_1
    iget-boolean v5, v5, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a:Z

    .line 169
    if-eqz v5, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    const-wide/16 v14, 0x1388

    cmp-long v5, v12, v14

    if-gez v5, :cond_5

    .line 172
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    long-to-int v5, v12

    const/16 v12, 0x1388

    invoke-static {v5, v12}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a(II)I

    move-result v5

    int-to-long v8, v5

    .line 178
    .local v8, "sleepTime":J
    :goto_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    cmp-long v5, v8, v12

    if-lez v5, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    sub-long v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 186
    .end local v2    # "currentTimeStamp":J
    .end local v6    # "interval":J
    .end local v8    # "sleepTime":J
    .end local v10    # "startTimeStamp":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v4

    .line 188
    .local v4, "e":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->l:Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;

    invoke-interface {v5, v4}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor$a;->a(Ljava/lang/InterruptedException;)V

    .line 193
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_3
    sget-object v5, Lcom/alibaba/motu/watch/WatchConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "stuck is close"

    invoke-static {v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 1061
    .restart local v2    # "currentTimeStamp":J
    .restart local v6    # "interval":J
    .restart local v10    # "startTimeStamp":J
    :cond_4
    const/4 v12, 0x0

    :try_start_1
    iput-boolean v12, v5, Lcom/alibaba/motu/watch/ApplicationIdleMonitor;->a:Z

    goto :goto_1

    .line 174
    :cond_5
    const/16 v5, 0x1388

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->c:J

    long-to-int v12, v12

    invoke-static {v5, v12}, Lcom/alibaba/motu/watch/mainRunLoop/MainLooperMonitor;->a(II)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    int-to-long v8, v5

    .restart local v8    # "sleepTime":J
    goto :goto_2
.end method
