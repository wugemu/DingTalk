.class Lcom/amap/api/services/a/an$1;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/a/an;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

.field final synthetic b:Lcom/amap/api/services/a/an;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/an;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/amap/api/services/a/an$1;->b:Lcom/amap/api/services/a/an;

    iput-object p2, p0, Lcom/amap/api/services/a/an$1;->a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/q;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 138
    const/4 v0, 0x2

    :try_start_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 139
    const/16 v0, 0xc9

    iput v0, v1, Landroid/os/Message;->what:I

    .line 140
    new-instance v0, Lcom/amap/api/services/a/q$i;

    invoke-direct {v0}, Lcom/amap/api/services/a/q$i;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/amap/api/services/a/an$1;->b:Lcom/amap/api/services/a/an;

    invoke-static {v2}, Lcom/amap/api/services/a/an;->a(Lcom/amap/api/services/a/an;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/services/a/q$i;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 142
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/amap/api/services/a/an$1;->b:Lcom/amap/api/services/a/an;

    iget-object v3, p0, Lcom/amap/api/services/a/an$1;->a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/a/an;->getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v2

    .line 144
    new-instance v3, Lcom/amap/api/services/geocoder/RegeocodeResult;

    iget-object v4, p0, Lcom/amap/api/services/a/an$1;->a:Lcom/amap/api/services/geocoder/RegeocodeQuery;

    invoke-direct {v3, v4, v2}, Lcom/amap/api/services/geocoder/RegeocodeResult;-><init>(Lcom/amap/api/services/geocoder/RegeocodeQuery;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V

    iput-object v3, v0, Lcom/amap/api/services/a/q$i;->a:Lcom/amap/api/services/geocoder/RegeocodeResult;

    .line 146
    const/16 v0, 0x3e8

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/amap/api/services/a/an$1;->b:Lcom/amap/api/services/a/an;

    invoke-static {v0}, Lcom/amap/api/services/a/an;->b(Lcom/amap/api/services/a/an;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/amap/api/services/a/an$1;->b:Lcom/amap/api/services/a/an;

    invoke-static {v0}, Lcom/amap/api/services/a/an;->b(Lcom/amap/api/services/a/an;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/a/an$1;->b:Lcom/amap/api/services/a/an;

    invoke-static {v2}, Lcom/amap/api/services/a/an;->b(Lcom/amap/api/services/a/an;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
