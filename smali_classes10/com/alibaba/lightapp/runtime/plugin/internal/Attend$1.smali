.class Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;
.super Ljava/lang/Object;
.source "Attend.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->signPrivacyPolicy(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->onDataReceived(Ljava/lang/Void;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 85
    sget-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "signPrivacyPolicy deny onDataReceived"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->denyPrivacy(Landroid/content/Context;ZZ)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    sget-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "signPrivacyPolicy deny onException"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "msg"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Attend;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 92
    return-void
.end method
