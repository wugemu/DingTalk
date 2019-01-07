.class Lcom/amap/api/services/a/aj$1;
.super Ljava/lang/Object;
.source "BusLineSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/aj;->searchBusLineAsyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/aj;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/aj;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/amap/api/services/a/aj$1;->a:Lcom/amap/api/services/a/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 132
    const/4 v0, 0x3

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 133
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->what:I

    .line 134
    new-instance v0, Lcom/amap/api/services/a/q$a;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$a;-><init>()V

    .line 135
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lcom/amap/api/services/a/aj$1;->a:Lcom/amap/api/services/a/aj;

    invoke-static {v2}, Lcom/amap/api/services/a/aj;->a(Lcom/amap/api/services/a/aj;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$a;->b:Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    .line 137
    iget-object v2, p0, Lcom/amap/api/services/a/aj$1;->a:Lcom/amap/api/services/a/aj;

    invoke-virtual {v2}, Lcom/amap/api/services/a/aj;->searchBusLine()Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v2

    .line 138
    iput-object v2, v0, Lcom/amap/api/services/a/q$a;->a:Lcom/amap/api/services/busline/BusLineResult;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/amap/api/services/a/aj$1;->a:Lcom/amap/api/services/a/aj;

    invoke-static {v0}, Lcom/amap/api/services/a/aj;->b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/amap/api/services/a/aj$1;->a:Lcom/amap/api/services/a/aj;

    invoke-static {v0}, Lcom/amap/api/services/a/aj;->b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/aj$1;->a:Lcom/amap/api/services/a/aj;

    invoke-static {v2}, Lcom/amap/api/services/a/aj;->b(Lcom/amap/api/services/a/aj;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
