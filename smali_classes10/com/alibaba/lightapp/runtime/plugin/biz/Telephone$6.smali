.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;
.super Lcmi;
.source "Telephone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->callOrgExternalContacts(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 396
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, p2, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->onLoadSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onLoadSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 390
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 391
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 392
    return-void
.end method
