.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;
.super Lcmi;
.source "FaceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->sendMessageToContact(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 442
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceBox"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] sendMessageToContact fail, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    invoke-static {v2, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onLoadSuccess(Lhit;)V
    .locals 7
    .param p1, "didoResponseResult"    # Lhit;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "FaceBox"

    const-string/jumbo v4, "[FaceRecord] sendMessageToContact success"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 429
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "isSuccess"

    iget-object v3, p1, Lhit;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string/jumbo v2, "errCode"

    iget-object v3, p1, Lhit;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string/jumbo v2, "errMessage"

    iget-object v3, p1, Lhit;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string/jumbo v2, "content"

    iget-object v3, p1, Lhit;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->val$callbackId:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 438
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 435
    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "FaceBox"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[FaceRecord] sendMessageToContact success result error,"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 422
    check-cast p1, Lhit;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$6;->onLoadSuccess(Lhit;)V

    return-void
.end method
