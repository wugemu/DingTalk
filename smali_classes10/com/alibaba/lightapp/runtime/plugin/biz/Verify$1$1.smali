.class Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;
.super Lcmi;
.source "Verify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhiy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 317
    const-string/jumbo v0, "21000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/16 v1, 0x5208

    const-string/jumbo v2, "IDCardNotBind"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/16 v1, 0x4e20

    const-string/jumbo v2, "ZimIDFailed"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadSuccess(Lhiy;)V
    .locals 4
    .param p1, "faceAuthModel"    # Lhiy;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p1, Lhiy;->b:Ljava/lang/String;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;Lhiy;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;Ljava/lang/String;Lcma;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/16 v1, 0x4e20

    const-string/jumbo v2, "ZimIDFailed"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Lhiy;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;->onLoadSuccess(Lhiy;)V

    return-void
.end method
