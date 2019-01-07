.class Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;
.super Ljava/lang/Object;
.source "UserApi.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;->bindTaobao(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->onDataReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2, p2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/UserApi;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 236
    return-void
.end method
