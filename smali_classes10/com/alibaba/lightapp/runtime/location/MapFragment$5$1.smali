.class final Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;
.super Ljava/lang/Object;
.source "MapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/location/MapFragment$5;->onMapScreenShot(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/location/MapFragment$5;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 495
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/MapFragment$5;->c:Lcom/alibaba/lightapp/runtime/location/MapFragment;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/location/MapFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->a:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcb;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 498
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;->b:Lcom/alibaba/lightapp/runtime/location/MapFragment$5;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/location/MapFragment$5;->a:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1$1;-><init>(Lcom/alibaba/lightapp/runtime/location/MapFragment$5$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method
