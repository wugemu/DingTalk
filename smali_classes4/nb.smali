.class final Lnb;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"


# instance fields
.field a:Lmz;


# direct methods
.method public constructor <init>(Lmn;Llq;I)V
    .locals 4
    .param p1, "config"    # Lmn;
    .param p2, "listener"    # Llq;
    .param p3, "type"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lmz;

    new-instance v1, Lmm;

    invoke-direct {v1, p2, p1}, Lmm;-><init>(Llq;Lmn;)V

    invoke-direct {v0, p1, v1, p3}, Lmz;-><init>(Lmn;Lmm;I)V

    iput-object v0, p0, Lnb;->a:Lmz;

    .line 1106
    iget-object v0, p1, Lmn;->k:Lanet/channel/statist/RequestStatistic;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 35
    return-void
.end method
