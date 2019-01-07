.class public abstract Lanet/channel/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/Session$2;,
        Lanet/channel/Session$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lanet/channel/Session;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Liq;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:I

.field public g:Lanet/channel/entity/ConnType;

.field protected h:Ljy;

.field protected i:Lanet/channel/Session$Status;

.field j:Ljava/lang/Runnable;

.field public k:Lanet/channel/statist/SessionStatistic;

.field protected l:I

.field protected m:I

.field protected n:Z

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Z

.field private r:Z

.field private s:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lim;Lanet/channel/entity/ConnType;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lim;
    .param p3, "type"    # Lanet/channel/entity/ConnType;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4e20

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    .line 44
    iput-boolean v2, p0, Lanet/channel/Session;->r:Z

    .line 54
    sget-object v0, Lanet/channel/Session$Status;->DISCONNECTED:Lanet/channel/Session$Status;

    iput-object v0, p0, Lanet/channel/Session;->i:Lanet/channel/Session$Status;

    .line 64
    iput-boolean v2, p0, Lanet/channel/Session;->p:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/Session;->q:Z

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->a:Landroid/content/Context;

    .line 111
    invoke-virtual {p2}, Lim;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Lim;->b()I

    move-result v0

    iput v0, p0, Lanet/channel/Session;->f:I

    .line 113
    iput-object p3, p0, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    .line 1075
    iget-object v0, p2, Lim;->b:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    iget-object v2, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    .line 2052
    iget-object v0, p2, Lim;->a:Ljy;

    if-eqz v0, :cond_2

    .line 2053
    iget-object v0, p2, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getReadTimeout()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 116
    :goto_0
    iput v0, p0, Lanet/channel/Session;->m:I

    .line 3044
    iget-object v0, p2, Lim;->a:Ljy;

    if-eqz v0, :cond_0

    .line 3045
    iget-object v0, p2, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getConnectionTimeout()I

    move-result v0

    if-nez v0, :cond_3

    .line 117
    :cond_0
    :goto_1
    iput v1, p0, Lanet/channel/Session;->l:I

    .line 118
    iget-object v0, p2, Lim;->a:Ljy;

    iput-object v0, p0, Lanet/channel/Session;->h:Ljy;

    .line 120
    new-instance v0, Lanet/channel/statist/SessionStatistic;

    invoke-direct {v0, p2}, Lanet/channel/statist/SessionStatistic;-><init>(Lim;)V

    iput-object v0, p0, Lanet/channel/Session;->k:Lanet/channel/statist/SessionStatistic;

    .line 121
    iget-object v0, p0, Lanet/channel/Session;->k:Lanet/channel/statist/SessionStatistic;

    iget v1, p2, Lim;->d:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->retryTimes:J

    .line 122
    iget v0, p2, Lim;->e:I

    sput v0, Lanet/channel/statist/SessionStatistic;->maxRetryTime:I

    .line 3086
    iget-object v0, p2, Lim;->c:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lanet/channel/Session;->o:Ljava/lang/String;

    .line 124
    return-void

    .line 2053
    :cond_1
    iget-object v0, p2, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getReadTimeout()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2055
    goto :goto_0

    .line 3045
    :cond_3
    iget-object v0, p2, Lim;->a:Ljy;

    invoke-interface {v0}, Ljy;->getConnectionTimeout()I

    move-result v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileSize"    # I
    .param p3, "fileNum"    # I

    .prologue
    .line 148
    sget-object v1, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v2, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {p0, v1, v2}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v0

    .line 149
    .local v0, "agent":Lorg/android/spdy/SpdyAgent;
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/high16 v1, 0x500000

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Lorg/android/spdy/SpdyAgent;->configLogFile(Ljava/lang/String;II)I

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string/jumbo v1, "agent null or configTnetALog load so fail!!!"

    const/4 v2, 0x0

    const-string/jumbo v3, "loadso"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lanet/channel/request/Request;Lie;)Lji;
.end method

