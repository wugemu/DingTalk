.class Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;
.super Landroid/content/BroadcastReceiver;
.source "H5SnapshotPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->captureEmbedView(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$dataType:Ljava/lang/String;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$h5Page:Liop;

.field final synthetic val$heights:I

.field final synthetic val$imageFormat:Ljava/lang/String;

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I

.field final synthetic val$quality:I

.field final synthetic val$result:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$saveToGallery:Z

.field final synthetic val$widths:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Liop;IILandroid/graphics/Bitmap;Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$h5Page:Liop;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$widths:I

    iput p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$heights:I

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$finalBitmap:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$bridgeContext:Liny;

    iput-object p7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$result:Lcom/alibaba/fastjson/JSONObject;

    iput p9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$maxWidth:I

    iput p10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$maxHeight:I

    iput-boolean p11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$saveToGallery:Z

    iput-object p12, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$dataType:Ljava/lang/String;

    iput-object p13, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$imageFormat:Ljava/lang/String;

    iput p14, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$quality:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 393
    const-string/jumbo v0, "H5SnapshotPlugin"

    const-string/jumbo v3, "embedview.snapshot.complete"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ldq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$300(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$h5Page:Liop;

    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ldq;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$300(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$widths:I

    iget v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$heights:I

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 400
    .local v1, "dstRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$widths:I

    iget v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$heights:I

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 401
    .local v2, "srcRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$h5Page:Liop;

    invoke-interface {v0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$finalBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z

    move-result v14

    .line 402
    .local v14, "snapResult":Z
    const-string/jumbo v0, "H5SnapshotPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "snapResult "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$bridgeContext:Liny;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$result:Lcom/alibaba/fastjson/JSONObject;

    iget v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$maxWidth:I

    iget v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$maxHeight:I

    iget-boolean v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$saveToGallery:Z

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$dataType:Ljava/lang/String;

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$imageFormat:Ljava/lang/String;

    iget v12, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$quality:I

    iget-object v13, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$3;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-static/range {v3 .. v13}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$400(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Liny;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;IIZLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method
