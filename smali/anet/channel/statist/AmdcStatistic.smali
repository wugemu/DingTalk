.class public Lanet/channel/statist/AmdcStatistic;
.super Lanet/channel/statist/StatObject;
.source "AmdcStatistic.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "amdc"
.end annotation


# instance fields
.field public errorCode:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public proxyType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public retryTimes:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public trace:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ttid:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 22
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->a()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/AmdcStatistic;->netType:Ljava/lang/String;

    .line 23
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/AmdcStatistic;->proxyType:Ljava/lang/String;

    .line 24
    invoke-static {}, Lic;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/AmdcStatistic;->ttid:Ljava/lang/String;

    .line 25
    return-void
.end method
