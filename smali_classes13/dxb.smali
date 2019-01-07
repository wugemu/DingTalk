.class public final Ldxb;
.super Ljava/lang/Object;
.source "ParserTracker.java"


# instance fields
.field public final a:J

.field public b:J

.field private final c:J


# direct methods
.method public constructor <init>(J)V
    .locals 5
    .param p1, "overProcessTime"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v2, p0, Ldxb;->c:J

    .line 14
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 15
    iput-wide p1, p0, Ldxb;->a:J

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    iput-wide v2, p0, Ldxb;->a:J

    goto :goto_0
.end method
