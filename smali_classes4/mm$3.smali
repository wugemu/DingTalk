.class final Lmm$3;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmm;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic b:Llq;

.field final synthetic c:Lmm;


# direct methods
.method constructor <init>(Lmm;Lanetwork/channel/aidl/DefaultFinishEvent;Llq;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lmm$3;->c:Lmm;

    iput-object p2, p0, Lmm$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lmm$3;->b:Llq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    invoke-static {v9}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v1, "ANet.Repeater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onFinish]on Finish waitTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lmm$3;->c:Lmm;

    .line 1020
    iget-wide v6, v3, Lmm;->a:J

    .line 113
    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm$3;->c:Lmm;

    .line 2020
    iget-object v3, v3, Lmm;->b:Ljava/lang/String;

    .line 113
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lmm$3;->c:Lmm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3020
    iput-wide v2, v1, Lmm;->a:J

    .line 116
    iget-object v1, p0, Lmm$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lmm$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 120
    :cond_1
    :try_start_0
    iget-object v1, p0, Lmm$3;->b:Llq;

    iget-object v2, p0, Lmm$3;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-interface {v1, v2}, Llq;->a(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 122
    iget-object v1, p0, Lmm$3;->c:Lmm;

    .line 4020
    iget-object v1, v1, Lmm;->c:Lly;

    .line 122
    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lmm$3;->c:Lmm;

    .line 5020
    iget-object v1, v1, Lmm;->c:Lly;

    .line 123
    invoke-virtual {v1}, Lly;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    :goto_0
    invoke-static {v9}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    const-string/jumbo v1, "ANet.Repeater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onFinish]on Finish process time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lmm$3;->c:Lmm;

    .line 6020
    iget-wide v6, v3, Lmm;->a:J

    .line 129
    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmm$3;->c:Lmm;

    .line 7020
    iget-object v3, v3, Lmm;->b:Ljava/lang/String;

    .line 129
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_3
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
