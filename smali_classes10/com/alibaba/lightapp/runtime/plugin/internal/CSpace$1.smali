.class Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Lgqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->decryptAndUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$opeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$opeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$opeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    const-string/jumbo v0, "600001"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "-1"

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "12"

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(IJJ)V
    .locals 10
    .param p1, "status"    # I
    .param p2, "total"    # J
    .param p4, "completed"    # J

    .prologue
    const/4 v9, 0x1

    .line 81
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$opeId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v3, 0x1

    .line 86
    .local v3, "progressStatus":I
    if-ne p1, v9, :cond_2

    .line 87
    const/4 v3, 0x2

    .line 92
    :cond_1
    :goto_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$opeId:Ljava/lang/String;

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;IJJ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 93
    .local v0, "mResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {v0, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 94
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "mResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 89
    const/4 v3, 0x3

    goto :goto_1
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$opeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method
