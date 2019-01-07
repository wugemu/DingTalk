.class Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;
.super Ljava/lang/Object;
.source "H5ActionSheetPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->show(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

.field final synthetic val$bridgeContext:Liny;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;->val$bridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    .local v1, "index":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;->access$000(Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin;)Z

    .line 185
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 186
    .local v0, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "success"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v2, "index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ActionSheetPlugin$2;->val$bridgeContext:Liny;

    invoke-interface {v2, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 189
    return-void
.end method
