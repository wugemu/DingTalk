.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lioa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullFreshCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 628
    const-string/jumbo v1, "prevent"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 629
    .local v0, "prevent":Z
    const-string/jumbo v1, "H5WebContent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FIRE_PULL_TO_REFRESH event prevent\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    if-eqz v0, :cond_0

    .line 631
    const-string/jumbo v1, "H5WebContent"

    const-string/jumbo v2, "set e.preventDefault(),not send H5_PAGE_RELOAD"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_0
    return-void

    .line 633
    :cond_0
    const-string/jumbo v1, "H5WebContent"

    const-string/jumbo v2, "not set e.preventDefault(),sendEvent H5_PAGE_RELOAD"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    const-string/jumbo v2, "h5PageReload"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 635
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$PullFreshCallback;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$702(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z

    goto :goto_0
.end method
