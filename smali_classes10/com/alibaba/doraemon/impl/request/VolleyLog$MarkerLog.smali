.class public Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/VolleyLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;
    }
.end annotation


# static fields
.field public static final ENABLED:Z

.field private static final MIN_DURATION_FOR_LOGGING_MS:J


# instance fields
.field private mFinished:Z

.field private final mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/alibaba/doraemon/impl/request/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mFinished:Z

    return-void
.end method

.method private getTotalDuration()J
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 170
    const-wide/16 v4, 0x0

    .line 175
    :goto_0
    return-wide v4

    .line 173
    :cond_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;

    iget-wide v0, v4, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;->time:J

    .line 174
    .local v0, "first":J
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;

    iget-wide v2, v4, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;->time:J

    .line 175
    .local v2, "last":J
    sub-long v4, v2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;J)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadId"    # J

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mFinished:Z

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Marker added to finished log"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 130
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    new-instance v0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mFinished:Z

    if-nez v0, :cond_0

    .line 160
    const-string/jumbo v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/request/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 165
    return-void
.end method

.method public declared-synchronized finish(Ljava/lang/String;)V
    .locals 14
    .param p1, "header"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mFinished:Z

    .line 141
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->getTotalDuration()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 142
    .local v0, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v3, v0, v8

    if-gtz v3, :cond_1

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;

    iget-wide v4, v3, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;->time:J

    .line 147
    .local v4, "prevTime":J
    const-string/jumbo v3, "(%-4d ms) %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v3, v8}, Lcom/alibaba/doraemon/impl/request/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog;->mMarkers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;

    .line 149
    .local v2, "marker":Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;
    iget-wide v6, v2, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;->time:J

    .line 150
    .local v6, "thisTime":J
    const-string/jumbo v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-wide v12, v2, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;->thread:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v2, Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/alibaba/doraemon/impl/request/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    move-wide v4, v6

    .line 152
    goto :goto_0

    .line 139
    .end local v0    # "duration":J
    .end local v2    # "marker":Lcom/alibaba/doraemon/impl/request/VolleyLog$MarkerLog$Marker;
    .end local v4    # "prevTime":J
    .end local v6    # "thisTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