.method public a()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final a(ILiq;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "callback"    # Liq;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 199
    iget-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    return-void
.end method

.method public a(I[BI)V
    .locals 0
    .param p1, "dataId"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # I

    .prologue
    .line 135
    return-void
.end method

.method protected final declared-synchronized a(Lanet/channel/Session$Status;Lip;)V
    .locals 6
    .param p1, "status"    # Lanet/channel/Session$Status;
    .param p2, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "awcn.Session"

    const-string/jumbo v1, "notifyStatus"

    iget-object v2, p0, Lanet/channel/Session;->o:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "status"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lanet/channel/Session$Status;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lanet/channel/Session;->i:Lanet/channel/Session$Status;

    invoke-virtual {p1, v0}, Lanet/channel/Session$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string/jumbo v0, "awcn.Session"

    const-string/jumbo v1, "ignore notifyStatus"

    iget-object v2, p0, Lanet/channel/Session;->o:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    iput-object p1, p0, Lanet/channel/Session;->i:Lanet/channel/Session$Status;

    .line 285
    sget-object v0, Lanet/channel/Session$2;->a:[I

    iget-object v1, p0, Lanet/channel/Session;->i:Lanet/channel/Session$Status;

    invoke-virtual {v1}, Lanet/channel/Session$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_1
    sget-object v0, Lanet/channel/entity/EventType;->CONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lip;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 299
    :pswitch_2
    :try_start_2
    sget-object v0, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lip;)V

    goto :goto_0

    .line 303
    :pswitch_3
    invoke-virtual {p0}, Lanet/channel/Session;->k()V

    .line 305
    sget-object v0, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lip;)V

    goto :goto_0

    .line 311
    :pswitch_4
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_SUCC:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lip;)V

    goto :goto_0

    .line 314
    :pswitch_5
    sget-object v0, Lanet/channel/entity/EventType;->AUTH_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {p0, v0, p2}, Lanet/channel/Session;->a(Lanet/channel/entity/EventType;Lip;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final a(Lanet/channel/entity/EventType;Lip;)V
    .locals 1
    .param p1, "eventType"    # Lanet/channel/entity/EventType;
    .param p2, "event"    # Lip;

    .prologue
    .line 249
    new-instance v0, Lanet/channel/Session$1;

    invoke-direct {v0, p0, p1, p2}, Lanet/channel/Session$1;-><init>(Lanet/channel/Session;Lanet/channel/entity/EventType;Lip;)V

    invoke-static {v0}, Lkq;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 273
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "isHorseRide"    # Z

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanet/channel/Session;->n:Z

    .line 95
    return-void
.end method

.method public final a(Lanet/channel/Session;)Z
    .locals 3
    .param p1, "n"    # Lanet/channel/Session;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 87
    if-eqz p1, :cond_0

    iget-object v1, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lanet/channel/Session;->f:I

    iget v2, p1, Lanet/channel/Session;->f:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    iget-object v2, p1, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/Session;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public b(Z)V
    .locals 0
    .param p1, "autoReCreate"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lanet/channel/Session;->p:Z

    .line 170
    invoke-virtual {p0}, Lanet/channel/Session;->b()V

    .line 171
    return-void
.end method

.method public abstract c()Ljava/lang/Runnable;
.end method

.method public c(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 191
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    check-cast p1, Lanet/channel/Session;

    .line 4100
    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    iget-object v1, p1, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    invoke-static {v0, v1}, Lanet/channel/entity/ConnType;->compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I

    move-result v0

    .line 40
    return v0
.end method

.method public abstract d()Z
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lanet/channel/Session;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lanet/channel/Session;->f:I

    return v0
.end method

.method public final g()Lanet/channel/entity/ConnType;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lanet/channel/Session;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lanet/channel/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljy;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lanet/channel/Session;->h:Ljy;

    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method protected final l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 322
    iget-object v0, p0, Lanet/channel/Session;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lanet/channel/Session;->c()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->j:Ljava/lang/Runnable;

    .line 3333
    :cond_0
    iget-object v0, p0, Lanet/channel/Session;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 3335
    iget-object v0, p0, Lanet/channel/Session;->s:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 3336
    iget-object v0, p0, Lanet/channel/Session;->s:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 327
    :cond_1
    iget-object v0, p0, Lanet/channel/Session;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lanet/channel/Session;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x9c40

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v1}, Lkq;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->s:Ljava/util/concurrent/Future;

    .line 330
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session@["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lanet/channel/Session;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/Session;->g:Lanet/channel/entity/ConnType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
