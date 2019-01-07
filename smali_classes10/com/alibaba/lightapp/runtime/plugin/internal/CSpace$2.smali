.class Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->uploadFilesToTargetSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$opeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->onDataReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onDataReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "tempSpace"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;)V

    .line 171
    .local v0, "uploadListener":Lgqt;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 172
    const-class v2, Lgqt;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v0, v2, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uploadListener":Lgqt;
    check-cast v0, Lgqt;

    .line 174
    .restart local v0    # "uploadListener":Lgqt;
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgqt;)V

    .line 175
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "12"

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 180
    return-void
.end method
