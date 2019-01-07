.class Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;
.super Ljava/lang/Object;
.source "ATMBle.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->checkIn(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

.field final synthetic val$checkInCallbackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->val$checkInCallbackName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->onDataReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->val$checkInCallbackName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    const-string/jumbo v0, "lightapp"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$200()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "Upload beacon fail "

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, ","

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    .line 223
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "code = "

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, " , message = "

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    .line 225
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle$1;->val$checkInCallbackName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/ATMBle;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 218
    return-void
.end method
