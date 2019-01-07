.class public Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
.super Lcom/taobao/accs/utl/BaseMonitor;
.source "TrafficsMonitor.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "NetworkSDK"
    monitorPoint = "TrafficStats"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ut/monitor/TrafficsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatTrafficMonitor"
.end annotation


# instance fields
.field public bizId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public date:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isBackground:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public serviceId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public size:J
    .annotation runtime Lanet/channel/statist/Measure;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/taobao/accs/utl/BaseMonitor;-><init>()V

    return-void
.end method
