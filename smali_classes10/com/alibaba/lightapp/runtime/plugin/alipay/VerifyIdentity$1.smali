.class Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;
.super Ljava/lang/Object;
.source "VerifyIdentity.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;->verifyIdentity(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;

.field final synthetic val$jsonVerify:Lorg/json/JSONObject;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;Lorg/json/JSONObject;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerifyResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 3
    .param p1, "verifyId"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    if-eqz p4, :cond_1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "message"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "extInfo"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "verifyId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "bizResponseData"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getBizResponseData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "code"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;->access$000(Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 102
    :goto_1
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "code"

    const-string/jumbo v2, "2002"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;->access$200(Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    const-string/jumbo v1, "code"

    const-string/jumbo v2, "2002"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$jsonVerify:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;->access$100(Lcom/alibaba/lightapp/runtime/plugin/alipay/VerifyIdentity;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
