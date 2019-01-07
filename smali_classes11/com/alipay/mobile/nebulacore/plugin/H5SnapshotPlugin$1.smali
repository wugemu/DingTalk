.class Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;
.super Ljava/lang/Object;
.source "H5SnapshotPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

.field final synthetic val$target:Liop;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;Liop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->val$target:Liop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenShot()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Lipc;

    move-result-object v2

    invoke-interface {v2}, Lipc;->getTopPage()Liop;

    move-result-object v1

    .line 184
    .local v1, "topPage":Liop;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->val$target:Liop;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    .line 185
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;->access$100(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->val$target:Liop;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$1;->val$target:Liop;

    invoke-interface {v2}, Liop;->getBridge()Linx;

    move-result-object v0

    .line 187
    .local v0, "bridge":Linx;
    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v2, "H5SnapshotPlugin"

    const-string/jumbo v3, "send screenshotbyuser event"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v2, "screenshotbyuser"

    invoke-interface {v0, v2, v4, v4}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 192
    .end local v0    # "bridge":Linx;
    :cond_0
    return-void
.end method
