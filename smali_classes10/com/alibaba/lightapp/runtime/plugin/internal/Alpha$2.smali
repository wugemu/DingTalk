.class Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;
.super Ljava/lang/Object;
.source "Alpha.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->getDevicePwd(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

.field final synthetic val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v3, 0x9

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha$2;->val$request:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Alpha;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 78
    return-void
.end method
