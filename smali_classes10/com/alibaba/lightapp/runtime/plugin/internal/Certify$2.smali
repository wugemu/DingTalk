.class Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;
.super Ljava/lang/Object;
.source "Certify.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->biometric(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->onProgress(Ljava/lang/Void;I)V

    return-void
.end method

.method public onProgress(Ljava/lang/Void;I)V
    .locals 0
    .param p1, "aVoid"    # Ljava/lang/Void;
    .param p2, "i"    # I

    .prologue
    .line 117
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;)V

    .line 107
    return-void
.end method
