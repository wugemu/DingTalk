.class Lcom/amap/api/mapcore/util/q$2;
.super Ljava/lang/Object;
.source "MapOverlayImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/q;->a(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

.field final synthetic b:Lcom/amap/api/mapcore/util/q;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/q;Lcom/amap/api/maps/model/LatLngBounds$Builder;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/amap/api/mapcore/util/q$2;->b:Lcom/amap/api/mapcore/util/q;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/q$2;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

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
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/q$2;->b:Lcom/amap/api/mapcore/util/q;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/q;->a:Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/q$2;->a:Lcom/amap/api/maps/model/LatLngBounds$Builder;

    .line 164
    invoke-virtual {v1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/ag;->a(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->a(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
