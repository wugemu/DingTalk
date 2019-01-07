.class Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->delete(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Boolean;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    .line 1022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "success"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x3

    .line 238
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lhdn$k;->and_delete_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .line 238
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 231
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->onDataReceived(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 249
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 253
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lhdn$k;->and_delete_error:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-static {v7, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .line 253
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 245
    return-void
.end method
