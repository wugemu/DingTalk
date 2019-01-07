.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->tryCreateSupportBizCallMenu(ZLjava/lang/String;)V
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$showDingCall:Z


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->val$showDingCall:Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    .locals 4
    .param p1, "telBizNumInfo"    # Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "isSupportBiz":Z
    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v1, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->val$showDingCall:Z

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->val$number:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ZZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 268
    return-void
.end method

.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->onDataReceived(Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->val$showDingCall:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$4;->val$number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;ZZLjava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 278
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 273
    return-void
.end method
