.class public final Lrz;
.super Ljava/lang/Object;
.source "FastClickEventLocker.java"


# instance fields
.field public a:J

.field private final b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x320

    invoke-direct {p0, v0, v1}, Lrz;-><init>(J)V

    .line 33
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "maxTimeGap"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lrz;->a:J

    .line 37
    iput-wide p1, p0, Lrz;->b:J

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-wide v4, p0, Lrz;->a:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v2

    .line 56
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lrz;->a:J

    sub-long v0, v4, v6

    .line 57
    .local v0, "gap":J
    iget-wide v4, p0, Lrz;->b:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
