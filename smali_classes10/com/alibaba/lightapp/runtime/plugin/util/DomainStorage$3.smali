.class Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;
.super Ljava/lang/Object;
.source "DomainStorage.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->removeItem(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$600(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->onProgress(Ljava/lang/Void;I)V

    return-void
.end method

.method public onProgress(Ljava/lang/Void;I)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;
    .param p2, "i"    # I

    .prologue
    .line 150
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;->access$500(Lcom/alibaba/lightapp/runtime/plugin/util/DomainStorage;Ljava/lang/String;)V

    .line 141
    return-void
.end method
