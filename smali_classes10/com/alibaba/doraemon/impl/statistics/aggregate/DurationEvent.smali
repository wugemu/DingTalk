.class public Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;
.super Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;
.source "DurationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DurationEvent"


# instance fields
.field public mIsFinished:Z

.field private mStartSdf:Ljava/text/SimpleDateFormat;

.field public mSubEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mUnFinishedCount:I

.field public mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    const-string/jumbo v0, "DD"

    invoke-direct {p0, v0, p1}, Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStartSdf:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mSubEvents:Ljava/util/HashMap;

    .line 25
    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    .line 26
    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mValue:J

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/statistics/aggregate/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStartSdf:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mSubEvents:Ljava/util/HashMap;

    .line 25
    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    .line 26
    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mValue:J

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized endEvent()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    .line 72
    iget v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v1, :cond_1

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mValue:J

    .line 74
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    .line 75
    .local v0, "mode":I
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v1, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->printLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .end local v0    # "mode":I
    :cond_1
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized endSubEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mSubEvents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;

    .line 55
    .local v1, "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->isFinished:Z

    if-nez v2, :cond_1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->value:J

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->isFinished:Z

    .line 58
    iget v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    .line 60
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mIsFinished:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    if-nez v2, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStart:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mValue:J

    .line 62
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    .line 63
    .local v0, "mode":I
    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v2, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->printLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v0    # "mode":I
    :cond_1
    monitor-exit p0

    return-void

    .line 54
    .end local v1    # "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public printLog()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    const-string/jumbo v1, "DurationEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "DurationEvent Start  ======>  module_name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mModuleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " event_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " start:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStartSdf:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStart:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mValue:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mSubEvents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;

    .line 85
    .local v0, "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    const-string/jumbo v2, "DurationEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "subevent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mStartSdf:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->start:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->value:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    :cond_0
    const-string/jumbo v1, "DurationEvent"

    const-string/jumbo v2, "DurationEvent end  ======>"

    invoke-static {v1, v2}, Lcom/alibaba/doraemon/DoraemonLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public declared-synchronized startSubEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mSubEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;

    .line 40
    .local v0, "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;

    .end local v0    # "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;-><init>()V

    .line 42
    .restart local v0    # "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    iput-object p1, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->name:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mSubEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    .line 49
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->start:J

    .line 50
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_1
    iget-boolean v1, v0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;->isFinished:Z

    if-eqz v1, :cond_0

    .line 46
    iget v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent;->mUnFinishedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 39
    .end local v0    # "subEvent":Lcom/alibaba/doraemon/impl/statistics/aggregate/DurationEvent$SubEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
