.class public Lfbl;
.super Ljava/lang/Object;
.source "OrgScoreDataCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()J
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 91
    .local v0, "curTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    :cond_0
    return-wide v0
.end method

.method public static declared-synchronized a(J)Lcom/alibaba/android/user/model/OrgScoreDataObject;
    .locals 8
    .param p0, "orgId"    # J

    .prologue
    .line 31
    const-class v2, Lfbl;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->h()Lfmu;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lfmu;->a(J)Lcom/alibaba/android/user/model/OrgScoreDataObject;

    move-result-object v0

    .line 33
    .local v0, "score":Lcom/alibaba/android/user/model/OrgScoreDataObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v4, v1, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    .end local v0    # "score":Lcom/alibaba/android/user/model/OrgScoreDataObject;
    :cond_1
    monitor-exit v2

    return-object v0

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgScoreDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    const-class v5, Lfbl;

    monitor-enter v5

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 45
    :cond_1
    :try_start_1
    invoke-static {}, Lfbl;->a()J

    move-result-wide v2

    .line 48
    .local v2, "timeTag":J
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 49
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;

    .line 50
    .local v1, "score":Lcom/alibaba/android/user/model/OrgScoreDataObject;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v6, v4, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    const-wide/16 v8, 0x0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_3

    .line 51
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 54
    :cond_3
    iput-wide v2, v1, Lcom/alibaba/android/user/model/OrgScoreDataObject;->timeTag:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 42
    .end local v0    # "i":I
    .end local v1    # "score":Lcom/alibaba/android/user/model/OrgScoreDataObject;
    .end local v2    # "timeTag":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 56
    .restart local v0    # "i":I
    .restart local v2    # "timeTag":J
    :cond_4
    :try_start_2
    const-class v4, Lfbl;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v6, Lfbl$1;

    invoke-direct {v6, p0}, Lfbl$1;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/user/model/OrgScoreDataObject;)Z
    .locals 10
    .param p0, "score"    # Lcom/alibaba/android/user/model/OrgScoreDataObject;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 65
    if-eqz p0, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->dingIndexObject:Lcom/alibaba/android/user/model/DingIndexObject;

    iget-wide v6, v5, Lcom/alibaba/android/user/model/DingIndexObject;->idxTotal:D

    const-wide/16 v8, 0x0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_2

    :cond_0
    move v1, v4

    .line 77
    :cond_1
    :goto_0
    return v1

    .line 68
    :cond_2
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgScoreDataObject;->timeTag:J

    .line 70
    .local v2, "timeTag":J
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 71
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Lfbl;->a()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    move v1, v4

    .line 77
    goto :goto_0
.end method
