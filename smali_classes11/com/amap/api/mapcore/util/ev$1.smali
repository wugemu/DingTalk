.class Lcom/amap/api/mapcore/util/ev$1;
.super Ljava/lang/Object;
.source "ZoomControllerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ev;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/ev;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ev;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ev;->a(Lcom/amap/api/mapcore/util/ev;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->o()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ev;->a(Lcom/amap/api/mapcore/util/ev;)Lcom/amap/api/mapcore/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore/util/l;->getMaxZoomLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ev;->a(Lcom/amap/api/mapcore/util/ev;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore/util/l;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v3

    .line 130
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ev;->c(Lcom/amap/api/mapcore/util/ev;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ev;->b(Lcom/amap/api/mapcore/util/ev;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ev;->c(Lcom/amap/api/mapcore/util/ev;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/ev;->d(Lcom/amap/api/mapcore/util/ev;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ev$1;->a:Lcom/amap/api/mapcore/util/ev;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ev;->a(Lcom/amap/api/mapcore/util/ev;)Lcom/amap/api/mapcore/util/l;

    move-result-object v0

    invoke-static {}, Lcom/amap/api/mapcore/util/ag;->a()Lcom/amap/api/mapcore/util/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/l;->b(Lcom/autonavi/amap/mapcore/MapMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "ZoomControllerView"

    const-string/jumbo v2, "zoomin ontouch"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/ft;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
