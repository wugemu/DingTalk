.class Lcom/amap/api/mapcore/util/b$3$1;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/Poi;

.field final synthetic b:Lcom/amap/api/mapcore/util/b$3;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b$3;Lcom/amap/api/maps/model/Poi;)V
    .locals 0

    .prologue
    .line 2435
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$3$1;->b:Lcom/amap/api/mapcore/util/b$3;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/b$3$1;->a:Lcom/amap/api/maps/model/Poi;

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
    .line 2440
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$3$1;->b:Lcom/amap/api/mapcore/util/b$3;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b$3;->b:Lcom/amap/api/mapcore/util/b;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b;->o(Lcom/amap/api/mapcore/util/b;)Lcom/amap/api/maps/AMap$OnPOIClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/b$3$1;->a:Lcom/amap/api/maps/model/Poi;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnPOIClickListener;->onPOIClick(Lcom/amap/api/maps/model/Poi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2445
    :goto_0
    return-void

    .line 2441
    :catch_0
    move-exception v0

    .line 2442
    const-string/jumbo v1, "AMapDelegateImp"

    const-string/jumbo v2, "OnPOIClickListener.onPOIClick"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 2443
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
