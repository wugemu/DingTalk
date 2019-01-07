.class final Llig;
.super Ljava/lang/Object;
.source "SleepingAction.java"

# interfaces
.implements Llhf;


# instance fields
.field private final a:Llhf;

.field private final b:Llgv$a;

.field private final c:J


# direct methods
.method public constructor <init>(Llhf;Llgv$a;J)V
    .locals 1
    .param p1, "underlying"    # Llhf;
    .param p2, "scheduler"    # Llgv$a;
    .param p3, "execTime"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Llig;->a:Llhf;

    .line 29
    iput-object p2, p0, Llig;->b:Llgv$a;

    .line 30
    iput-wide p3, p0, Llig;->c:J

    .line 31
    return-void
.end method


# virtual methods
.method public final call()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 35
    iget-object v3, p0, Llig;->b:Llgv$a;

    invoke-virtual {v3}, Llgv$a;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-wide v4, p0, Llig;->c:J

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 39
    sub-long v0, v4, v6

    .line 40
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 42
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_2
    iget-object v3, p0, Llig;->b:Llgv$a;

    invoke-virtual {v3}, Llgv$a;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Llig;->a:Llhf;

    invoke-interface {v3}, Llhf;->call()V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 2052
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 2053
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "e":Ljava/lang/InterruptedException;
    throw v2

    .line 2054
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_4

    .line 2055
    check-cast v2, Ljava/lang/Error;

    .end local v2    # "e":Ljava/lang/InterruptedException;
    throw v2

    .line 2057
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
