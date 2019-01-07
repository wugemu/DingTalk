.class Lcom/amap/api/mapcore/util/b$14;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/b;->setMaskLayerParams(IIIIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/mapcore/util/b;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/b;I)V
    .locals 0

    .prologue
    .line 3675
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b$14;->b:Lcom/amap/api/mapcore/util/b;

    iput p2, p0, Lcom/amap/api/mapcore/util/b$14;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b$14;->b:Lcom/amap/api/mapcore/util/b;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/b;->n:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/b$14$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/b$14$1;-><init>(Lcom/amap/api/mapcore/util/b$14;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3691
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 3678
    return-void
.end method
