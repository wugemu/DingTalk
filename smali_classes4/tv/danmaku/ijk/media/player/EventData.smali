.class public Ltv/danmaku/ijk/media/player/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field public arg1:J

.field public arg2:J

.field public arg3:J

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/EventData;->arg1:J

    .line 11
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/EventData;->arg2:J

    .line 12
    iput-wide v0, p0, Ltv/danmaku/ijk/media/player/EventData;->arg3:J

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/EventData;->obj:Ljava/lang/Object;

    .line 9
    return-void
.end method
