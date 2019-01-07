.class Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$2;
.super Landroid/content/BroadcastReceiver;
.source "Verify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->makeSureVerifyReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 379
    if-eqz p2, :cond_0

    const-string/jumbo v1, "dd_action_out_certify"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const-string/jumbo v1, "dd_intent_key_out_certify_callback_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;

    if-eqz v1, :cond_0

    .line 381
    const-string/jumbo v1, "dd_intent_key_out_certify_callback_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;

    .line 382
    .local v0, "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V

    .line 385
    .end local v0    # "response":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;
    :cond_0
    return-void
.end method
