.class Lcom/amap/api/services/a/ak$1;
.super Ljava/lang/Object;
.source "BusStationSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/ak;->searchBusStationAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/ak;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ak;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/amap/api/services/a/ak$1;->a:Lcom/amap/api/services/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 130
    const/4 v0, 0x7

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 131
    new-instance v0, Lcom/amap/api/services/a/q$b;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$b;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/amap/api/services/a/ak$1;->a:Lcom/amap/api/services/a/ak;

    invoke-static {v2}, Lcom/amap/api/services/a/ak;->a(Lcom/amap/api/services/a/ak;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$b;->b:Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    .line 133
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lcom/amap/api/services/a/ak$1;->a:Lcom/amap/api/services/a/ak;

    invoke-virtual {v2}, Lcom/amap/api/services/a/ak;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v2

    .line 135
    const/16 v3, 0x3e8

    iput v3, v1, Landroid/os/Message;->what:I

    .line 136
    iput-object v2, v0, Lcom/amap/api/services/a/q$b;->a:Lcom/amap/api/services/busline/BusStationResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/a/ak$1;->a:Lcom/amap/api/services/a/ak;

    invoke-static {v0}, Lcom/amap/api/services/a/ak;->b(Lcom/amap/api/services/a/ak;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/amap/api/services/a/ak$1;->a:Lcom/amap/api/services/a/ak;

    invoke-static {v0}, Lcom/amap/api/services/a/ak;->b(Lcom/amap/api/services/a/ak;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/ak$1;->a:Lcom/amap/api/services/a/ak;

    invoke-static {v2}, Lcom/amap/api/services/a/ak;->b(Lcom/amap/api/services/a/ak;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
