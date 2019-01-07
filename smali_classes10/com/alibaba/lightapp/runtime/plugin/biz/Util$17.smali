.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;
.super Landroid/content/BroadcastReceiver;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerChoosePictureReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 2420
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2425
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "biz.Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "img onReceive "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2429
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5402(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Z)Z

    .line 2430
    const-string/jumbo v1, "com.workapp.choose.pictire.from.crop"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2431
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/content/Intent;)V

    .line 2442
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5902(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;I)I

    .line 2443
    return-void

    .line 2432
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2433
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Landroid/content/Intent;)V

    goto :goto_0

    .line 2434
    :cond_2
    const-string/jumbo v1, "com.workapp.choose.picture.from.album.cancel"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2435
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2436
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v2, -0x1

    const-string/jumbo v3, "onCancel"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$17;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mCallbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
