.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;->showTimeDialog(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Liny;ZLcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

.field final synthetic val$h5BridgeContext:Liny;

.field final synthetic val$result:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;->val$result:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;->val$h5BridgeContext:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;->val$result:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "date"

    .line 305
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_longterm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;->val$h5BridgeContext:Liny;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$8;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 307
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 308
    return-void
.end method
