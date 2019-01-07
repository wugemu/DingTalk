.class Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;
.super Ljava/lang/Object;
.source "H5SessionPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;->pushWindow(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

.field final synthetic val$h5Page:Liop;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;Liop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->val$h5Page:Liop;

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
    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->val$h5Page:Liop;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SessionPlugin$2;->val$h5Page:Liop;

    const-string/jumbo v1, "h5PageClose"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 716
    :cond_0
    return-void
.end method
