.class public final Lfzq;
.super Ljava/lang/Object;
.source "FastClickEventLocker.java"


# instance fields
.field public final a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x320

    invoke-direct {p0, v0, v1}, Lfzq;-><init>(J)V

    .line 33
    return-void
.end method

.method private constructor <init>(J)V
    .locals 2
    .param p1, "maxTimeGap"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfzq;->b:J

    .line 37
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lfzq;->a:J

    .line 38
    return-void
.end method
