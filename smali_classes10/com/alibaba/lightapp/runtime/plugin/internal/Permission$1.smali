.class Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;
.super Lbzd;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;->requestPermissions(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public grant()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 73
    .local v0, "result":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 79
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0x1bd

    const-string/jumbo v3, "permission onDenied"

    .line 80
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 81
    .local v0, "result":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onNeverAsk()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 87
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0x1bd

    const-string/jumbo v3, "permission onNeverAsk"

    .line 88
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 89
    .local v0, "result":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Permission;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 90
    return-void
.end method
